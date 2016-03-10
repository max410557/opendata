# -*- coding: utf-8 -*-
from collections import Counter
import collections
from time import sleep
import jieba
import jieba.analyse
import operator
import xlsxwriter
from model.FieldDataSetStatus import FieldDataSetStatus
from model.Node import Node
from model.FieldName import FieldName
from model.FieldBody import FieldBody
from model.OpenUp import OpenUp

__author__ = 'johnnytsai'

# 載入字典檔
jieba.set_dictionary("dict.txt.big")
# 載入TF-IDF文件
jieba.analyse.set_idf_path("idf.txt.big")
# 載入stop word
jieba.analyse.set_stop_words("stop_words.txt")


def getPage(i, num, Model):
    page = Model.select().join(FieldDataSetStatus, on=condition1).where(FieldDataSetStatus.field_dataset_status_value == "4").paginate(i, num)
    return page


def goJieba(message):
    words = jieba.cut(message, cut_all=False, HMM=True)
    #print "/ ".join(words)
    return words


def goJiebaTFIDF(message):
    tfidf = jieba.analyse.extract_tags(message, topK=10)
    #print "/ ".join(tfidf)
    return tfidf


def goJiebaTextRank(message):
    textRank = jieba.analyse.textrank(message, topK=10)
    #print "/ ".join(textRank)
    return textRank


# 取得總數 field_data_body
condition1 = (FieldBody.entity_id == FieldDataSetStatus.entity_id) & (FieldBody.deleted == FieldDataSetStatus.deleted) & (FieldBody.language == FieldDataSetStatus.language) & (FieldBody.delta == FieldDataSetStatus.delta)
bodyCount = FieldBody.select().join(FieldDataSetStatus, on=condition1).where(FieldDataSetStatus.field_dataset_status_value == "4").count()
print("bodyCount: " + str(bodyCount))
# 取得總數 Node
condition2 = (Node.nid == FieldDataSetStatus.entity_id)
nodeCount = Node.select().join(FieldDataSetStatus, on=condition2).where(Node.type == "metadataset" | FieldDataSetStatus.field_dataset_status_value == "4").count()
print("nodeCount: " + str(nodeCount))

world_list = []
num = 1000

# field_data_body
i = 1
total_page = bodyCount / num + 1
# total_page = 1
while i < total_page + 1:
    print("field_data_body Now Page: " + str(i))
    page = getPage(i, num, FieldBody)
    for mesg in page:
        result = goJiebaTFIDF(mesg.field_body_value)
        strr = " / ".join(result)
        print str(i) + " / " + str(total_page) + " field_data_body - " + strr
        for m in result:
            world_list.append(m.encode('utf8'))
            # sleep(1)
    i += 1
    sleep(3)
#
# Node
i = 1
total_page = nodeCount / num + 1
# total_page = 1
while i < total_page + 1:
    print("Node Now Page: " + str(i))
    page = Node.select().join(FieldDataSetStatus, on=condition2).where(Node.type == "metadataset" | FieldDataSetStatus.field_dataset_status_value == "4").paginate(i, num)
    for mesg in page:
        result = goJiebaTFIDF(mesg.title)
        strr = " / ".join(result)
        print str(i) + " / " + str(total_page) + " Node - " + strr
        for m in result:
            world_list.append(m.encode('utf8'))
            # sleep(1)
    i += 1
    sleep(3)
#

print("GET ALL DONE...")
print("COUNTING...")


def list2freqdict(mylist):
    mydict = dict()
    for ch in mylist:
        mydict[ch] = mydict.get(ch, 0) + 1
    return mydict


wordcount = Counter(world_list)
wordcount = collections.OrderedDict(sorted(wordcount.items(), key=operator.itemgetter(1), reverse=True))
for item in wordcount.items(): print("{}\t{}".format(*item))

# 輸出成excel檔
print("CREATE EXCEL...")
workbook = xlsxwriter.Workbook('WorldCountV2.xlsx')
worksheet = workbook.add_worksheet(u'字數計算')

row = 0
col = 0

for key, value in wordcount.iteritems():
    worksheet.write(row, col, key.decode('utf-8'))
    worksheet.write(row, col + 1, value)
    row += 1
sleep(3)
workbook.close()
