# import paho.mqtt.client as mqtt_client

# broker = "broker.emqx.io"
# client_id = "codepo-2022BQ"
# topic = "WebToDevice"
# port = 1883

# def connect_mqtt():
#     def on_connect(client, userdata, flags, rc):
#         if rc == 0:
#             print("Connected to MQTT Broker!")
#         else:
#             print("Failed to connect, return code %d\n", rc)
#     # Set Connecting Client ID
#     client = mqtt_client.Client(client_id)
#     client.on_connect = on_connect
#     client.connect(broker, port)
#     return client

# def subscribe(client: mqtt_client):
#     def on_message(client, userdata, msg):
#         print(str(msg.payload))

#     client.subscribe(topic)
#     client.on_message = on_message

# def run():
#     client = connect_mqtt()
#     subscribe(client)
#     client.loop_forever()


# if __name__ == '__main__':
#     run()


import paho.mqtt.client as mqtt_client
import json
from celery import shared_task
from django.utils import timezone


broker = "broker.emqx.io"
client_id = "codepo-2022BQ"
topic = "WebToDevice"
port = 1883
flag_connected = 0


def connect_mqtt():
    def on_connect(client, userdata, flags, rc):
        if rc == 0:
            print("Connected to MQTT Broker!")
        else:
            print("Failed to connect, return code %d\n", rc)
    # Set Connecting Client ID
    client = mqtt_client.Client(client_id)
    client.on_connect = on_connect
    client.connect(broker, port)
    return client

def subscribe(client: mqtt_client):
    def on_message(client, userdata, msg):
        print(str(msg.payload))
        msg_processed = process_msg(str(msg.payload))
        print(msg_processed)
        if(len(msg_processed) > 3):
            saveMeasure(msg_processed)
    client.subscribe(topic)
    client.on_message = on_message

@shared_task
def connect_to_mqtt_broker():
    if flag_connected == 0:
        print('Attempting to connect...')
        client = connect_mqtt()
        subscribe(client)
        client.loop_start()
    else:
        print('already connected')

def process_msg(msg):
    new_msg = msg.replace('{','')
    new_msg = new_msg.replace('}','')
    new_msg = new_msg.split(',')
    data = {}
    try:
        for val in new_msg:
            new_val = val.split(':')
            if len(new_val) > 1:
                if 'id' in str(new_val[0]).lower():
                    data['id'] = str(new_val[1]).strip()
                elif 'message' in str(new_val[0]).lower():
                    data['message'] = str(new_val[1]).strip()
    except Exception as exc:
        print("error")
    return data

def saveMeasure(msg_processed):
    try:
        message = msg_processed.get('message')
        id = str(msg_processed.get['id']).strip()
        
        measureData = {
            'id': id,
            'message': message,
        }
        
        measured = MeasureSerializer(data = measureData)
        if measured.is_valid():
            measured.save()
            print('Measured saved succesffuly')
        else:
            print('erros')
    except Exception as exc:
        print('error')
        
def run():
    client = connect_mqtt()
    subscribe(client)
    client.loop_forever()


if __name__ == '__main__':
    run()


