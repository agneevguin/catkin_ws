; Auto-generated. Do not edit!


(cl:in-package am_planning-srv)


;//! \htmlinclude PathToPose-request.msg.html

(cl:defclass <PathToPose-request> (roslisp-msg-protocol:ros-message)
  ((border
    :reader border
    :initarg :border
    :type geometry_msgs-msg:PolygonStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PolygonStamped))
   (start
    :reader start
    :initarg :start
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (goal
    :reader goal
    :initarg :goal
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped)))
)

(cl:defclass PathToPose-request (<PathToPose-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PathToPose-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PathToPose-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name am_planning-srv:<PathToPose-request> is deprecated: use am_planning-srv:PathToPose-request instead.")))

(cl:ensure-generic-function 'border-val :lambda-list '(m))
(cl:defmethod border-val ((m <PathToPose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader am_planning-srv:border-val is deprecated.  Use am_planning-srv:border instead.")
  (border m))

(cl:ensure-generic-function 'start-val :lambda-list '(m))
(cl:defmethod start-val ((m <PathToPose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader am_planning-srv:start-val is deprecated.  Use am_planning-srv:start instead.")
  (start m))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <PathToPose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader am_planning-srv:goal-val is deprecated.  Use am_planning-srv:goal instead.")
  (goal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PathToPose-request>) ostream)
  "Serializes a message object of type '<PathToPose-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'border) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'start) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PathToPose-request>) istream)
  "Deserializes a message object of type '<PathToPose-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'border) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'start) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PathToPose-request>)))
  "Returns string type for a service object of type '<PathToPose-request>"
  "am_planning/PathToPoseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PathToPose-request)))
  "Returns string type for a service object of type 'PathToPose-request"
  "am_planning/PathToPoseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PathToPose-request>)))
  "Returns md5sum for a message object of type '<PathToPose-request>"
  "783cfa47b41dfec4009f6dfdb0946ccb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PathToPose-request)))
  "Returns md5sum for a message object of type 'PathToPose-request"
  "783cfa47b41dfec4009f6dfdb0946ccb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PathToPose-request>)))
  "Returns full string definition for message of type '<PathToPose-request>"
  (cl:format cl:nil "geometry_msgs/PolygonStamped border~%geometry_msgs/PoseStamped start~%geometry_msgs/PoseStamped goal~%~%================================================================================~%MSG: geometry_msgs/PolygonStamped~%# This represents a Polygon with reference coordinate frame and timestamp~%Header header~%Polygon polygon~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PathToPose-request)))
  "Returns full string definition for message of type 'PathToPose-request"
  (cl:format cl:nil "geometry_msgs/PolygonStamped border~%geometry_msgs/PoseStamped start~%geometry_msgs/PoseStamped goal~%~%================================================================================~%MSG: geometry_msgs/PolygonStamped~%# This represents a Polygon with reference coordinate frame and timestamp~%Header header~%Polygon polygon~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PathToPose-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'border))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'start))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PathToPose-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PathToPose-request
    (cl:cons ':border (border msg))
    (cl:cons ':start (start msg))
    (cl:cons ':goal (goal msg))
))
;//! \htmlinclude PathToPose-response.msg.html

(cl:defclass <PathToPose-response> (roslisp-msg-protocol:ros-message)
  ((path
    :reader path
    :initarg :path
    :type nav_msgs-msg:Path
    :initform (cl:make-instance 'nav_msgs-msg:Path)))
)

(cl:defclass PathToPose-response (<PathToPose-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PathToPose-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PathToPose-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name am_planning-srv:<PathToPose-response> is deprecated: use am_planning-srv:PathToPose-response instead.")))

(cl:ensure-generic-function 'path-val :lambda-list '(m))
(cl:defmethod path-val ((m <PathToPose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader am_planning-srv:path-val is deprecated.  Use am_planning-srv:path instead.")
  (path m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PathToPose-response>) ostream)
  "Serializes a message object of type '<PathToPose-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'path) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PathToPose-response>) istream)
  "Deserializes a message object of type '<PathToPose-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'path) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PathToPose-response>)))
  "Returns string type for a service object of type '<PathToPose-response>"
  "am_planning/PathToPoseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PathToPose-response)))
  "Returns string type for a service object of type 'PathToPose-response"
  "am_planning/PathToPoseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PathToPose-response>)))
  "Returns md5sum for a message object of type '<PathToPose-response>"
  "783cfa47b41dfec4009f6dfdb0946ccb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PathToPose-response)))
  "Returns md5sum for a message object of type 'PathToPose-response"
  "783cfa47b41dfec4009f6dfdb0946ccb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PathToPose-response>)))
  "Returns full string definition for message of type '<PathToPose-response>"
  (cl:format cl:nil "nav_msgs/Path path~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PathToPose-response)))
  "Returns full string definition for message of type 'PathToPose-response"
  (cl:format cl:nil "nav_msgs/Path path~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PathToPose-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'path))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PathToPose-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PathToPose-response
    (cl:cons ':path (path msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PathToPose)))
  'PathToPose-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PathToPose)))
  'PathToPose-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PathToPose)))
  "Returns string type for a service object of type '<PathToPose>"
  "am_planning/PathToPose")