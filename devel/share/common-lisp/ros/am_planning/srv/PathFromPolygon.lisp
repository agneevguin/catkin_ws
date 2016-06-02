; Auto-generated. Do not edit!


(cl:in-package am_planning-srv)


;//! \htmlinclude PathFromPolygon-request.msg.html

(cl:defclass <PathFromPolygon-request> (roslisp-msg-protocol:ros-message)
  ((border
    :reader border
    :initarg :border
    :type geometry_msgs-msg:PolygonStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PolygonStamped))
   (start
    :reader start
    :initarg :start
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped)))
)

(cl:defclass PathFromPolygon-request (<PathFromPolygon-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PathFromPolygon-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PathFromPolygon-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name am_planning-srv:<PathFromPolygon-request> is deprecated: use am_planning-srv:PathFromPolygon-request instead.")))

(cl:ensure-generic-function 'border-val :lambda-list '(m))
(cl:defmethod border-val ((m <PathFromPolygon-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader am_planning-srv:border-val is deprecated.  Use am_planning-srv:border instead.")
  (border m))

(cl:ensure-generic-function 'start-val :lambda-list '(m))
(cl:defmethod start-val ((m <PathFromPolygon-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader am_planning-srv:start-val is deprecated.  Use am_planning-srv:start instead.")
  (start m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PathFromPolygon-request>) ostream)
  "Serializes a message object of type '<PathFromPolygon-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'border) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'start) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PathFromPolygon-request>) istream)
  "Deserializes a message object of type '<PathFromPolygon-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'border) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'start) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PathFromPolygon-request>)))
  "Returns string type for a service object of type '<PathFromPolygon-request>"
  "am_planning/PathFromPolygonRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PathFromPolygon-request)))
  "Returns string type for a service object of type 'PathFromPolygon-request"
  "am_planning/PathFromPolygonRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PathFromPolygon-request>)))
  "Returns md5sum for a message object of type '<PathFromPolygon-request>"
  "7657c8d98634a267a0bec240812d8a14")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PathFromPolygon-request)))
  "Returns md5sum for a message object of type 'PathFromPolygon-request"
  "7657c8d98634a267a0bec240812d8a14")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PathFromPolygon-request>)))
  "Returns full string definition for message of type '<PathFromPolygon-request>"
  (cl:format cl:nil "geometry_msgs/PolygonStamped border~%geometry_msgs/PoseStamped start~%~%================================================================================~%MSG: geometry_msgs/PolygonStamped~%# This represents a Polygon with reference coordinate frame and timestamp~%Header header~%Polygon polygon~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PathFromPolygon-request)))
  "Returns full string definition for message of type 'PathFromPolygon-request"
  (cl:format cl:nil "geometry_msgs/PolygonStamped border~%geometry_msgs/PoseStamped start~%~%================================================================================~%MSG: geometry_msgs/PolygonStamped~%# This represents a Polygon with reference coordinate frame and timestamp~%Header header~%Polygon polygon~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PathFromPolygon-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'border))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'start))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PathFromPolygon-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PathFromPolygon-request
    (cl:cons ':border (border msg))
    (cl:cons ':start (start msg))
))
;//! \htmlinclude PathFromPolygon-response.msg.html

(cl:defclass <PathFromPolygon-response> (roslisp-msg-protocol:ros-message)
  ((path
    :reader path
    :initarg :path
    :type nav_msgs-msg:Path
    :initform (cl:make-instance 'nav_msgs-msg:Path)))
)

(cl:defclass PathFromPolygon-response (<PathFromPolygon-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PathFromPolygon-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PathFromPolygon-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name am_planning-srv:<PathFromPolygon-response> is deprecated: use am_planning-srv:PathFromPolygon-response instead.")))

(cl:ensure-generic-function 'path-val :lambda-list '(m))
(cl:defmethod path-val ((m <PathFromPolygon-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader am_planning-srv:path-val is deprecated.  Use am_planning-srv:path instead.")
  (path m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PathFromPolygon-response>) ostream)
  "Serializes a message object of type '<PathFromPolygon-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'path) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PathFromPolygon-response>) istream)
  "Deserializes a message object of type '<PathFromPolygon-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'path) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PathFromPolygon-response>)))
  "Returns string type for a service object of type '<PathFromPolygon-response>"
  "am_planning/PathFromPolygonResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PathFromPolygon-response)))
  "Returns string type for a service object of type 'PathFromPolygon-response"
  "am_planning/PathFromPolygonResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PathFromPolygon-response>)))
  "Returns md5sum for a message object of type '<PathFromPolygon-response>"
  "7657c8d98634a267a0bec240812d8a14")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PathFromPolygon-response)))
  "Returns md5sum for a message object of type 'PathFromPolygon-response"
  "7657c8d98634a267a0bec240812d8a14")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PathFromPolygon-response>)))
  "Returns full string definition for message of type '<PathFromPolygon-response>"
  (cl:format cl:nil "nav_msgs/Path path~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PathFromPolygon-response)))
  "Returns full string definition for message of type 'PathFromPolygon-response"
  (cl:format cl:nil "nav_msgs/Path path~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PathFromPolygon-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'path))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PathFromPolygon-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PathFromPolygon-response
    (cl:cons ':path (path msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PathFromPolygon)))
  'PathFromPolygon-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PathFromPolygon)))
  'PathFromPolygon-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PathFromPolygon)))
  "Returns string type for a service object of type '<PathFromPolygon>"
  "am_planning/PathFromPolygon")