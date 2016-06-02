; Auto-generated. Do not edit!


(cl:in-package am_driver-msg)


;//! \htmlinclude ConfinementStatus.msg.html

(cl:defclass <ConfinementStatus> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (frontLeftCollision
    :reader frontLeftCollision
    :initarg :frontLeftCollision
    :type cl:float
    :initform 0.0)
   (frontRightCollision
    :reader frontRightCollision
    :initarg :frontRightCollision
    :type cl:float
    :initform 0.0)
   (rearLeftCollision
    :reader rearLeftCollision
    :initarg :rearLeftCollision
    :type cl:float
    :initform 0.0)
   (rearRightCollision
    :reader rearRightCollision
    :initarg :rearRightCollision
    :type cl:float
    :initform 0.0))
)

(cl:defclass ConfinementStatus (<ConfinementStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ConfinementStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ConfinementStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name am_driver-msg:<ConfinementStatus> is deprecated: use am_driver-msg:ConfinementStatus instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ConfinementStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader am_driver-msg:header-val is deprecated.  Use am_driver-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'frontLeftCollision-val :lambda-list '(m))
(cl:defmethod frontLeftCollision-val ((m <ConfinementStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader am_driver-msg:frontLeftCollision-val is deprecated.  Use am_driver-msg:frontLeftCollision instead.")
  (frontLeftCollision m))

(cl:ensure-generic-function 'frontRightCollision-val :lambda-list '(m))
(cl:defmethod frontRightCollision-val ((m <ConfinementStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader am_driver-msg:frontRightCollision-val is deprecated.  Use am_driver-msg:frontRightCollision instead.")
  (frontRightCollision m))

(cl:ensure-generic-function 'rearLeftCollision-val :lambda-list '(m))
(cl:defmethod rearLeftCollision-val ((m <ConfinementStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader am_driver-msg:rearLeftCollision-val is deprecated.  Use am_driver-msg:rearLeftCollision instead.")
  (rearLeftCollision m))

(cl:ensure-generic-function 'rearRightCollision-val :lambda-list '(m))
(cl:defmethod rearRightCollision-val ((m <ConfinementStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader am_driver-msg:rearRightCollision-val is deprecated.  Use am_driver-msg:rearRightCollision instead.")
  (rearRightCollision m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ConfinementStatus>) ostream)
  "Serializes a message object of type '<ConfinementStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'frontLeftCollision))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'frontRightCollision))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rearLeftCollision))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rearRightCollision))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ConfinementStatus>) istream)
  "Deserializes a message object of type '<ConfinementStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'frontLeftCollision) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'frontRightCollision) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rearLeftCollision) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rearRightCollision) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ConfinementStatus>)))
  "Returns string type for a message object of type '<ConfinementStatus>"
  "am_driver/ConfinementStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConfinementStatus)))
  "Returns string type for a message object of type 'ConfinementStatus"
  "am_driver/ConfinementStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ConfinementStatus>)))
  "Returns md5sum for a message object of type '<ConfinementStatus>"
  "d2e69ff7f1409ba34fefca7d5164502d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ConfinementStatus)))
  "Returns md5sum for a message object of type 'ConfinementStatus"
  "d2e69ff7f1409ba34fefca7d5164502d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ConfinementStatus>)))
  "Returns full string definition for message of type '<ConfinementStatus>"
  (cl:format cl:nil "Header header~%float32 frontLeftCollision~%float32 frontRightCollision~%float32 rearLeftCollision~%float32 rearRightCollision~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ConfinementStatus)))
  "Returns full string definition for message of type 'ConfinementStatus"
  (cl:format cl:nil "Header header~%float32 frontLeftCollision~%float32 frontRightCollision~%float32 rearLeftCollision~%float32 rearRightCollision~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ConfinementStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ConfinementStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'ConfinementStatus
    (cl:cons ':header (header msg))
    (cl:cons ':frontLeftCollision (frontLeftCollision msg))
    (cl:cons ':frontRightCollision (frontRightCollision msg))
    (cl:cons ':rearLeftCollision (rearLeftCollision msg))
    (cl:cons ':rearRightCollision (rearRightCollision msg))
))
