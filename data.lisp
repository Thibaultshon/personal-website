(in-package :data)

;; (defparameter *web-pages* '(("Pictures" . "/pictures")  ("Home" . "/") ("Projects" ."/projects")))

(defparameter *main-colour-purple* "#7C7AFF")
(defparameter *main-colour-purple-light* "#dcdcfc")
(defparameter *background-colour-black* "#171717")


(defparameter *projects-list*
  '(
    ;; (:title "This Website"
    ;;  :date "[2025]"
    ;;  :tools ("Common Lisp" "JavaScript")
    ;;  :url "" :img"" :tag "")

    ;; (:title "Language Specification - Coursework"              
    ;;  :date "[2025]"                     
    ;;  :tools ("ART" "Java")
    ;;  :url "" :img"" :tag "")  
    
    (:title "Majtron - 3D arena shooter "
     :date "[2024-2025]"
     :tools ("Common Lisp" "OpenGL" "GLSL")
     :url "" :img"images/gameEx1.JPG" :tag "/projects/majtron")
    
    (:title"Cletra - Classic tetris clone"
     :date "[2024]"
     :tools ("Common Lisp" "OpenGL" "GLSL")
     :url "" :img"images/cletra.JPG" :tag "/projects/cletra")
    
    (:title"React Website (Group Project)"
     :date "[2024]"
     :tools ("React" "JavaScript" "Spring Boot" "Java")
     :url "" :img"images/react4.JPG" :tag "/projects/ReactGroupProject")
    
    (:title"Top Down Golf game (Group project)"
     :date "[2023]"
     :tools ("Python" "simplegui")
     :url "" :img"images/golf9.JPG" :tag "/projects/golfGame")
    
    (:title "Puzzle Droid - puzzle game/messaging app"
     :date "[2021-2022]"
     :tools ("Python" "Pygame" "SQL")
     :url "" :img"images/puyoclone.JPG" :tag "/projects/puzzleDroid")
    
    (:title "Not Puyo - puyo puyo clone"
     :date "[2020-2021]"
     :tools ("Python" "Pygame")
     :url "" :img"images/puyocloneyear12p3.JPG" :tag "/projects/notPuyo")
    
    (:title "PHP website "
     :date "[2020-2021]"
     :tools ("PHP" "SQL" "HTML" "CSS")
     :url "" :img"images/reicult4.JPG" :tag "projects/phpWebsite")
    
    (:title "Scratch games"
     :date "[2016-2019]"
     :tools ("Scratch")
     :url "" :img"images/scratch.JPG" :tag "/projects/scratchGames")))

(defparameter *favourites-list*
  '((:activity "Music Artists"
     :description "I generaly like pop music between 60-80's. Anything recent is pretty random. I also like a lot of game/film/anime OST's."
     :names ("David Bowie" "Simon & Garfunkel" "Earth, Wind & Fire"
             "Peter Sarstedt"  "Serge Gainsbourg" "Charles Aznavour" "Beatles" "Bye2" "Hi Posi " "Mallu Magalhães") )
    (:activity "Books"
     :description "I like a lot of sci fi. I haven't included them, but going purely off prose, I like Dazai and Nabokov"
     :names ("Ubik - Philip K. Dick"
             "Pride and Prejudice - Jane Austen"
             "Foundation Series - Issac Assimov"
             "The Bridge on the Drina - Ivo Andrić"
             "Books by Ryū Murakami  (not to be confused with Haruki)"
             "Dune - Frank Hubert"
             "Twelfth Night - William Shakespeare"
             "The Hitchhiker's Guide to the Galaxy - Douglas Adams"
             "Ham on Rye - Charles Bukowski"
             "My Family and other animals - (Childhood favourite)"
             "Harry Potter Series - (Childhood favourite)"))


    (:activity "Films"
     :description "In my favourite films nothing happens; in my least favourite films nothing happens..."
     :names ("Il Posto"  "Life of Brian" "Close-Up" "Made in Hong Kong" "A Moment of Innocence" "A Scene at the Sea" "Star Wars: The Empire Strikes Back"  "Love & Pop" "The Mark of Zorro" "Duck Soup"  "Kirikou and the Sorceress" "The Transformers: The Movie (1986)" "Cool Runnings"  "Kes" "Les Bronzés font du ski" "Solaris " "Men In Black" "Young Frankenstein"))


    
    (:activity "Games"                                    
     :description "Yeah, this is probably the most random. I guess the main genres are FPSs, puzzle games, and rhythm games."                              
     :names ("Quake 3"
             "Tetris Franchise"
             "Astral Chain"
             "COD BO2"
             "Eterna"
             "Mario tennis aces"
             "Arcaea"
             "The Legend of Zelda: Breath of the Wild"
             "Looney Tunes: Acme Arsenal"
             "Lego Star Wars III: The Clone Wars"
             "LEGO Marvel Super Heroes"
             "Splatoon 2"
             "Farm Frenzy 3"
             "Puyo Pop Fever"
             "Octopath Traveler"
             "Raving Rabbids: Travel in Time"
             "We Ski"
             "Dynasty Warriors 7"
             "Wii Play"
             "PokePark 2: Wonders Beyond"))))




(defparameter *images-list*
  '((france .
     ("/photos/church-normandy.jpg" 
      "/photos/coast1.jpg" 
      "/photos/coast2.jpg"
      "/photos/coast3.jpg"
      "/photos/coast4.jpg"
      "/photos/coast5.jpg"
      "/photos/england-france.jpg"
      "/photos/moutain-france2.jpg"
      "/photos/moutain-france.jpg"))
    (japan .
     (
      "/photos/fukuoka1.jpg"
      "/photos/fukuoka2.jpg"
      "/photos/fukuoka4.jpg"
      "/photos/fukuoka5.jpg"
      "/photos/fukuoka6.jpg"
      "/photos/fukuoka7.jpg"
      "/photos/fukuoka8.jpg"
      "/photos/fukuoka9.jpg"
      "/photos/kyoto1.jpg"
      "/photos/kyoto2.jpg"
      "/photos/osaka1.jpg"
      "/photos/osaka2.jpg"
      "/photos/osaka3.jpg"
      "/photos/tokyo1.jpg"
      "/photos/tokyo2.jpg"
      "/photos/tokyo3.jpg"
      "/photos/tokyo4.jpg"
      "/photos/tokyo5.jpg"
      "/photos/tokyo6.jpg"
      "/photos/tokyo7.jpg"
      "/photos/tokyo8.jpg"))
    (wales .
     ("/photos/wales1.jpg"
      "/photos/wales2.jpg"
      "/photos/wales4.jpg"))
    (england . 
     ("/photos/england.jpg"
      "/photos/england2.jpg"
      "/photos/england3.jpg"))))




