# -*- coding: utf-8 -*-
import uuid
import datetime
from peewee import Model, Field, CharField, DateField, TextField, DateTimeField, MySQLDatabase, IntegerField

test = MySQLDatabase("", host="", port=3306, user="",
                     passwd="")


class FieldBody(Model):
    entity_type = CharField(max_length=128, primary_key=True, null=False)
    bundle = CharField(max_length=128, null=False)
    deleted = IntegerField(null=False)
    entity_id = IntegerField(null=False, unique=True)
    revision_id = IntegerField(unique=True)
    language = CharField(max_length=32, null=False)
    delta = IntegerField(null=False, unique=True)
    field_body_value = CharField(max_length=20000)
    field_body_format = CharField(max_length=255)

    class Meta:
        database = test
        db_table = 'field_data_field_body'
