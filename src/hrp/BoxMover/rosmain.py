# -*- coding: utf-8 -*-
"""
Created on Thu Mar 31 18:32:26 2016
@author: ozer
"""
import spawn_targets as st
import model_diff_drive as model
import Robot as robot
import view_ros as vr
import triangulate as tr
import rospy
from am_driver.msg import Range
import time
from rospy import Time

x = 0.0
y = 0.0
dist_3_0 = 0.0
dist_3_1 = 0.0
dist_3_2 = 0.0
dist_3_4 = 0.0
dist_3_5 = 0.0

# Obtains data from the subscriber
def callback(data):
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
		print 'x =======> ', x
		print 'y =======> ', y
		print '=' *20
def listener():
	rospy.init_node('rosmain', anonymous=True)
	rospy.Subscriber("uwb", Range, callback)
	#rospy.spin() #Enable this if only listener() is called
    
# ROS MAIN FUNCTION
if __name__ == '__main__':
	'''
	while (x == 0. and y == 0.):
		listener()		#Gets the data from the range beacon
	'''	
	print 'test'
	
	box = [[4.0, 2.3, 0.]]
	box_z = 0.5 + 5.122  # height/2 of box + z of robots
	box_size = 0.2

	s = st.Spawner(positions=box, size=box_size, z=box_z)
	rand = s.create_targets()

	#m1 = model.LawnMower(name='Selam', box_locs=box,goal=[10.,-15.,0.])
	m1 = robot.Robot(name='Selam', goal=[7.,1.],way_points=[[7.,1.]])
	v1 = vr.RosView(m1, rand=rand)

	v1 = vr.RosView(m1, rand=rand)

	rate = rospy.Rate(100)
	while not rospy.is_shutdown():
		v1.update()
		rate.sleep()
	
