import numpy as np
class Point:
    def __init__(self, x = 0.0, y = 0.0):
        self.x = x
        self.y = y
    def __str__(self):
        return '(x={}, y={})'.format(self.x, self.y)

    def get_array(self):
        return np.array([self.x,self.y])
    def add(self, point):
        return Point(self.x+point.x,self.y+point.y)