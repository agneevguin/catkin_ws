; Auto-generated. Do not edit!


(cl:in-package am_planning-srv)


;//! \htmlinclude PolygonsFromPolygon-request.msg.html

(cl:defclass <PolygonsFromPolygon-request> (roslisp-msg-protocol:ros-message)
  ((inputPolygon
    :reader inputPolygon
    :initarg :inputPolygon
    :type geometry_msgs-msg:PolygonStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PolygonStamped)))
)

(cl:defclass PolygonsFromPolygon-request (<PolygonsFromPolygon-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PolygonsFromPolygon-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PolygonsFromPolygon-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name am_planning-srv:<PolygonsFromPolygon-request> is deprecated: use am_planning-srv:PolygonsFromPolygon-request instead.")))

(cl:ensure-generic-function 'inputPolygon-val :lambda-list '(m))
(cl:defmethod inputPolygon-val ((m <PolygonsFromPolygon-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader am_planning-srv:inputPolygon-val is deprecated.  Use am_planning-srv:inputPolygon instead.")
  (inputPolygon m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PolygonsFromPolygon-request>) ostream)
  "Serializes a message object of type '<PolygonsFromPolygon-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'inputPolygon) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PolygonsFromPolygon-request>) istream)
  "Deserializes a message object of type '<PolygonsFromPolygon-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'inputPolygon) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PolygonsFromPolygon-request>)))
  "Returns string type for a service object of type '<PolygonsFromPolygon-request>"
  "am_planning/PolygonsFromPolygonRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PolygonsFromPolygon-request)))
  "Returns string type for a service object of type 'PolygonsFromPolygon-request"
  "am_planning/PolygonsFromPolygonRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PolygonsFromPolygon-request>)))
  "Returns md5sum for a message object of type '<PolygonsFromPolygon-request>"
  "38f673104d6845a725025970096b7577")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PolygonsFromPolygon-request)))
  "Returns md5sum for a message object of type 'PolygonsFromPolygon-request"
  "38f673104d6845a725025970096b7577")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PolygonsFromPolygon-request>)))
  "Returns full string definition for message of type '<PolygonsFromPolygon-request>"
  (cl:format cl:nil "geometry_msgs/PolygonStamped inputPolygon~%~%================================================================================~%MSG: geometry_msgs/PolygonStamped~%# This represents a Polygon with reference coordinate frame and timestamp~%Header header~%Polygon polygon~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PolygonsFromPolygon-request)))
  "Returns full string definition for message of type 'PolygonsFromPolygon-request"
  (cl:format cl:nil "geometry_msgs/PolygonStamped inputPolygon~%~%================================================================================~%MSG: geometry_msgs/PolygonStamped~%# This represents a Polygon with reference coordinate frame and timestamp~%Header header~%Polygon polygon~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PolygonsFromPolygon-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'inputPolygon))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PolygonsFromPolygon-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PolygonsFromPolygon-request
    (cl:cons ':inputPolygon (inputPolygon msg))
))
;//! \htmlinclude PolygonsFromPolygon-response.msg.html

(cl:defclass <PolygonsFromPolygon-response> (roslisp-msg-protocol:ros-message)
  ((outputPolygons
    :reader outputPolygons
    :initarg :outputPolygons
    :type (cl:vector geometry_msgs-msg:PolygonStamped)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:PolygonStamped :initial-element (cl:make-instance 'geometry_msgs-msg:PolygonStamped))))
)

(cl:defclass PolygonsFromPolygon-response (<PolygonsFromPolygon-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PolygonsFromPolygon-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PolygonsFromPolygon-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name am_planning-srv:<PolygonsFromPolygon-response> is deprecated: use am_planning-srv:PolygonsFromPolygon-response instead.")))

(cl:ensure-generic-function 'outputPolygons-val :lambda-list '(m))
(cl:defmethod outputPolygons-val ((m <PolygonsFromPolygon-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader am_planning-srv:outputPolygons-val is deprecated.  Use am_planning-srv:outputPolygons instead.")
  (outputPolygons m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PolygonsFromPolygon-response>) ostream)
  "Serializes a message object of type '<PolygonsFromPolygon-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'outputPolygons))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'outputPolygons))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PolygonsFromPolygon-response>) istream)
  "Deserializes a message object of type '<PolygonsFromPolygon-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'outputPolygons) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'outputPolygons)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:PolygonStamped))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PolygonsFromPolygon-response>)))
  "Returns string type for a service object of type '<PolygonsFromPolygon-response>"
  "am_planning/PolygonsFromPolygonResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PolygonsFromPolygon-response)))
  "Returns string type for a service object of type 'PolygonsFromPolygon-response"
  "am_planning/PolygonsFromPolygonResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PolygonsFromPolygon-response>)))
  "Returns md5sum for a message object of type '<PolygonsFromPolygon-response>"
  "38f673104d6845a725025970096b7577")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PolygonsFromPolygon-response)))
  "Returns md5sum for a message object of type 'PolygonsFromPolygon-response"
  "38f673104d6845a725025970096b7577")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PolygonsFromPolygon-response>)))
  "Returns full string definition for message of type '<PolygonsFromPolygon-response>"
  (cl:format cl:nil "geometry_msgs/PolygonStamped[] outputPolygons~%~%================================================================================~%MSG: geometry_msgs/PolygonStamped~%# This represents a Polygon with reference coordinate frame and timestamp~%Header header~%Polygon polygon~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PolygonsFromPolygon-response)))
  "Returns full string definition for message of type 'PolygonsFromPolygon-response"
  (cl:format cl:nil "geometry_msgs/PolygonStamped[] outputPolygons~%~%================================================================================~%MSG: geometry_msgs/PolygonStamped~%# This represents a Polygon with reference coordinate frame and timestamp~%Header header~%Polygon polygon~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PolygonsFromPolygon-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'outputPolygons) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PolygonsFromPolygon-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PolygonsFromPolygon-response
    (cl:cons ':outputPolygons (outputPolygons msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PolygonsFromPolygon)))
  'PolygonsFromPolygon-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PolygonsFromPolygon)))
  'PolygonsFromPolygon-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PolygonsFromPolygon)))
  "Returns string type for a service object of type '<PolygonsFromPolygon>"
  "am_planning/PolygonsFromPolygon")