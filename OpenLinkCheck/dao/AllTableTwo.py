# -*- coding: utf-8 -*-
from peewee import MySQLDatabase
from model.DBModel import DBModel

__author__ = 'johnnytsai'


class DaoTwo:
    database = None

    def __init__(self):
        self.database = MySQLDatabase("test", host="", port=3306, user="",
                                      passwd="")

    def getRows(self):
        sql = """SELECT
        a.nid,
        a.title,
        b.field_body_value,
        concat('http://data.gov.tw/node/',a.nid),
        h.field_resource_description_g_value,
        e.field_resource_url_g_url,
        g.name
        FROM test.node a
        inner join test.field_data_field_body b
        on a.nid = b.entity_id
        inner join test.field_data_field_dataset_status c
        on a.nid = c.entity_id
        right join test.field_data_field_gov_resource d
        on a.nid = d.entity_id
        inner join test.field_data_field_resource_url_g e
        on d.field_gov_resource_value = e.entity_id
        inner join test.field_data_field_format_g f
        on d.field_gov_resource_value = f.entity_id
        inner join test.taxonomy_term_data g
        on f.field_format_g_tid = g.tid
        left join test.field_revision_field_resource_description_g h
        on d.field_gov_resource_value = h.entity_id

        where 1=1
        and c.field_dataset_status_value = '4'
        and
        (
        a.title like %s
        or a.title like %s
        or a.title like %s
        or a.title like %s

        or b.field_body_value like %s
        or b.field_body_value like %s
        or b.field_body_value like %s
        or b.field_body_value like %s
        )"""

        cursor = self.database.execute_sql(sql, [
                                           '%統計表%',
                                           '%統計資料%',
                                           '%統計情形%',
                                           '%統計年報%',
                                           '%統計表%',
                                           '%統計資料%',
                                           '%統計情形%',
                                           '%統計年報%'])
        models = []
        for row in cursor.fetchall():
            model = DBModel(
                nid=row[0],
                title=row[1],
                field_body_value=row[2],
                link=row[3],
                field_resource_description_g_value=row[4],
                field_resource_url_g_url=row[5],
                name=row[6],
            )
            models.append(model)
        return models
