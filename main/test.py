from model.Node import Node

__author__ = 'johnnytsai'

page = Node.select().where(Node.type == "metadataset").paginate(1, 1000)
for mesg in page:
    print mesg.title