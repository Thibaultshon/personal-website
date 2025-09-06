(in-package :templates)

(defparameter *web-pages* '(("Pictures" . "/pictures")  ("Home" . "/") ("Projects" ."/projects")))


(defmacro with-page((&key title style) &body body)
  `(spinneret:with-html-string
     (:doctype)
     (:html
      (spinneret:with-html()
        (:head
         (:link :rel "icon" :type "image/png" :href "/images/logo2.png")
         (:title ,title)
         (:style
          (apply #'lass:compile-and-write ,style)))
        (:body
         ,@body
         )))))


(defmacro with-base-layout((&key title style) &body body)
  `(with-page (:title ,title :style ,style)

     (:div :class "main" 
           (:div :class "nav-bar" 
                 (:div :class "nav-bar-left"
                       (:img :src "/images/logo2.JPG" :style "width: auto; height: 70px;")
                       (:div  :class "title-container"
                              (:p "J.T.Francis")
                              (:p "[Software Engineer]")))
                 (:div :class "title-list"
                       (loop for (web-page . loc) in *web-pages*
                             do (:a :href loc (:h3 web-page))))
                 (:div :class "nav-bar-right"))
           ,@body
           (:div :class "purple-box"
                 (:div :class "inner-purple-box" 
                       (:div :class "purple-container"
                             (:div :class "text-container"
                                   (:p :id "box-text"))
                             (:button :type "button" :id "right-button"))))
           (:script :src "/main.js"))))


(defun github-link (link)
  (spinneret:with-html()
    (:a :class "github-container"                 
        :href link "GitHub (link to source code)"   
        (:img  :src "/images/github-mark-white.png"  :style "width: 25px; height: 25px;"))))
