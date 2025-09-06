(in-package :css)


(defparameter *css-profile* 
  `((.favourite-list-container
     :display "grid"
     :grid-template-columns "repeat(auto-fit, minmax(350px, 1fr))"
     :margin-bottom "10px"
     :max-width "1000px"
     :width "100%"   
     :row-gap "20px"
     :column-gap "10px")
     
    (.favourite-list
     :outline ,(format nil "4px solid ~a" *main-colour-purple*)

     :width "483px"
     :height "550px"
     )          
    (".favourite-list p"
     :margin "0px 20px 0px 20px")
    (h2
     :color ,*main-colour-purple*)
    (.intro-container
     :margin-top "20px"
     :margin-bottom "20px"
     :width "100%"
     :color "black"
     :background-color ,*main-colour-purple*
     )
    (".intro-container h2"
     :color  "white")))

(defparameter *css-projects* 
  `((.tools
     :display "flex"
     :flex-direction "row")
    (".tools p"
     :padding "2px 2px"
     :background-color ,*main-colour-purple*
     :color ,*background-colour-black*
     :margin "20px 5px 5px 5px"
     :border-radius "5px")

    (".project"
     :width "340px" 
     :height "340px")
     
    (".project:hover"
     :outline "solid 2px white")
    (.project-list
     :width "100%"
     :max-width "1000px"
     :grid-template-columns "auto auto auto"
     :display "grid"
     :gap "10px"
     :justify-content "center"
     :padding "10px")))




(defparameter *css-home*
  `(("*"
     :font-family "Arial, Verdana, sans-serif, Arial"
     :scrollbar-color  ,*main-colour-purple* "rgba(0, 0, 0, 0);")
    (body   
     :background-color ,*background-colour-black*)

    (h4            
     :padding "0px 5px 0px 5px"
     :color ,*main-colour-purple*)
    (.main
         :max-width "1000px"
     :width "100%"
     :padding-bottom "150px")
    (div
     :margin "0 auto"
     :display "flex"
     :flex-direction "column"
     :align-items "center"
     :color "white"
     ;; :max-width "1000px"
     )

    
    (.nav-bar
     :max-width "1000px"
     :width "100%"
     :height "80px"
     ;; :flex-wrap "wrap"
     :background-color ,*main-colour-purple*
     :border-radius "5px"
     :display "flex"
     :color "white"
     :gap "40px"
     :flex-direction "row")
    
    (.nav-bar-left
     :flex "1"
     :color ,*background-colour-black*
     :flex-direction "row")

    (".title-container p"
     :margin "0px")

    (.title-container
     :gap "5px"
     :color ,*background-colour-black*)

    
    (.nav-bar-right
     :flex "1")

    (.title-list
     :gap "40px"
     :display "flex"
     :flex-direction "row")
    
    (".nav-bar p"
     :position "relative")

    
    (.purple-box

     :height "100px"
     :border  "3.5px solid #dcdcfc"
     :box-shadow "1px 0 10px 5px #dcdcfc"
     :outline ,(format nil "4px solid ~a" *main-colour-purple*)
     :max-width "955px"
     :width "100%"      
     :margin-left "20px"
     :margin-right "20px"
     :position "fixed"
     :margin-bottom "20px"
     :bottom "0")
    
    (.inner-purple-box
     :width "100%"
     :height "100%"
     :position "absolute"
     :border ,(format nil "4px solid ~a" *main-colour-purple*)
     :background-color ,*background-colour-black*
     :box-sizing "border-box")
    
    (.purple-container
     :color "white"
     :display "flex"
     :flex-direction "row"
     :justify-content "space-between"
     :width "100%"
     :height "100%")
    
    (.text-container
     :margin 10px 10px 10px 10px
     :display "flex"
     :flex-direction "column"
     :align-items "center")
    
    (button 
     :cursor "pointer"
     :background "none"
     :border "none")
    
    ("#right-button"
     :border-top "25px solid transparent"    
     :border-left ,(format nil "50px solid ~a" *main-colour-purple*)          
     :border-bottom "25px solid transparent")
    
    (".nav-bar h3"
     :width "100%"
     :height "10px%"
     :cursor "pointer"  
     :display "flex"
     :align-items "center"
     :justify-content "center"
     :color "white")
    
    ((:or "a:hover" "a:visited" "a:link" "a:active")
     :color "inherit"
     :text-decoration "none")

    (".nav-bar h3:hover"
     :color "inherited"
     :color ,*background-colour-black*)


   (.purple-background-container
    :background-color ,*main-colour-purple*
    :color ,*background-colour-black*
    :margin-top "10px"
    :margin-bottom "10px"
    ;; :border-radius "8px"
    :padding "0px 20px 0px 20px")


    (.black-background-container
     :margin-top "10px"
     :margin-bottom "10px"
     :margin-bottom "10px"
     :padding "0px 20px 0px 20px"
     :border ,(format nil "4px solid ~a" *main-colour-purple*))
    
    ((:or ".purple-background-container h4" ".purple-background-container h2")
     :color "white")

    ((:or ".black-background-container a:hover" ".purple-background-container a:hover")
     :transition "transform 0.3s ease"
     :transform "scale(1.1)")

    ((:and h4 :hover)
     :color ,*background-colour-black*
     :background-color ,*main-colour-purple*)))





(defparameter *css-projects-description*
  `((".github-container"
     :transition "transform 0.3s ease"
     :display "flex"
     :align-items "center"
     :padding-top "10px"
     :gap "10px")
    
    (".github-container:hover"
     :transform "scale(1.2)")
    (".github-container img"
     :max-height "25px"
     :width "auto"
     )
    (h2 :color , *main-colour-purple*)
    ((:or ".project-description p" ".project-description pre")
     :text-align "left"
     ;; :font-size "18px"
     :width  "100%")

    (".project-description li")
     ;; :font-size "18px")

    (a
     :color ,*main-colour-purple*)
 
    (.img-container
     :padding "10px 0px 10px 0px"
     :display "flex"
     :flex-direction "row"
     :flex-wrap "wrap"
     :place-content "center"
     :gap "1rem"
     :max-width "1000px")

     
    (".img-container img"
     :max-width "492px")))


(defparameter *css-pictures*
  `((body
     :background-color ,*background-colour-black*)
    (.image-container
     :display "inline-grid"
         :max-width "1000px"
     :width "100%"
     :grid-template-columns "repeat(auto-fit, minmax(300px, 1fr))"
     :gap "10px")


    (img
     :max-width "300px"
     :max-height "300px")))




