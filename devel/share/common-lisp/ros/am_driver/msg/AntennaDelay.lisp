; Auto-generated. Do not edit!


(cl:in-package am_driver-msg)


;//! \htmlinclude AntennaDelay.msg.html

(cl:defclass <AntennaDelay> (roslisp-msg-protocol:ros-message)
  ((index
    :reader index
    :initarg :index
    :type cl:fixnum
    :initform 0)
   (antennaDelay
    :reader antennaDelay
    :initarg :antennaDelay
    :type cl:integer
    :initform 0))
)

(cl:defclass AntennaDelay (<AntennaDelay>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AntennaDelay>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AntennaDelay)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name am_driver-msg:<AntennaDelay> is deprecated: use am_driver-msg:AntennaDelay instead.")))

(cl:ensure-generic-function 'index-val :lambda-list '(m))
(cl:defmethod index-val ((m <AntennaDelay>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader am_driver-msg:index-val is deprecated.  Use am_driver-msg:index instead.")
  (index m))

(cl:ensure-generic-function 'antennaDelay-val :lambda-list '(m))
(cl:defmethod antennaDelay-val ((m <AntennaDelay>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader am_driver-msg:antennaDelay-val is deprecated.  Use am_driver-msg:antennaDelay instead.")
  (antennaDelay m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AntennaDelay>) ostream)
  "Serializes a message object of type '<AntennaDelay>"
  (cl:let* ((signed (cl:slot-value msg 'index)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'antennaDelay)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AntennaDelay>) istream)
  "Deserializes a message object of type '<AntennaDelay>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'index) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'antennaDelay) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AntennaDelay>)))
  "Returns string type for a message object of type '<AntennaDelay>"
  "am_driver/AntennaDelay")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AntennaDelay)))
  "Returns string type for a message object of type 'AntennaDelay"
  "am_driver/AntennaDelay")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AntennaDelay>)))
  "Returns md5sum for a message object of type '<AntennaDelay>"
  "300a1f1202ac4a4dd05465424107afbc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AntennaDelay)))
  "Returns md5sum for a message object of type 'AntennaDelay"
  "300a1f1202ac4a4dd05465424107afbc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AntennaDelay>)))
  "Returns full string definition for message of type '<AntennaDelay>"
  (cl:format cl:nil "int16 index~%int32 antennaDelay~% ~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AntennaDelay)))
  "Returns full string definition for message of type 'AntennaDelay"
  (cl:format cl:nil "int16 index~%int32 antennaDelay~% ~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AntennaDelay>))
  (cl:+ 0
     2
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AntennaDelay>))
  "Converts a ROS message object to a list"
  (cl:list 'AntennaDelay
    (cl:cons ':index (index msg))
    (cl:cons ':antennaDelay (antennaDelay msg))
))
