# -*- coding: utf-8 -*-
from _socket import timeout
from requests import HTTPError, RequestException
from xlrd import open_workbook
from dao.AllTable import Dao
from dao.AllTableTwo import DaoTwo
from downloader.Downloader import Downloader
from exception.NoExceptionFound import NoExceptionFound
from exception.NotFileException import NotFileException
from model.ResultModel import ResultModel
from printer.ExcelCreater import ExcelCreater

__author__ = 'johnnytsai'

print "DB取得資料..."
db = DaoTwo()
data_list = db.getRows()

# 下載連結
result_list = []

test_list = []
for i in range(100):
    test_list.append(data_list[i])

print "處理資料..."
size = len(data_list)
count = 0

results = []

count = 0
for v in data_list:
    result = ResultModel()

    result.nid = v.nid
    result.title = v.title
    result.field_data_field_body = v.field_body_value
    result.link = v.link
    result.field_revision_field_resource_description_g = v.field_resource_description_g_value
    result.field_data_field_resource_url_g = v.field_resource_url_g_url
    result.taxonomy_term_data = v.name
    try:
        res = Downloader.download(v.field_resource_url_g_url)
        result.status = res.status_code
        if res.status_code == 200:
            try:
                result.type = Downloader.getFileNameNExtension(res)
            except NotFileException, e:
                print e
                try:
                    result.type = Downloader.getFileExtension(res)
                except NoExceptionFound, e:
                    print e
                    result.type = Downloader.guessExtension(res)
            # save file
            url = v.field_resource_url_g_url
            file_name = "file/" + str(v.nid) + "_" + v.title + "" + url[len(url)-4:]
            with open(file_name, "wb") as code:
                code.write(res.content)
            #
    except HTTPError, e:
        result.status = -1
        result.message = str(e.message).decode('utf-8')
    except RequestException, e:
        print e.message
        result.message = str(e.message).decode('utf-8')
        result.status = -1
    except timeout, e:
        result.status = 0
    except Exception, e:
        print e
        result.message = str(e.message).decode('utf-8')
        result.status = -2

    count += 1
    print "(" + str(count) + "/" + str(size) + ") " + v.title.encode('utf-8') + "處理完成..."
    results.append(result)


ExcelCreater.exportExcel(results, 'Result_save.xlsx')