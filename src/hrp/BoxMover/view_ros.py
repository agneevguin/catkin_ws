# -*- coding: utf-8 -*-
"""
Created on Tue Mar 29 09:38:30 2016

@author: ozer
"""

import rospy
from geometry_msgs.msg import Twist
from nav_msgs.msg import Odometry
from am_driver.msg import SensorStatus
#from sensor_msgs.msg import Range
from gazebo_msgs.msg import ModelStates
from am_driver.msg import Range
import triangulate as tr

x = 0.0
y = 0.0
dist_3_0 = 0.0
dist_3_1 = 0.0
dist_3_2 = 0.0
dist_3_4 = 0.0
dist_3_5 = 0.0

class RosView:
	def __init__(self,model, rand=0):
		self.model = model
		self.sent = False
		self.model_data=None
		#init publisher for ROS messages
		try:
			rospy.init_node('movement_node', anonymous=True)
		except:
			pass
		self.name = 'target-'+rand+'-0'
		self.publisher = rospy.Publisher('/cmd_vel', Twist, queue_size=10)
		rospy.Subscriber('/odom_g', Odometry, self.update_position)
		rospy.Subscriber('/sensor_status', SensorStatus, self.update_collision)
		#rospy.Subscriber('/range', Range, self.update_range)
		rospy.Subscriber('/gazebo/model_states', ModelStates, self.read_model)
		#rospy.Subscriber("uwb", Range, self.update_triangulation)

	def update(self):
		self.model.tick()
		#publish new velocities to gazebo model
		self.publish()

	def update_triangulation(self, data):
		
		global x, y, dist_3_0, dist_3_1, dist_3_2, dist_3_4, dist_3_5
		#rospy.loginfo(data.fromId)
		#rospy.loginfo(data.toId)
		#print (data.header.stamp)
		if ((data.fromId == "DECA0100-103" and data.toId == "DECA0100-100") or (data.fromId == "DECA0100-100" and data.toId == "DECA0100-103")):
			dist_3_0 = data.range
			#print '103 to 100: ', data.range
		if ((data.fromId == "DECA0100-103" and data.toId == "DECA0100-101") or (data.fromId == "DECA0100-101" and data.toId == "DECA0100-103")):
			dist_3_1 = data.range
			#print '103 to 101: ', data.range
		if ((data.fromId == "DECA0100-103" and data.toId == "DECA0100-102") or (data.fromId == "DECA0100-102" and data.toId == "DECA0100-103")):
			dist_3_2 = data.range
			#print '103 to 102: ', data.range
		if ((data.fromId == "DECA0100-103" and data.toId == "DECA0100-104") or (data.fromId == "DECA0100-104" and data.toId == "DECA0100-103")):
			dist_3_4 = data.range
			#print '103 to 104: ', data.range
		if ((data.fromId == "DECA0100-103" and data.toId == "DECA0100-105") or (data.fromId == "DECA0100-105" and data.toId == "DECA0100-103")):
			dist_3_5 = data.range
			#print '103 to 105: ', data.range
		if (dist_3_2 != 0. and dist_3_4 != 0. and dist_3_5 != 0.):
			#x, y = tr.triangulation([ (0., 0., dist_3_0), (2.6, 0., dist_3_1), (0., 3., dist_3_2) ])
			#x, y = tr.triangulation((3.1, 4.0, dist_3_2), (2.0, 0., dist_3_4), (0.4, 7.2, dist_3_5))
			x, y = tr.triangulation((3.2, 0., dist_3_2), (7.2, 3.1, dist_3_4), (0., 4.7, dist_3_5))
			#print '=' *20
			print 'x =======> ', x
			print 'y =======> ', y
			#timestamp = data.header.stamp
		self.model.update_box_pos([x,y])
	    	'''
		# Positions
		(0., 0., dist_3_0), (1., 0., dist_3_1), (0., 1., dist_3_2), (0., 1., dist_3_5)
		'''


	def read_model(self, data):
		self.model.update_box_pos(data.pose[3].position)
		
	#def update_range(self,data):
		#r = data.range
		#self.model.update_range(r)
		#pass

	def update_collision(self,data):
		# sensorStatus = 0x40 --> in charging station
		# sensorStatus = 0x04 --> collision
		# sensorStatus = 0x02 --> out of area

		if data.sensorStatus == 0x40:
			bump = 'charge'
		elif data.sensorStatus == 0x04:
			bump = 'bump'
		elif data.sensorStatus == 0x02:
			bump = 'area'
		else:
			bump = 'none'

		#pass the data to model
		self.model.update_bump(bump)

	def update_position(self,data):
		#pass the data to model
		odom_pos = data.pose.pose.position
		odom_ori = data.pose.pose.orientation
		self.model.update_pos([odom_pos.x,odom_pos.y,odom_pos.z],[odom_ori.x,odom_ori.y,odom_ori.z,odom_ori.w])

	def publish(self):
		move_command = Twist()
		move_command.linear.x = self.model.v
		move_command.angular.z = self.model.omega
		self.publisher.publish(move_command)

