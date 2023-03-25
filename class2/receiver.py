import threading
import socket
import json
import math as m
import numpy as np
import matplotlib.pyplot as plt

vel = {
    "v": 0.0,
    "w": 0.0
}
pos = {
    "x": 0.0,
    "y": 0.0,
    "theta": 0.0
}
trac=[]
dt = 1

def receive():
    global vel
    _ENDPOINT = ("127.0.0.1",10000)
    server = socket.socket(socket.AF_INET,socket.SOCK_DGRAM)
    server.setsockopt(socket.SOL_SOCKET,socket.SO_REUSEADDR,1)
    server.bind(_ENDPOINT)
    while True:
        data, addr = server.recvfrom(65535)
        data = data.decode()
        vel = json.loads(data)

def calc(pos,vel,dt):
    th = pos['theta']
    v = vel['v']
    pos['theta'] = pos['theta'] + vel['w']*dt
    R = np.array([[m.cos(th), -m.sin(th), pos['x']],[m.sin(th), m.cos(th), pos['y']],[0,0,1]])
    return np.matmul(R,np.transpose([v*dt,0,1]))

def transformation_matrix(pos):
    th = pos["theta"]
    return np.array([[m.cos(th), -m.sin(th), pos['x']],[m.sin(th), m.cos(th), pos['y']],[0,0,1]])

def draw(pos,pause_t,trac):
    plt.clf()
    p1_i = np.array([0.5, 0, 1]).T
    p2_i = np.array([-0.5, 0.25, 1]).T
    p3_i = np.array([-0.5, -0.25, 1]).T

    T = transformation_matrix(pos)
    p1 = np.matmul(T, p1_i)
    p2 = np.matmul(T, p2_i)
    p3 = np.matmul(T, p3_i)

    plt.plot([p1[0], p2[0]], [p1[1], p2[1]], 'k-')
    plt.plot([p2[0], p3[0]], [p2[1], p3[1]], 'k-')
    plt.plot([p3[0], p1[0]], [p3[1], p1[1]], 'k-')
    for i in range(len(trac)-1):
        plt.plot([trac[i][0], trac[i+1][0]], [trac[i][1], trac[i+1][1]], 'k--')

    plt.xlim(pos["x"]-10, pos["x"]+10)
    plt.ylim(pos["y"]-10, pos["y"]+10)

    plt.pause(pause_t)

if __name__ == "__main__":
    t = threading.Thread(target=receive)
    t.start()
    while True:
        pos["x"] = calc(pos,vel,dt)[0]
        pos["y"] = calc(pos,vel,dt)[1]
        trac.append((pos["x"],pos["y"]))
        print(trac[len(trac)-1][0], trac[len(trac)-1][1])
        draw(pos,1,trac)