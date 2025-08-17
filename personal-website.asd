(asdf:defsystem #:personal-website
  :license "MIT"
  :depends-on (:spinneret
               :lass
               :easy-routes)

  :components ((:file "package")
               (:file "data")
               (:file "css")
               (:file "templates")
               (:file "routes")
               (:file "app")))

                 



