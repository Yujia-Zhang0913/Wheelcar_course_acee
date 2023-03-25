#!/usr/bin/python
# -*- coding: UTF-8 -*-

import socket
_ENDPOINT = ("127.0.0.1",10000)
server = socket.socket(socket.AF_INET,socket.SOCK_DGRAM)
server.setsockopt(socket.SOL_SOCKET,socket.SO_REUSEADDR,1)
server.bind(_ENDPOINT)

while True:
    data, addr = server.recvfrom(65535)
    print(str(data))