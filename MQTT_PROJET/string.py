import json

txt = "apple#banana#cherry#orange"
# y = "{'name':'josue','lastname':'adriel'}"
donne = {'name':'espoir','lastname':'sadra','age':'12'}

supers = 'espoir'

# print(supers.strip())

# La notion de split, replace, 
x = txt.split("#")
tout = str(donne)
val = tout.replace('{', '')
val = val.replace('}', '')
val = val.split(',')

# print(val)

# table = {}

# table = val
# latname = json.dumps(table)

# print(latname[0])

def process(y):
    t = y.replace('{', '')
    new_val = t.replace('}', '')
    new_val = new_val.split(',')
    # new_val = new_val.split(':')

    data = {}
    try:
        for val in new_val:
            new = val.split(':')
            if len(new) > 1:
                if 'age' in str(new[0]).lower():
                    data['age'] = str(new[1]).strip()
                elif 'lastname' in str(new[0]).lower():
                    data['lastname'] = str(new[1]).strip()
                elif 'name' in str(new[0]).lower():
                    data['name'] = str(new[1]).strip()
    except Exception as exc:
        print("error")
    return data
# process()   

            
message = process(str(donne))
name = message.get('name').strip()
# lastname = message.get('lastname').replace()
# print(lastname)
print(name)
# print(new_val)
# print(x)