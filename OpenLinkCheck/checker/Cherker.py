import json
import csv


class Checker:
    def __init__(self):
        None

    @staticmethod
    def checkType(data, db_data):
        if Checker.isJSON(data):
            return u"JSON"
        elif Checker.isCSV(data):
            return u"CSVV"

        return db_data.name

    @staticmethod
    def checkExtension(file_name, db_data):
        file_name = file_name.upper()
        if file_name == "CSV":
            return u"CSV"
        elif file_name == "JSON":
            return u"JSON"

        return db_data.name

    @staticmethod
    def isJSON(data):
        try:
            json_object = json.loads(data)
        except ValueError, e:
            return False
        return True

    @staticmethod
    def isCSV(data):
        try:
            dialect = csv.Sniffer().sniff(data)
            #contents = csv.reader(data)
            """for row in contents:
                if len(row) == 0:
                    print "false"
                    return False
                row = map(int, row)
                if int(row[0]) > int(row[1]):
                    print "false"
                    return False"""
            return True
        except csv.Error, e:
            return False
        except Exception, e:
            return False
        return True
