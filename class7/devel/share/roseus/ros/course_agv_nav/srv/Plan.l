;; Auto-generated. Do not edit!


(when (boundp 'course_agv_nav::Plan)
  (if (not (find-package "COURSE_AGV_NAV"))
    (make-package "COURSE_AGV_NAV"))
  (shadow 'Plan (find-package "COURSE_AGV_NAV")))
(unless (find-package "COURSE_AGV_NAV::PLAN")
  (make-package "COURSE_AGV_NAV::PLAN"))
(unless (find-package "COURSE_AGV_NAV::PLANREQUEST")
  (make-package "COURSE_AGV_NAV::PLANREQUEST"))
(unless (find-package "COURSE_AGV_NAV::PLANRESPONSE")
  (make-package "COURSE_AGV_NAV::PLANRESPONSE"))

(in-package "ROS")





(defclass course_agv_nav::PlanRequest
  :super ros::object
  :slots ())

(defmethod course_agv_nav::PlanRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass course_agv_nav::PlanResponse
  :super ros::object
  :slots (_res ))

(defmethod course_agv_nav::PlanResponse
  (:init
   (&key
    ((:res __res) nil)
    )
   (send-super :init)
   (setq _res __res)
   self)
  (:res
   (&optional (__res :null))
   (if (not (eq __res :null)) (setq _res __res)) _res)
  (:serialization-length
   ()
   (+
    ;; bool _res
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _res
       (if _res (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _res
     (setq _res (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass course_agv_nav::Plan
  :super ros::object
  :slots ())

(setf (get course_agv_nav::Plan :md5sum-) "e27848a10f8e7e4030443887dfea101b")
(setf (get course_agv_nav::Plan :datatype-) "course_agv_nav/Plan")
(setf (get course_agv_nav::Plan :request) course_agv_nav::PlanRequest)
(setf (get course_agv_nav::Plan :response) course_agv_nav::PlanResponse)

(defmethod course_agv_nav::PlanRequest
  (:response () (instance course_agv_nav::PlanResponse :init)))

(setf (get course_agv_nav::PlanRequest :md5sum-) "e27848a10f8e7e4030443887dfea101b")
(setf (get course_agv_nav::PlanRequest :datatype-) "course_agv_nav/PlanRequest")
(setf (get course_agv_nav::PlanRequest :definition-)
      "---
bool res
")

(setf (get course_agv_nav::PlanResponse :md5sum-) "e27848a10f8e7e4030443887dfea101b")
(setf (get course_agv_nav::PlanResponse :datatype-) "course_agv_nav/PlanResponse")
(setf (get course_agv_nav::PlanResponse :definition-)
      "---
bool res
")



(provide :course_agv_nav/Plan "e27848a10f8e7e4030443887dfea101b")


