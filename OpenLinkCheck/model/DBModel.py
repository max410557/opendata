# -*- coding: utf-8 -*-

class DBModel:
    nid = None
    title = None
    field_body_value = None
    link = None
    field_resource_description_g_value = None
    field_resource_url_g_url = None
    name = None

    def __init__(self, **dic):
        self.nid = dic["nid"]
        self.title = dic["title"]
        self.field_body_value = dic["field_body_value"]
        self.link = dic["link"]
        self.field_resource_description_g_value = dic["field_resource_description_g_value"]
        self.field_resource_url_g_url = dic["field_resource_url_g_url"]
        self.name = dic["name"]
