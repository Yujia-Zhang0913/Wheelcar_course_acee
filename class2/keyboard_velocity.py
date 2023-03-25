#!/usr/bin/python
# -*- coding: UTF-8 -*-
import json
import socket
vel = {
    "v": 0.0,
    "w": 0.0
}
from pynput.keyboard import Listener
_ENDPOINT = ("127.0.0.1",10000)
client = socket.socket(socket.AF_INET,socket.SOCK_DGRAM)
def on_press(key):
    if hasattr(key,"char"):
        data = key.char
        if data == 'w':
            vel["v"] = vel["v"]+0.1
        elif data == 's':
            vel["v"] = vel["v"]-0.1
        elif data == 'a':
            vel["w"] = vel["w"]+0.1
        elif data == 'd':
            vel["w"] = vel["w"]-0.1
        temp = json.dumps(vel)
        client.sendto(str.encode(temp),_ENDPOINT)
        print(vel["v"],vel["w"])
    else:
        pass
while True:
        with Listener(on_press=on_press) as listener:
            listener.join()
client.close()