# -*- coding: utf-8 -*-
from time import sleep
import xlsxwriter

__author__ = 'johnnytsai'


class ExcelCreater:
    def __init__(self):
        None

    @staticmethod
    def exportExcel(list, filename):
        # 輸出成excel檔
        print("CREATE EXCEL...")
        workbook = xlsxwriter.Workbook(filename, {'strings_to_urls': False})
        worksheet = workbook.add_worksheet(u'統計資料')

        row = 0
        col = 0
        # print title
        worksheet.write(row, col, u"資料集Id")
        worksheet.write(row, col + 1, u"資料集名稱")
        worksheet.write(row, col + 2, u"資料集描述")
        worksheet.write(row, col + 3, u"資料集連結")
        worksheet.write(row, col + 4, u"資料資源描述")
        worksheet.write(row, col + 5, u"資料資源下載連結")
        worksheet.write(row, col + 6, u"資料資源檔案格式")
        worksheet.write(row, col + 7, u"連線狀態")
        worksheet.write(row, col + 8, u"下載檔案格式")
        worksheet.write(row, col + 9, u"Exception")
        row += 1
        for model in list:
            worksheet.write(row, col, str(model.nid).decode('utf-8'))
            worksheet.write(row, col + 1, model.title)
            worksheet.write(row, col + 2, model.field_data_field_body)
            worksheet.write(row, col + 3, model.link)
            worksheet.write(row, col + 4, model.field_revision_field_resource_description_g)
            worksheet.write(row, col + 5, model.field_data_field_resource_url_g)
            worksheet.write(row, col + 6, model.taxonomy_term_data)
            worksheet.write(row, col + 7, str(model.status).decode('utf-8'))
            # .decode('utf-8')
            worksheet.write(row, col + 8, model.type)
            worksheet.write(row, col + 9, model.message)

            row += 1
        sleep(3)
        workbook.close()
