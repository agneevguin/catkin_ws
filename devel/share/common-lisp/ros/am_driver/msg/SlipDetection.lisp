; Auto-generated. Do not edit!


(cl:in-package am_driver-msg)


;//! \htmlinclude SlipDetection.msg.html

(cl:defclass <SlipDetection> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (isSlipping
    :reader isSlipping
    :initarg :isSlipping
    :type cl:boolean
    :initform cl:nil)
   (omegaImu
    :reader omegaImu
    :initarg :omegaImu
    :type cl:float
    :initform 0.0)
   (omegaOdo
    :reader omegaOdo
    :initarg :omegaOdo
    :type cl:float
    :initform 0.0)
   (omegaDiff
    :reader omegaDiff
    :initarg :omegaDiff
    :type cl:float
    :initform 0.0))
)

(cl:defclass SlipDetection (<SlipDetection>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SlipDetection>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SlipDetection)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name am_driver-msg:<SlipDetection> is deprecated: use am_driver-msg:SlipDetection instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SlipDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader am_driver-msg:header-val is deprecated.  Use am_driver-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'isSlipping-val :lambda-list '(m))
(cl:defmethod isSlipping-val ((m <SlipDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader am_driver-msg:isSlipping-val is deprecated.  Use am_driver-msg:isSlipping instead.")
  (isSlipping m))

(cl:ensure-generic-function 'omegaImu-val :lambda-list '(m))
(cl:defmethod omegaImu-val ((m <SlipDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader am_driver-msg:omegaImu-val is deprecated.  Use am_driver-msg:omegaImu instead.")
  (omegaImu m))

(cl:ensure-generic-function 'omegaOdo-val :lambda-list '(m))
(cl:defmethod omegaOdo-val ((m <SlipDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader am_driver-msg:omegaOdo-val is deprecated.  Use am_driver-msg:omegaOdo instead.")
  (omegaOdo m))

(cl:ensure-generic-function 'omegaDiff-val :lambda-list '(m))
(cl:defmethod omegaDiff-val ((m <SlipDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader am_driver-msg:omegaDiff-val is deprecated.  Use am_driver-msg:omegaDiff instead.")
  (omegaDiff m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SlipDetection>) ostream)
  "Serializes a message object of type '<SlipDetection>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isSlipping) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'omegaImu))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'omegaOdo))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'omegaDiff))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SlipDetection>) istream)
  "Deserializes a message object of type '<SlipDetection>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'isSlipping) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'omegaImu) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'omegaOdo) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'omegaDiff) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SlipDetection>)))
  "Returns string type for a message object of type '<SlipDetection>"
  "am_driver/SlipDetection")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SlipDetection)))
  "Returns string type for a message object of type 'SlipDetection"
  "am_driver/SlipDetection")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SlipDetection>)))
  "Returns md5sum for a message object of type '<SlipDetection>"
  "2a25228e21237c779217dded21a13ce2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SlipDetection)))
  "Returns md5sum for a message object of type 'SlipDetection"
  "2a25228e21237c779217dded21a13ce2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SlipDetection>)))
  "Returns full string definition for message of type '<SlipDetection>"
  (cl:format cl:nil "Header header~%bool isSlipping~%float32 omegaImu~%float32 omegaOdo~%float32 omegaDiff~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SlipDetection)))
  "Returns full string definition for message of type 'SlipDetection"
  (cl:format cl:nil "Header header~%bool isSlipping~%float32 omegaImu~%float32 omegaOdo~%float32 omegaDiff~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SlipDetection>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SlipDetection>))
  "Converts a ROS message object to a list"
  (cl:list 'SlipDetection
    (cl:cons ':header (header msg))
    (cl:cons ':isSlipping (isSlipping msg))
    (cl:cons ':omegaImu (omegaImu msg))
    (cl:cons ':omegaOdo (omegaOdo msg))
    (cl:cons ':omegaDiff (omegaDiff msg))
))
