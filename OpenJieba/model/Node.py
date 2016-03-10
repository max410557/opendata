# -*- coding: utf-8 -*-
import uuid
import datetime
from peewee import Model, Field, CharField, DateField, TextField, DateTimeField, MySQLDatabase, IntegerField

test = MySQLDatabase("", host="", port=3306, user="",
                     passwd="")


class Node(Model):
    nid = IntegerField(null=False, unique=True, primary_key=True)
    vid = IntegerField(null=False, unique=True)
    type = CharField(max_length=32, null=False)
    language = CharField(max_length=12, null=False)
    title = CharField(max_length=255, null=False)
    uid = IntegerField(null=False)
    status = IntegerField(null=False)
    created = IntegerField(null=False)
    changed = IntegerField(null=False)
    comment = IntegerField(null=False)
    promote = IntegerField(null=False)
    sticky = IntegerField(null=False)
    tnid = IntegerField(null=False, unique=True)
    translate = IntegerField(null=False)
    uuid = CharField(max_length=36, null=False)

    class Meta:
        database = test
        db_table = 'node'
