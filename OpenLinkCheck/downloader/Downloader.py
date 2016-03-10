# -*- coding: utf-8 -*-
import os
import urllib2
import cgi
import requests
from exception.NoExceptionFound import NoExceptionFound
from exception.NotFileException import NotFileException
import mimetypes

__author__ = 'johnnytsai'


class Downloader:
    def __init__(self):
        None

    @staticmethod
    def download(url):
        try:
            """print "before:" + url
            url = url.encode("utf-8")
            url = url.encode("gbk")
            url = url.encode("utf-8")
            url = url.encode("gbk")
            print "after:" + url"""
            print url
            response = requests.get(url, timeout=10)
            # html = response.read()
            # print response.headers.get('Content-Type', '')
            return response
        except Exception, e:
            print e
            raise

    @staticmethod
    def getFileNameNExtension(response):
        try:
            _, params = cgi.parse_header(response.headers.get('Content-Disposition', ''))
            filename = params['filename']
            return os.path.splitext(filename)[1][1:]
        except:
            raise NotFileException("response is not file")

    @staticmethod
    def getFileExtension(response):
        type = response.headers["Content-Type"]
        if mimetypes.guess_extension(type) is not None:
            return mimetypes.guess_extension(type)[1:]
        else:
            raise NoExceptionFound("No Exception Found")

    @staticmethod
    def guessExtension(response):
        type = response.headers["Content-Type"]
        if "json" in type:
            return "json"
        elif "javascript" in type:
            return "json"
        elif "csv" in type:
            return "csv"
        elif "xml" in type:
            return "xml"
        elif "html" in type:
            return "html"
        elif "pdf" in type:
            return "pdf"
        elif "zip" in type:
            return "zip"
        elif "rar" in type:
            return "rar"
        else:
            return ""
