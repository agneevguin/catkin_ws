import math
import numpy

def triangulation1(allpoints):

	# allpoints in format [(x1, y1, d1), (x2, y2, d2), (x3, y3, d3)]    
	# where (x1, y1), (x2, y2) and (x3, y3) are reference points and d1, d2 and d3 are distances from the reference points
	# (x, y) gives the reference point	
	ws = 0.		
	x = 0.
	y = 0.
	for p in allpoints:
		ws += p[2]	
	points = tuple((x,y,signal/ws) for (x,y,signal) in allpoints)
	x = 0.
	y = 0.
	for p in points:
		x += p[0]*p[2]
		y += p[1]*p[2]
	return (x, y)

def triangulation((i1, j1, d1), (i2, j2, d2), (i3, j3, d3)):
	x = ( ( ((d1*d1)-(d2*d2)) + ((i2*i2)-(i1*i1)) + ((j2*j2)-(j1*j1)) ) * ((2*j3)-(2*j2)) - ( ((d2*d2)-(d3*d3)) + ((i3*i3)-(i2*i2)) + ((j3*j3)-(j2*j2)) ) * ((2*j2)-(2*j1)) ) / ( ((2*i2)-(2*i3))*((2*j2)-(2*j1))-((2*i1)-(2*i2))*((2*j3)-(2*j2)) )
	
	y = (( ((d1*d1)-(d2*d2)) + ((i2*i2)-(i1*i1)) + ((j2*j2)-(j1*j1)) + (x*((2*i1)-(2*i2)))) / ((2*j2)-(2*j1)))
	return (x, y)

def trilateration((LatA, LonA, DistA), (LatB, LonB, DistB), (LatC, LonC, DistC)):

	#assuming elevation = 0
	earthR = 1. #6371
	'''
	LatA = 37.418436
	LonA = -121.963477
	DistA = 0.265710701754
	LatB = 37.417243
	LonB = -121.961889
	DistB = 0.234592423446
	LatC = 37.418692
	LonC = -121.960194
	DistC = 0.0548954278262
	'''
	#using authalic sphere
	#if using an ellipsoid this step is slightly different
	#Convert geodetic Lat/Long to ECEF xyz
	#   1. Convert Lat/Long to radians
	#   2. Convert Lat/Long(radians) to ECEF
	xA = earthR *(math.cos(math.radians(LatA)) * math.cos(math.radians(LonA)))
	yA = earthR *(math.cos(math.radians(LatA)) * math.sin(math.radians(LonA)))
	zA = earthR *(math.sin(math.radians(LatA)))

	xB = earthR *(math.cos(math.radians(LatB)) * math.cos(math.radians(LonB)))
	yB = earthR *(math.cos(math.radians(LatB)) * math.sin(math.radians(LonB)))
	zB = earthR *(math.sin(math.radians(LatB)))

	xC = earthR *(math.cos(math.radians(LatC)) * math.cos(math.radians(LonC)))
	yC = earthR *(math.cos(math.radians(LatC)) * math.sin(math.radians(LonC)))
	zC = earthR *(math.sin(math.radians(LatC)))

	P1 = numpy.array([xA, yA, zA])
	P2 = numpy.array([xB, yB, zB])
	P3 = numpy.array([xC, yC, zC])

	#from wikipedia
	#transform to get circle 1 at origin
	#transform to get circle 2 on x axis
	ex = (P2 - P1)/(numpy.linalg.norm(P2 - P1))
	i = numpy.dot(ex, P3 - P1)
	ey = (P3 - P1 - i*ex)/(numpy.linalg.norm(P3 - P1 - i*ex))
	ez = numpy.cross(ex,ey)
	d = numpy.linalg.norm(P2 - P1)
	j = numpy.dot(ey, P3 - P1)

	#from wikipedia
	#plug and chug using above values
	x = (pow(DistA,2) - pow(DistB,2) + pow(d,2))/(2*d)
	y = ((pow(DistA,2) - pow(DistC,2) + pow(i,2) + pow(j,2))/(2*j)) - ((i/j)*x)

	# only one case shown here
	z = numpy.sqrt(pow(DistA,2) - pow(x,2) - pow(y,2))

	#triPt is an array with ECEF x,y,z of trilateration point
	triPt = P1 + x*ex + y*ey + z*ez

	#convert back to lat/long from ECEF
	#convert to degrees
	lat = math.degrees(math.asin(triPt[2] / earthR))
	lon = math.degrees(math.atan2(triPt[1],triPt[0]))

	print lat, lon

