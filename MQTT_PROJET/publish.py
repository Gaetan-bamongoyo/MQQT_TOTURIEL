# python 3.6

import ssl
import time
from paho.mqtt import client as mqtt_client
import json


broker = "broker.emqx.io"
client_id = "codepo-2022AG"
topic = "WebToDevice"
port = 1883

def connect_mqtt():
    def on_connect(client, userdata, flags, rc):
        if rc == 0:
            print("Connected to MQTT Broker!")
        else:
            print("Failed to connect, return code %d\n", rc)

    client = mqtt_client.Client(client_id)
    # client.username_pw_set(username, password)
    client.on_connect = on_connect
    client.connect(broker, port)
    return client

# for i in range(10):
#     print("debut iteration", i)
#     print("bonjour")
#     if i == 2:
#         break
#     print("fin iteration", i)
# print("apres la boucle")
messsage = {
            "message":"bienvenu chez toi",
            "status": "charge effectuer",
        }
msg_count = json.dumps(message)
def publish(client):
    for i in range(11000):
        # msg_count = json.dumps(message)
        time.sleep(5)
        msg = f"{msg_count}"
        result = client.publish(topic, msg)
            # result: [0, 1]
        status = result[0]
        if status == 0:
                print(f"Send `{msg}` to topic `{topic}`")
        else:
                print(f"Failed to send message to topic {topic}")
    print("fin boucle")


def run():
    client = connect_mqtt()
    client.loop_start()
    publish(client)


if __name__ == '__main__':
    run()
