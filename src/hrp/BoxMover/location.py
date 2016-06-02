
class RobotLocation:
    def __init__(self,timestamp = 0, x = 0.0, y = 0.0, theta = 0.0):
        self.timestamp = timestamp
        self.x = x
        self.y = y
        self.theta = theta
    def __str__(self):
        return '(x={}, y={}, w={})'.format(self.x, self.y, self.theta)
class BoxLocation:
    def __init__(self, timestamp = 0, x = 0.0, y = 0.0):
        self.timestamp = timestamp
        self.x = x
        self.y = y
    def __str__(self):
        return '(x={}, y={})'.format(self.x, self.y)