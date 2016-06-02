; Auto-generated. Do not edit!


(cl:in-package am_driver-msg)


;//! \htmlinclude ProbabilityArray.msg.html

(cl:defclass <ProbabilityArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (probability
    :reader probability
    :initarg :probability
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass ProbabilityArray (<ProbabilityArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ProbabilityArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ProbabilityArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name am_driver-msg:<ProbabilityArray> is deprecated: use am_driver-msg:ProbabilityArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ProbabilityArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader am_driver-msg:header-val is deprecated.  Use am_driver-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'probability-val :lambda-list '(m))
(cl:defmethod probability-val ((m <ProbabilityArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader am_driver-msg:probability-val is deprecated.  Use am_driver-msg:probability instead.")
  (probability m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ProbabilityArray>) ostream)
  "Serializes a message object of type '<ProbabilityArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'probability))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'probability))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ProbabilityArray>) istream)
  "Deserializes a message object of type '<ProbabilityArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'probability) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'probability)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ProbabilityArray>)))
  "Returns string type for a message object of type '<ProbabilityArray>"
  "am_driver/ProbabilityArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ProbabilityArray)))
  "Returns string type for a message object of type 'ProbabilityArray"
  "am_driver/ProbabilityArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ProbabilityArray>)))
  "Returns md5sum for a message object of type '<ProbabilityArray>"
  "1a9ee639df5f64553304f68fd9cd6b6f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ProbabilityArray)))
  "Returns md5sum for a message object of type 'ProbabilityArray"
  "1a9ee639df5f64553304f68fd9cd6b6f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ProbabilityArray>)))
  "Returns full string definition for message of type '<ProbabilityArray>"
  (cl:format cl:nil "Header header~%uint8[] probability~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ProbabilityArray)))
  "Returns full string definition for message of type 'ProbabilityArray"
  (cl:format cl:nil "Header header~%uint8[] probability~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ProbabilityArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'probability) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ProbabilityArray>))
  "Converts a ROS message object to a list"
  (cl:list 'ProbabilityArray
    (cl:cons ':header (header msg))
    (cl:cons ':probability (probability msg))
))
