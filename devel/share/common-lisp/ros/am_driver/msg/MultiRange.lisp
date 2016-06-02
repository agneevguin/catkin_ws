; Auto-generated. Do not edit!


(cl:in-package am_driver-msg)


;//! \htmlinclude MultiRange.msg.html

(cl:defclass <MultiRange> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (numBeacons
    :reader numBeacons
    :initarg :numBeacons
    :type cl:integer
    :initform 0)
   (beaconId
    :reader beaconId
    :initarg :beaconId
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (numRanges
    :reader numRanges
    :initarg :numRanges
    :type cl:integer
    :initform 0)
   (range
    :reader range
    :initarg :range
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass MultiRange (<MultiRange>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MultiRange>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MultiRange)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name am_driver-msg:<MultiRange> is deprecated: use am_driver-msg:MultiRange instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MultiRange>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader am_driver-msg:header-val is deprecated.  Use am_driver-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'numBeacons-val :lambda-list '(m))
(cl:defmethod numBeacons-val ((m <MultiRange>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader am_driver-msg:numBeacons-val is deprecated.  Use am_driver-msg:numBeacons instead.")
  (numBeacons m))

(cl:ensure-generic-function 'beaconId-val :lambda-list '(m))
(cl:defmethod beaconId-val ((m <MultiRange>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader am_driver-msg:beaconId-val is deprecated.  Use am_driver-msg:beaconId instead.")
  (beaconId m))

(cl:ensure-generic-function 'numRanges-val :lambda-list '(m))
(cl:defmethod numRanges-val ((m <MultiRange>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader am_driver-msg:numRanges-val is deprecated.  Use am_driver-msg:numRanges instead.")
  (numRanges m))

(cl:ensure-generic-function 'range-val :lambda-list '(m))
(cl:defmethod range-val ((m <MultiRange>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader am_driver-msg:range-val is deprecated.  Use am_driver-msg:range instead.")
  (range m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MultiRange>) ostream)
  "Serializes a message object of type '<MultiRange>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'numBeacons)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'numBeacons)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'numBeacons)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'numBeacons)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'beaconId))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'beaconId))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'numRanges)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'numRanges)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'numRanges)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'numRanges)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'range))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'range))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MultiRange>) istream)
  "Deserializes a message object of type '<MultiRange>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'numBeacons)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'numBeacons)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'numBeacons)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'numBeacons)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'beaconId) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'beaconId)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'numRanges)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'numRanges)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'numRanges)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'numRanges)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'range) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'range)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MultiRange>)))
  "Returns string type for a message object of type '<MultiRange>"
  "am_driver/MultiRange")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MultiRange)))
  "Returns string type for a message object of type 'MultiRange"
  "am_driver/MultiRange")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MultiRange>)))
  "Returns md5sum for a message object of type '<MultiRange>"
  "c8069e026eaba36b442a9e5cae1b2a4e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MultiRange)))
  "Returns md5sum for a message object of type 'MultiRange"
  "c8069e026eaba36b442a9e5cae1b2a4e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MultiRange>)))
  "Returns full string definition for message of type '<MultiRange>"
  (cl:format cl:nil "Header header~%uint32 numBeacons~%string[] beaconId~%uint32 numRanges~%float32[] range~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MultiRange)))
  "Returns full string definition for message of type 'MultiRange"
  (cl:format cl:nil "Header header~%uint32 numBeacons~%string[] beaconId~%uint32 numRanges~%float32[] range~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MultiRange>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'beaconId) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'range) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MultiRange>))
  "Converts a ROS message object to a list"
  (cl:list 'MultiRange
    (cl:cons ':header (header msg))
    (cl:cons ':numBeacons (numBeacons msg))
    (cl:cons ':beaconId (beaconId msg))
    (cl:cons ':numRanges (numRanges msg))
    (cl:cons ':range (range msg))
))
