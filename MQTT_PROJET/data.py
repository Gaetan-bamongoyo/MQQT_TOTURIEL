import json

messageData = [{
    "message":"effectuer",
    "status": "ok",
}
#                {
#     "message":"nom",
#     "status": "ok",
# }
               ]

json_data = json.dumps(messageData,indent = 0, sort_keys=True)
json_show = json.loads(json_data)
# print(json_show, indent = 1, sort_keys=True)
# print(json_data)

message = {}

# for i in json_data:
#     message = i
#     print(message)

todo = {
    "userId": 1,
    "id": 1,
    "title": "delectus aut autem",
    "completed": 1
}

def keep(todo):
    is_complete = todo["title"]
    # has_max_count = str(todo["userId"]) in users
    return is_complete 
    print(is_complete)
# and has_max_count

keep(todo)

x =  '{ "name":"John", "age":30, "city":"New York"}'

# parse x:
y = json.loads(x)

# the result is a Python dictionary:
print(y["age"])
    # if i["message"]:
        
# json_data = json.loads(messageData)
# for k in messageData:
#     message = k.get('message'),
#     # status = k.get("status")
#     print(message)

# for i in json_data:
#     messages = i['message']
#     print(messages)