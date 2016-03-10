# -*- coding: utf-8 -*-
from _socket import timeout
from requests import HTTPError, RequestException
from xlrd import open_workbook
from downloader.Downloader import Downloader
from exception.NoExceptionFound import NoExceptionFound
from exception.NotFileException import NotFileException
from model.ResultModel import ResultModel
from printer.ExcelCreater import ExcelCreater

__author__ = 'johnnytsai'

wb = open_workbook('Result2.xlsx')


values = []
for sheet in wb.sheets():
    number_of_rows = sheet.nrows
    number_of_columns = sheet.ncols
    print number_of_rows
    items = []

    rows = []
    for row in range(1, number_of_rows):
        model = ResultModel()
        if row != 1:
            for col in range(number_of_columns):
                value  = (sheet.cell(row,col).value)
                if col == 0:
                    model.nid = value
                elif col == 1:
                    model.title = value
                elif col == 2:
                    model.field_data_field_body = value
                elif col == 3:
                    model.link = value
                elif col == 4:
                    model.field_revision_field_resource_description_g = value
                elif col == 5:
                    model.field_data_field_resource_url_g = value
                elif col == 6:
                    model.taxonomy_term_data = value
                elif col == 7:
                    model.status = value
                elif col == 8:
                    model.type = value
            #print model.title
            values.append(model)

size = 0
for v in values:
    if v.status == u'-1':
        size+=1

result = []

count = 0
for v in values:
    if v.status == u'-1':
        print v.title
        try:
            res = Downloader.download(v.field_data_field_resource_url_g)
            v.status = res.status_code
            if res.status_code == 200:
                try:
                    v.type = Downloader.getFileNameNExtension(res)
                except NotFileException, e:
                    print e
                    try:
                        v.type = Downloader.getFileExtension(res)
                    except NoExceptionFound, e:
                        print e
                        v.type = Downloader.guessExtension(res)
        except HTTPError, e:
            v.status = -1
            v.message = str(e.message).decode('utf-8')
        except RequestException, e:
            print e.message
            v.message = str(e.message).decode('utf-8')
            v.status = -1
        except timeout, e:
            v.status = 0
        except Exception, e:
            print e
            v.message = str(e.message).decode('utf-8')
            v.status = -2

        count += 1
        print "(" + str(count) + "/" + str(size) + ") " + v.title.encode('utf-8') + "處理完成..."
        result.append(v)


ExcelCreater.exportExcel(result, 'Result_d.xlsx')