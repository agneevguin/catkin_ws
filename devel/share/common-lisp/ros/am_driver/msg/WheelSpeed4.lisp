; Auto-generated. Do not edit!


(cl:in-package am_driver-msg)


;//! \htmlinclude WheelSpeed4.msg.html

(cl:defclass <WheelSpeed4> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (leftFrontSpeed
    :reader leftFrontSpeed
    :initarg :leftFrontSpeed
    :type cl:fixnum
    :initform 0)
   (rightFrontSpeed
    :reader rightFrontSpeed
    :initarg :rightFrontSpeed
    :type cl:fixnum
    :initform 0)
   (leftRearSpeed
    :reader leftRearSpeed
    :initarg :leftRearSpeed
    :type cl:fixnum
    :initform 0)
   (rightRearSpeed
    :reader rightRearSpeed
    :initarg :rightRearSpeed
    :type cl:fixnum
    :initform 0))
)

(cl:defclass WheelSpeed4 (<WheelSpeed4>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WheelSpeed4>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WheelSpeed4)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name am_driver-msg:<WheelSpeed4> is deprecated: use am_driver-msg:WheelSpeed4 instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <WheelSpeed4>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader am_driver-msg:header-val is deprecated.  Use am_driver-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'leftFrontSpeed-val :lambda-list '(m))
(cl:defmethod leftFrontSpeed-val ((m <WheelSpeed4>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader am_driver-msg:leftFrontSpeed-val is deprecated.  Use am_driver-msg:leftFrontSpeed instead.")
  (leftFrontSpeed m))

(cl:ensure-generic-function 'rightFrontSpeed-val :lambda-list '(m))
(cl:defmethod rightFrontSpeed-val ((m <WheelSpeed4>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader am_driver-msg:rightFrontSpeed-val is deprecated.  Use am_driver-msg:rightFrontSpeed instead.")
  (rightFrontSpeed m))

(cl:ensure-generic-function 'leftRearSpeed-val :lambda-list '(m))
(cl:defmethod leftRearSpeed-val ((m <WheelSpeed4>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader am_driver-msg:leftRearSpeed-val is deprecated.  Use am_driver-msg:leftRearSpeed instead.")
  (leftRearSpeed m))

(cl:ensure-generic-function 'rightRearSpeed-val :lambda-list '(m))
(cl:defmethod rightRearSpeed-val ((m <WheelSpeed4>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader am_driver-msg:rightRearSpeed-val is deprecated.  Use am_driver-msg:rightRearSpeed instead.")
  (rightRearSpeed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WheelSpeed4>) ostream)
  "Serializes a message object of type '<WheelSpeed4>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'leftFrontSpeed)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'rightFrontSpeed)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'leftRearSpeed)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'rightRearSpeed)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WheelSpeed4>) istream)
  "Deserializes a message object of type '<WheelSpeed4>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'leftFrontSpeed) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rightFrontSpeed) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'leftRearSpeed) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rightRearSpeed) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WheelSpeed4>)))
  "Returns string type for a message object of type '<WheelSpeed4>"
  "am_driver/WheelSpeed4")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WheelSpeed4)))
  "Returns string type for a message object of type 'WheelSpeed4"
  "am_driver/WheelSpeed4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WheelSpeed4>)))
  "Returns md5sum for a message object of type '<WheelSpeed4>"
  "bfe5178565f4e68aee4afea852bfda05")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WheelSpeed4)))
  "Returns md5sum for a message object of type 'WheelSpeed4"
  "bfe5178565f4e68aee4afea852bfda05")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WheelSpeed4>)))
  "Returns full string definition for message of type '<WheelSpeed4>"
  (cl:format cl:nil "Header header~%int16 leftFrontSpeed~%int16 rightFrontSpeed~%int16 leftRearSpeed~%int16 rightRearSpeed~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WheelSpeed4)))
  "Returns full string definition for message of type 'WheelSpeed4"
  (cl:format cl:nil "Header header~%int16 leftFrontSpeed~%int16 rightFrontSpeed~%int16 leftRearSpeed~%int16 rightRearSpeed~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WheelSpeed4>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     2
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WheelSpeed4>))
  "Converts a ROS message object to a list"
  (cl:list 'WheelSpeed4
    (cl:cons ':header (header msg))
    (cl:cons ':leftFrontSpeed (leftFrontSpeed msg))
    (cl:cons ':rightFrontSpeed (rightFrontSpeed msg))
    (cl:cons ':leftRearSpeed (leftRearSpeed msg))
    (cl:cons ':rightRearSpeed (rightRearSpeed msg))
))
