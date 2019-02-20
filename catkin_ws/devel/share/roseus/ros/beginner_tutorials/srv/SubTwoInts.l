;; Auto-generated. Do not edit!


(when (boundp 'beginner_tutorials::SubTwoInts)
  (if (not (find-package "BEGINNER_TUTORIALS"))
    (make-package "BEGINNER_TUTORIALS"))
  (shadow 'SubTwoInts (find-package "BEGINNER_TUTORIALS")))
(unless (find-package "BEGINNER_TUTORIALS::SUBTWOINTS")
  (make-package "BEGINNER_TUTORIALS::SUBTWOINTS"))
(unless (find-package "BEGINNER_TUTORIALS::SUBTWOINTSREQUEST")
  (make-package "BEGINNER_TUTORIALS::SUBTWOINTSREQUEST"))
(unless (find-package "BEGINNER_TUTORIALS::SUBTWOINTSRESPONSE")
  (make-package "BEGINNER_TUTORIALS::SUBTWOINTSRESPONSE"))

(in-package "ROS")





(defclass beginner_tutorials::SubTwoIntsRequest
  :super ros::object
  :slots (_a _b ))

(defmethod beginner_tutorials::SubTwoIntsRequest
  (:init
   (&key
    ((:a __a) 0)
    ((:b __b) 0)
    )
   (send-super :init)
   (setq _a (round __a))
   (setq _b (round __b))
   self)
  (:a
   (&optional __a)
   (if __a (setq _a __a)) _a)
  (:b
   (&optional __b)
   (if __b (setq _b __b)) _b)
  (:serialization-length
   ()
   (+
    ;; int64 _a
    8
    ;; int64 _b
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _a
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _a (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _a) (= (length (_a . bv)) 2)) ;; bignum
              (write-long (ash (elt (_a . bv) 0) 0) s)
              (write-long (ash (elt (_a . bv) 1) -1) s))
             ((and (class _a) (= (length (_a . bv)) 1)) ;; big1
              (write-long (elt (_a . bv) 0) s)
              (write-long (if (>= _a 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _a s)(write-long (if (>= _a 0) 0 #xffffffff) s)))
     ;; int64 _b
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _b (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _b) (= (length (_b . bv)) 2)) ;; bignum
              (write-long (ash (elt (_b . bv) 0) 0) s)
              (write-long (ash (elt (_b . bv) 1) -1) s))
             ((and (class _b) (= (length (_b . bv)) 1)) ;; big1
              (write-long (elt (_b . bv) 0) s)
              (write-long (if (>= _b 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _b s)(write-long (if (>= _b 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _a
#+(or :alpha :irix6 :x86_64)
      (setf _a (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _a (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _b
#+(or :alpha :irix6 :x86_64)
      (setf _b (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _b (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass beginner_tutorials::SubTwoIntsResponse
  :super ros::object
  :slots (_sub ))

(defmethod beginner_tutorials::SubTwoIntsResponse
  (:init
   (&key
    ((:sub __sub) 0)
    )
   (send-super :init)
   (setq _sub (round __sub))
   self)
  (:sub
   (&optional __sub)
   (if __sub (setq _sub __sub)) _sub)
  (:serialization-length
   ()
   (+
    ;; int64 _sub
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _sub
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _sub (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _sub) (= (length (_sub . bv)) 2)) ;; bignum
              (write-long (ash (elt (_sub . bv) 0) 0) s)
              (write-long (ash (elt (_sub . bv) 1) -1) s))
             ((and (class _sub) (= (length (_sub . bv)) 1)) ;; big1
              (write-long (elt (_sub . bv) 0) s)
              (write-long (if (>= _sub 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _sub s)(write-long (if (>= _sub 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _sub
#+(or :alpha :irix6 :x86_64)
      (setf _sub (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _sub (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass beginner_tutorials::SubTwoInts
  :super ros::object
  :slots ())

(setf (get beginner_tutorials::SubTwoInts :md5sum-) "9eb98bb9850f1c1774cf3ff3d5ba1aec")
(setf (get beginner_tutorials::SubTwoInts :datatype-) "beginner_tutorials/SubTwoInts")
(setf (get beginner_tutorials::SubTwoInts :request) beginner_tutorials::SubTwoIntsRequest)
(setf (get beginner_tutorials::SubTwoInts :response) beginner_tutorials::SubTwoIntsResponse)

(defmethod beginner_tutorials::SubTwoIntsRequest
  (:response () (instance beginner_tutorials::SubTwoIntsResponse :init)))

(setf (get beginner_tutorials::SubTwoIntsRequest :md5sum-) "9eb98bb9850f1c1774cf3ff3d5ba1aec")
(setf (get beginner_tutorials::SubTwoIntsRequest :datatype-) "beginner_tutorials/SubTwoIntsRequest")
(setf (get beginner_tutorials::SubTwoIntsRequest :definition-)
      "int64 a
int64 b
---
int64 sub

")

(setf (get beginner_tutorials::SubTwoIntsResponse :md5sum-) "9eb98bb9850f1c1774cf3ff3d5ba1aec")
(setf (get beginner_tutorials::SubTwoIntsResponse :datatype-) "beginner_tutorials/SubTwoIntsResponse")
(setf (get beginner_tutorials::SubTwoIntsResponse :definition-)
      "int64 a
int64 b
---
int64 sub

")



(provide :beginner_tutorials/SubTwoInts "9eb98bb9850f1c1774cf3ff3d5ba1aec")


