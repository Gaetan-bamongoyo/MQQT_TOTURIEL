from celery import shared_task
import paho.mqtt.client as mqtt_client
from .models import Message
from .serializers import MessageSerializer


broker = "broker.emqx.io"
client_id = "codepo-2022BQ"
topic = "WebToDevice"
port = 1883
flag_connected = 0


@shared_task(bind=True)
def test_func(self):
    for i in range(2):
        print(i)
    return "Done"


# def connect_to_mqtt_broker():
#     if flag_connected == 0:
#         print('Attempting to connect...')
#         client = connect_mqtt()
#         subscribe(client)
#         client.loop_start()
#     else:
#         print('already connected')

# @shared_task
def connect_mqtt():
    def on_connect(client, userdata, flags, rc):
        if rc == 0:
            flag_connected = 1
            print("Connected to MQTT Broker!")
        else:
            flag_connected = 0
            print("Failed to connect, return code %d\n", rc)
    # Set Connecting Client ID
    client = mqtt_client.Client(client_id)
    client.on_connect = on_connect
    client.connect(broker, port)
    return client

def subscribe(client: mqtt_client):
    def on_message(client, userdata, msg):
        # print(str(msg.payload))
        msg_processed = process(str(msg.payload))
        print(msg_processed)
        if(len(msg_processed) > 3):
            saveMeasure(msg_processed)
    client.subscribe(topic)
    client.on_message = on_message

@shared_task
def connect_to_mqtt_broker():
    client = connect_mqtt()
    subscribe(client)
    client.loop_forever()

# def process_msg(msg):
#     new_msg = msg.replace('{','')
#     new_msg = new_msg.replace('}','')
#     new_msg = new_msg.split(',')
#     data = {}
#     try:
#         for val in new_msg:
#             new_val = val.split(':')
#             if len(new_val) > 1:
#                 if 'id' in str(new_val[0]).lower():
#                     data['id'] = str(new_val[1]).strip()
#                 elif 'message' in str(new_val[0]).lower():
#                     data['message'] = str(new_val[1]).strip()
#                 elif 'status' in str(new_val[0]).lower():
#                     data['status'] = str(new_val[1]).strip()
#     except Exception as exc:
#         print("error")
#     return data

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
                if 'status' in str(new[0]).lower():
                    data['status'] = str(new[1]).strip()
                elif 'message' in str(new[0]).lower():
                    data['message'] = str(new[1]).strip()
            print(val)
    except Exception as exc:
        print("error")
    return data

# def saveMessage(self):
#     messageData = {
#         "message": "je suis desole",
#         "status": "vous etes gentil",
#     }
#     for k in messageData:
#         message = k.get("message"),
#         status = k.get("status")
#         print(message)

def saveMeasure(msg_processed):
    message = msg_processed.get('message').strip()
    status = msg_processed.get('status').strip()       
    measureData = {
            'message': message,
            'status': status
        }
    print(message)
    print(status)
    measured = MessageSerializer(data = measureData.data)
    if measured.is_valid():
        measured.save()
        print('Measured saved succesffuly')
    print('erros')