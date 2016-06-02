; Auto-generated. Do not edit!


(cl:in-package am_driver-msg)


;//! \htmlinclude BeaconSleepConfig.msg.html

(cl:defclass <BeaconSleepConfig> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (beaconId
    :reader beaconId
    :initarg :beaconId
    :type cl:string
    :initform "")
   (sleepTime
    :reader sleepTime
    :initarg :sleepTime
    :type cl:float
    :initform 0.0))
)

(cl:defclass BeaconSleepConfig (<BeaconSleepConfig>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BeaconSleepConfig>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BeaconSleepConfig)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name am_driver-msg:<BeaconSleepConfig> is deprecated: use am_driver-msg:BeaconSleepConfig instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <BeaconSleepConfig>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader am_driver-msg:header-val is deprecated.  Use am_driver-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'beaconId-val :lambda-list '(m))
(cl:defmethod beaconId-val ((m <BeaconSleepConfig>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader am_driver-msg:beaconId-val is deprecated.  Use am_driver-msg:beaconId instead.")
  (beaconId m))

(cl:ensure-generic-function 'sleepTime-val :lambda-list '(m))
(cl:defmethod sleepTime-val ((m <BeaconSleepConfig>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader am_driver-msg:sleepTime-val is deprecated.  Use am_driver-msg:sleepTime instead.")
  (sleepTime m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BeaconSleepConfig>) ostream)
  "Serializes a message object of type '<BeaconSleepConfig>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'beaconId))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'beaconId))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'sleepTime))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BeaconSleepConfig>) istream)
  "Deserializes a message object of type '<BeaconSleepConfig>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'beaconId) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'beaconId) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'sleepTime) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BeaconSleepConfig>)))
  "Returns string type for a message object of type '<BeaconSleepConfig>"
  "am_driver/BeaconSleepConfig")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BeaconSleepConfig)))
  "Returns string type for a message object of type 'BeaconSleepConfig"
  "am_driver/BeaconSleepConfig")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BeaconSleepConfig>)))
  "Returns md5sum for a message object of type '<BeaconSleepConfig>"
  "c6cfec81b906eae425085bae954b1240")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BeaconSleepConfig)))
  "Returns md5sum for a message object of type 'BeaconSleepConfig"
  "c6cfec81b906eae425085bae954b1240")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BeaconSleepConfig>)))
  "Returns full string definition for message of type '<BeaconSleepConfig>"
  (cl:format cl:nil "Header header~%string beaconId~%float32 sleepTime~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BeaconSleepConfig)))
  "Returns full string definition for message of type 'BeaconSleepConfig"
  (cl:format cl:nil "Header header~%string beaconId~%float32 sleepTime~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BeaconSleepConfig>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'beaconId))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BeaconSleepConfig>))
  "Converts a ROS message object to a list"
  (cl:list 'BeaconSleepConfig
    (cl:cons ':header (header msg))
    (cl:cons ':beaconId (beaconId msg))
    (cl:cons ':sleepTime (sleepTime msg))
))
