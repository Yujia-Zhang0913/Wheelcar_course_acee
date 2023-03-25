#!/usr/bin/python
# -*- coding: UTF-8 -*-

import socket
#from pynput.keyboard import Listener, Key
_ENDPOINT = ("127.0.0.1",10000)
client = socket.socket(socket.AF_INET,socket.SOCK_DGRAM)
while True:
    data = input()
    client.sendto(str.encode(data),_ENDPOINT)
client.close()
