import socket 
import multiprocessing
from multiprocessing.reduction import recv_handle, send_handle#用于传递文件描述符的两个函数；且只能用于多进程连接中。

_ENDPOINT = ("127.0.0.1",10000)
client = socket.socket(socket.AF_INET,socket.SOCK_DGRAM)
while True:
    data = input()
    client.sendto(str.encode(data),_ENDPOINT)
client.close()

# def worker(in_p, out_p):#工作者进程的事务处理函数
#     out_p.close()#关闭命名管道Pipe的出口，只能读取，不能写入
#     while True:#时间循环
#         fd = recv_handle(in_p)# 获取管道内的文件描述符
#         print('got a fileno:',fd)# 打印该文件描述符
#         with socket.socket(socket.AF_INET,socket.SOCK_STREAM,fileno=fd) as s:
#             while True:
#                 msg = s.recv(1024)#接受信息
#                 if not msg:
#                     break
#                 s.send(msg)#发给客户端

# def server(address, in_p, out_p, work_pid):
#     in_p.close()# 关闭读取，仅仅写入
#     s = socket.socket(socket.AF_INET,socket.SOCK_STREAM)#创建服务器套接字
#     s.setsockopt(socket.SOL_SOCKET,socket.SO_REUSEADDR,True)#设置套接字属性
#     s.bind(address)#绑定IP地址
#     s.listen(1)#监听客户端
#     while True:
#         client, addr = s.accept()# 获取客户端套接字和地址
#         print('SERVER GOT ：', addr)# 打印客户端地址
#         send_handle(out_p, client.fileno(), work_pid)# 将写入管道、客户端文件描述符，工作者进程pid通过管道发送给工作者进程
#         client.close()# 关闭客户端

# if __name__ == '__main__':
#     c1, c2 = multiprocessing.Pipe()# c1是读取，c2是写入
#     worker_p = multiprocessing.Process(target=worker, args=(c1, c2))#创建工作者进程，并且传递命名管道的C1和C2；C1用来读取，C2用来传输，为了保证数据完整性，写入时读取关闭，读取时写入关闭
#     worker_p.start()#工作者进程启动

#     server_p = multiprocessing.Process(target=server,args=(('',20000), c1, c2, worker_p.pid))#创建服务器进程，传入服务器事务处理函数、基本地址，管道文件，工作者进程pid

#     server_p.start()# 服务器启动

#     c1.close() # 关闭管道c1 
#     c2.close() #关闭管道c2