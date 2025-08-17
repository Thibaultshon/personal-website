(in-package :app)

(defparameter *server* (make-instance 'easy-routes:easy-routes-acceptor
                                      :port 4242
                                      :document-root #p"./"))                   
(hunchentoot:start *server*)
;; (hunchentoot:stop *server*)
