(defpackage :data
  (:use :cl)

  (:export
   :*web-pages*
   :*projectile-list*
   :*main-colour-purple*
   :*main-colour-purple-light*
   :*background-colour-black*
   :*projects-list*
   :*favourites-list*
   :*images-list*))



(defpackage :css
  (:use :cl :data :lass)
  (:export
   :*css-profile*
   :*css-projects*
   :*css-projects-description*
   :*css-home*
   :*css-pictures*))


(defpackage :templates
  (:use :cl :spinneret :data :css)
  (:export
   :with-page
   :with-base-layout
   :github-link))
   

(defpackage :routes
  (:use :cl  :data :css :templates :spinneret)) 


(defpackage :app       
  (:use :cl :routes)
  (:export :main))
