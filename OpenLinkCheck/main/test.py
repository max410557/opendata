# -*- coding: utf-8 -*-
import requests
from downloader.Downloader import Downloader

__author__ = 'johnnytsai'

url = "http://ws.ndc.gov.tw/001/administrator/10/relfile/0/1000/歷年數位機會(落差)調查彙整資料(csv檔案).csv"

response = requests.get(url, timeout=5)

print response.status_code

print response.headers

print url[len(url)-4:]

Downloader.getFileName(response)



