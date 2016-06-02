
(cl:in-package :asdf)

(defsystem "am_planning-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :nav_msgs-msg
)
  :components ((:file "_package")
    (:file "PathToPose" :depends-on ("_package_PathToPose"))
    (:file "_package_PathToPose" :depends-on ("_package"))
    (:file "PathFromPolygon" :depends-on ("_package_PathFromPolygon"))
    (:file "_package_PathFromPolygon" :depends-on ("_package"))
    (:file "PolygonsFromPolygon" :depends-on ("_package_PolygonsFromPolygon"))
    (:file "_package_PolygonsFromPolygon" :depends-on ("_package"))
  ))