import math
import numpy as np

class DWA:
    """
    动态窗口法
    Args:
        self.vx,self.vw = self.vplanner.plan(
            [self.x,self.y,self.theta,self.vx,self.vw],self.dwaconfig,midpos,self.planning_obs)
    
    class DWAConfig:
    robot_radius = 0.25
    def __init__(self,obs_radius):
        self.obs_radius = obs_radius
        self.dt = 0.1  # [s] Time tick for motion prediction

        self.max_speed = 1.0  # [m/s]
        self.min_speed = -0.5  # [m/s]
        self.max_accel = 1  # [m/ss]
        self.v_reso = self.max_accel*self.dt/10.0  # [m/s]

        self.max_yawrate = 100.0 * math.pi / 180.0  # [rad/s]
        self.max_dyawrate = 100.0 * math.pi / 180.0  # [rad/ss]
        self.yawrate_reso = self.max_dyawrate*self.dt/10.0  # [rad/s]

        
        self.predict_time = 2  # [s]

        self.to_goal_cost_gain = 1.0
        self.speed_cost_gain = 0.1
        self.obstacle_cost_gain = 1.0

        self.tracking_dist = self.predict_time*self.max_speed
        self.arrive_dist = 0.1
    """

    def __init__(self,point_about,dwaconfig,midpos,planning_obs):
        # robot parameter
        self.config = dwaconfig  # [m/s]
        self.midpos = midpos  # [m/s]
        self.obs = planning_obs
        self.point = (point_about[0],point_about[1])
        self.theta = point_about[2]
        self.v = point_about[3]
        self.w = point_about[4]
        
    def cal_evaluation(self,vi,wi):
        """
            计算evaluation函数
        """
        vertex = self.midpos-self.point
        ang = np.arctan2(vertex[1],vertex[0]) - wi*self.config.dt
        g =abs(ang)
        if wi:
            r = vi/wi
        else:
            return 1000000
        f = self.config.to_goal_cost_gain*g +self.config.speed_cost_gain*(self.config.max_speed-vi)+self.config.obstacle_cost_gain*(self.min_distance(self.config.obs_radius+self.config.robot_radius+r))
        print(vi,wi,g,self.config.max_speed-vi,self.min_distance(self.config.obs_radius+self.config.robot_radius))
        return f
    def motion(self):
        # 不考虑局部障碍物的运动
        x = self.point[0]+self.v*self.config.dt*np.cos(self.theta)
        y = self.point[1]+self.v*self.config.dt*np.sin(self.theta)
        self.point = (x,y)
        self.theta = self.theta+self.w*self.config.dt
        
        
    def min_distance(self,r):
        """
        搜寻并确定离temp_point最近的障碍物
        """
        point = (self.point + self.midpos)/2
        
        dist = math.inf
        for i in range(int(self.config.predict_time / self.config.dt)):
            for node in self.obs:
                temp_dist = np.sqrt((point[0]-node[0])**2+(point[1]-node[1])**2) -r 
                if temp_dist < 0:
                    dist = 10000
                    break
                if temp_dist<dist:
                    dist = temp_dist
                    near_obs  = node
            self.motion()
        return 1/dist
    def Process(self):
        """
            DWA核心部分
        """
        minV = self.config.min_speed
        maxV = self.config.max_speed
        minW = -self.config.max_yawrate
        maxW = self.config.max_yawrate
        possibleV_num = int((maxV - minV)/self.config.v_reso) + 1
        possibleW_num = int((maxW - minW)/self.config.yawrate_reso) + 1
        possibleV = np.linspace(minV, maxV, possibleV_num)
        possibleW = np.linspace(minW, maxW, possibleW_num)
        if self.config.arrive_dist > np.sqrt((self.point[0]-self.midpos[0])**2+(self.point[1]-self.midpos[1])**2):
            return 0,0
        eval = math.inf
        self.motion()
        for vi in possibleV:
            wi = -minW
            for wi in possibleW:
                temp = self.cal_evaluation(vi,wi)
                if temp < eval:
                    eval = temp
                    result_v = vi
                    result_w = wi
                wi = wi+self.config.yawrate_reso
            vi = vi+self.config.v_reso
        print(result_v,result_w)
        return result_v,result_w
