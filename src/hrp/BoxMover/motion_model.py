import math
import tf

MAX_ROT = math.pi/2.0
MAX_VEL = 2.0


def update_motion(pos, orientation, target):
    rotate_speed = 0.
    euler = tf.transformations.euler_from_quaternion(orientation)

    if (target[0] - pos[0]) != 0:
        theta = math.atan2((target[1] - pos[1]), (target[0] - pos[0]))
    else:
        theta = math.pi / 2

    theta = fix_angle_360(theta)
    omega = theta - euler[2]
    omega = fix_angle_180(omega)
    if math.fabs(omega) < 0.1:
        theta = 0.
        Vx = math.cos(theta) * MAX_VEL
        Vy = math.sin(theta) * MAX_VEL
    else:
        Vx = 0.04
        Vy = 0.04
        rotate_speed = omega * MAX_ROT
    if math.sqrt(math.pow((target[1] - pos[1]), 2) + math.pow((target[0] - pos[0]), 2)) < 0.020:
        speed = 0
    else:
        speed = Vx #math.sqrt(math.pow(Vx, 2) + math.pow(Vy, 2))
    return speed, rotate_speed


def fix_angle_360(angle):
    if angle > math.pi * 2.0:
        angle -= math.pi * 2.0
    elif angle < 0.:
        angle += math.pi * 2.0
    return angle


def fix_angle_180(angle):
    if angle > math.pi:
        angle -= math.pi * 2.0
    elif angle < -math.pi:
        angle += math.pi * 2.0
    return angle