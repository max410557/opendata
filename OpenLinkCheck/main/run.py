# -*- coding: utf-8 -*-
from _socket import timeout
from urllib2 import URLError, HTTPError
from requests import RequestException
from checker.Cherker import Checker
from dao.AllTable import Dao
from downloader.Downloader import Downloader


# DB取得所有資料
from exception import NoExceptionFound
from exception.NotFileException import NotFileException
from model.ResultModel import ResultModel
from printer.ExcelCreater import ExcelCreater

print "DB取得資料..."
db = Dao()
data_list = db.getRows()

# 下載連結
result_list = []

test_list = []
for i in range(100):
    test_list.append(data_list[i])

print "處理資料..."
size = len(data_list)
count = 0
for data in data_list:
    result = ResultModel()

    result.nid = data.nid
    result.title = data.title
    result.field_data_field_body = data.field_body_value
    result.link = data.link
    result.field_revision_field_resource_description_g = data.field_resource_description_g_value
    result.field_data_field_resource_url_g = data.field_resource_url_g_url
    result.taxonomy_term_data = data.name

    try:
        res = Downloader.download(data.field_resource_url_g_url)
        result.status = res.status_code
        #result.type = data.name
        if res.status_code == 200:
            try:
                result.type = Downloader.getFileNameNExtension(res)
                #result.type = Checker.checkExtension(file_name, data)
            except NotFileException, e:
                print e
                try:
                    result.type = Downloader.getFileExtension(res)
                except NoExceptionFound, e:
                    print e
                    result.type = Downloader.guessExtension(res)
                #result.type = Checker.checkType(res.read(), data)
    except HTTPError, e:
        result.status = -1
    except RequestException, e:
        result.status = -1
    except timeout, e:
        result.status = 0
    except Exception, e:
        print e
        result.status = -2

    count += 1
    print "(" + str(count) + "/" + str(size) + ") " + result.title.encode('utf-8') + "處理完成..."
    result_list.append(result)


ExcelCreater.exportExcel(result_list, 'Result.xlsx')
