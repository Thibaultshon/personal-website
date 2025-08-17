(in-package :routes)


(easy-routes:defroute route-home ("/" :method :get)()
  (with-base-layout (:title "Home" :style  (append *css-profile* *css-home*))
    (:div :class "intro-container"
          (:h2  "About Me")
          (:p "Hi! I am James, a recently Graduated Software Engineer based near London")
          (:p "I have experience with Common Lisp, Java, Python, C and Javascript")
          (:p "Beyond Computer Science I Like learning languages, linguistics, literature, geopolitics, racket sports and media "))

    (:div :class "favourite-list-container"
          (loop for favourite in *favourites-list*
                for  activity =  (getf favourite :activity)
                for  description  = (getf favourite :description)
                for  names =  (getf favourite :names)
                do
                   (:div  :class "favourite-list"
                          (:h2 activity)
                          (:p description)
                          (:ul 
                           (dolist (name names)
                             (:li name))))))

    (:div :class "purple-background-container"
          (:h2 "On Languages")
          (:p
           "Other than Computer Science I really enjoy language learning. If you are familiar with immersion/comprehensible input, I mainly took that approach (not that I haven't been exposed to traditional methods). It has been a six-year journey and probably one of the most fulfilling uses of time, and still has yet to come to a close")
          (:h4 (:a :href "/OnLanguages" "Click to read more")))
    (:p  :style (format nil "margin-top: 20px;color: ~a;" *main-colour-purple*) "[Powered By Common Lisp  λ ]")
    ))



(easy-routes:defroute route-OnLanguages ("/OnLanguages" :method :get)()
  (with-base-layout (:title "Home | On Languages" :style  (append *css-profile* *css-home*))
    (:h2 "On Languages")
    (:div :class "purple-background-container"

          (:h4 "CI skepticism" )
          (:p "Originally, I was more on the sceptical side, having understood French for the great part of my life, but never really being able to output/speak.")
          (:p "It wasn't really until I started VRChat and speaking in both French and broken Japanese that I realized that I could speak a lot more French than I realised (I just needed a bit of practice). It was like for every phrase I constructed, 20 or more words/grammar constructs would start surfacing in my active working memory, fueling a desire to salvage those lost fragments stored in my brain.")




          (:P "Around the same time I had also decided to challenge this scepticism by learning Italian with a listening-only approach, starting with Italian automatico, then a number of other CI (Comprehensible Input) targeted channels."(:br)" Finally, I ended up just watching native content through italian dubbed anime."(:br)" Even though this has come to a standstill, and I never really got to practice speaking it, I was amazed with the results from just casually listening (nowhere near the same hours I put into japanese). After a few years, I reached a point that I could understand Intermediate conversations quite well. "(:br)"It definitely helped that I was already familiar with a Romance language already and that Italian is still relatively close to English. Either way, this was a lot more effective than the 1 year of conjugating verbs in Spanish at school (which I still enjoyed).")

          
          (:p "Although I had started Japanese earlier, my journey was a lot more rocky."(:br)" I  began with a mixture of duolinguo, flashcards, WaniKani, and textbooks. To say the least, this wasn't effective."(:br)" Out of tenacity I carried on for a couple of years. This was until I was introduced to Anki and reintroduced to the wonders of spaced repetition (this time out of a school environment)."(:br)"I managed to escape the first common trap, to enter the second trap: not supplementing anki with input (listening/reading)." (:br)" I went through the 2K/6K anki deck, and while it was effective at memorizing the rough English translation to 6 thousand most common words, parsing non simple sentences was not getting easier to understand."))

    (:div :class "black-background-container"

          (:h4 "The immersion cult")

          (:p "Looking at the results from my Italian journey, I was no longer held back by skepticism, so I decided to double down on watching anime in Japanese without English subtitles."(:br) "I had only done this very little previously. Being a fan of the medium, I wanted to be able to understand as much as I could, and watching it without subtitles got in the way. (Japanese is as far from English as any popular language can get, meaning the subtitles will always miss a lot of  nuance, so you could argue that by watching it in English I was limiting my understanding of the shows)."(:b)
              "Along with the Anki usage, I spent 3-6 hours a day (highly dependent on the time of the year ) doing this, eventually, picking up sentence mining as well (making anki cards on words the content you are watching)")

          (:p "This naturally boosted my listening ability and confidence in Japanese and I carried this on for 2 years. There was still one lingering problem: I couldn't read very well."))


    (:div :class "purple-background-container"
          (:h4 "What about the reading?")
          (:p "Reading isn't necessary, but as someone who liked visual novels/light novels/manga, and liked reading in their own language, this wasn’t something I could ignore. Even from a language learning perspective reading is also the most effective way at building your vocab quickly.")

          
          (:p "The first book I read was Kiki's Delivery Service (a book with very little kanji aimed at children). This was probably the hardest book I completed. Not because it was in any shape or form a hard book. My brain was just adapting to this new way of presenting language. Subconsciously, it felt like my brain was forming a bridge between the written text and the spoken language I was a lot more used to")
          (:p   "Next, I read the first book in the A Certain Magical Index series."(:br)
                " This had significantly more Kanji, being a light novel and not a children’s book, but it felt significantly easier." (:br)
                "After a few more light novels I began to read standard novels, and each completion felt like installing a new software update."(:br)
                "The sentences I could construct were a lot more complex. It even improved my listening. The amazing thing was It didn’t feel like much effort. I was consuming things I enjoyed so most of the time it didn’t feel like ‘studying’."))

    (:div :class "black-background-container"
          (:h4 "Final thoughts")

          (:p "I have carried this on for two years, and even if there have been periods of less activity, my confidence in reading Japanese has skyrocketed and I have no intention of stopping. Language isn’t something you can ever really ‘accomplish’. Whether it be your pitch accent, vocab, how articulate you are, domain-specific language, public speaking ability (even in your native language), you can always seek improvements.")

          )))





(easy-routes:defroute route-projects ("/projects" :method :get)()
  (with-base-layout (:title "Projects"  :style   (append *css-projects* *css-home*))
    (:div :class "project-list"
          (dolist (project *projects-list*)
            (let ((title (getf project :title ))
                  (tools (getf project :tools))
                  (date (getf project :date))
                  (url (getf project :url ))
                  (img (getf project :img ))
                  (tag (getf project  :tag )))
              (:div :class "project"
                    (:a :href tag (:h4 title) )
                    (:a :href tag 
                        (:img :src img  :style "width: 200px; height: 150px;"))
                    (:p   date)
                    (:div :class "tools"
                          (dolist (tool tools)
                            (:p  (:b  tool))))))))))





(easy-routes:defroute route-cletra("/projects/cletra" :method :get)() 
  (with-base-layout (:title "Projects | Cletra"  :style (append *css-projects-description* *css-home*))
    (:div 
     (:h2 "Cletra - A classic Tetris clone" ))      
    (:img  :src "/images/cletra.JPG" :style " max-height: 300px;")
    (github-link "https://github.com/Thibaultshon/Cletra")
    (:div :class "project-description"
          (:div :class "purple-background-container"
                (:h4 "what is it?")
                (:p "Just a simple classic Tetris clone, built in Common lisp using OpenGL bindings. So, you can rotate and drop pieces, see the next piece, clear lines (the usual stuff).")
                (:p "I might try and add to it at a later data, i.e., a UI, more mechanics (maybe mechanics from some variant of modern Tetris, or add in new ones), improve the scoring system, and make the movement a bit smoother.")
                (:p "This was more of a project to get familiar with OpenGL development in Common Lisp.")
                (:p "I'm also just a big Tetris/puzzle game fan."))

          (:div :class "img-container"
                (:img  :src "/images/cletra2.JPG" :style " max-height: 300px;")))))



(easy-routes:defroute route-ReactGroupProject("/projects/ReactGroupProject" :method :get)() 
  (with-base-layout (:title "Projects | Oaxaca"  :style (append *css-projects-description* *css-home*))
    (:div 
     (:h2 "Oaxaca - full stack  web app (group project)" ))      
    (:img  :src "/images/react4.JPG" :style " max-height: 300px;")
    (:div :class "project-description"
          (:div :class "purple-background-container"
                (:h4 "what is it?")
                (:p "A web application for a fictional restaurant company where customers can order food and these can then be processed by the staff.")
                (:p "This was for a group project in the second year of university, where I was one of the core 3 members in a 9 person team.")

                (:p "Prior to this, I had not had any React/Spring Boot experience and had probably written 40 lines of JavaScript in my life (changing the inside of a header, a couple of while loops— truly challenging stuff). ")
                (:p "For this project, I was working on both the front end and the back end as well as designing the core architecture." (:br)" We also made extensive use of Trello as a way of assigning and tracking tasks.")
                (:p "Note: so as not to take credit for the other front end developer's work, the pictures shown are pages that I made significant contributions to or did all of."))

          (:div :class "img-container"
                (:img  :src "/images/react3.JPG" :style " max-height: 300px;")
                (:img  :src "/images/react6.JPG" :style " max-height: 300px;"))

          (:div :class "black-background-container"
                (:h4 "The features")
                (:p "The first feature  was assigning tables. A user would sign up, have a randomly generated string, from which a waiter (logged in on a waiter account)  could enter a free table number. The guest would then receive this number from their side.")
                (:p "The main part was the page displaying the main menu. You could select the menu you wanted, the item and quantity within that menu, as well as filter items by calories and allergens. (All the menus were stored in a database.)")
                (:p "When the customer submitted their order, they would then be prompted to pay and receive a confirmation of that payment. The staff have their own list indicating which customers are sitting at which tables and which have paid the full amount.")
                (:p "On the staff side, they would have an interactive list of orders. They go from unconfirmed, in-progress, ready and, delivered. Delivered means that the waiters can fetch the food from the kitchen staff.")
                (:p "Kitchen staff could also add new dishes to the menu, listing ingredients/price/calories/images and name. The ingredients was also an interative list from which you can add, delete, and select them."))

          (:div :class "img-container"
                (:img  :src "/images/react2.JPG" :style " max-height: 300px;")
                (:img  :src "/images/react7.JPG" :style " max-height: 300px;")
                (:img  :src "/images/react9.JPG" :style " max-height: 300px;"))



          (:div :class "purple-background-container"
                (:h4 "The Stack")
                (:p "React Front (JavaScript) end with a Spring Boot backend (Java) and a Database")))))


(easy-routes:defroute route-golfGame("/projects/golfGame" :method :get)() 
  (with-base-layout (:title "Projects | Golf game"  :style (append *css-projects-description* *css-home*))
    (:div 
     (:h2 "8 Ball Golf - top down golf game (Group Project)" ))      
    (:img  :src "/images/golf9.JPG" :style " max-height: 300px;")
    (:div :class "project-description"
          (:div :class "purple-background-container"
                (:h4 "what is it?")
                (:p "A top down golf game where you complete a series of themed levels, trying to hit the ball in the least number of shots.")
                (:p "Mechanics: The power of the shot is dictated by a power meter."(:br) "The direction of the shot is dictated by your mouse and a spin mechanic (with its own spin meter).")
                (:p "The game ends if you clear all the levels, or you lose all your lives, which could be caused by  colliding with certain obstacles or taking too many shots"))

          (:div :class "img-container"
                (:img  :src "/images/golf2.JPG" :style " max-height: 300px;")
                (:img  :src "/images/golf5.JPG" :style " max-height: 300px;"))


          (:div :class "black-background-container"
                (:h4 "The background")
                (:p "This was a games project for our first year. I was one of the core two members of four person team, in which we had to create a python game using a very rudimentary game engine called SimpleGUI.")
                (:p "Because this was SimpleGUI and not Pygame, we had to implement the collision and physics by ourselves." (:br) "This would have been easy, had I not been very adamant about including diagonal walls."
                    (:br) "A lot of this project was spent trying to create a 2D collision algorithm that works in any orientation.")
                (:P "Lacking the fundamental linear algebra maths background (at the time) and thus having to rely on lots of trig, it took a while but I managed to put together a really ugly algorithm that mostly worked."
                    (:br)"Just doing a bit more research, I could have implemented a SAT (Separating Axis Theorem) algorithm, or the more buisness smart solution would have been to ignore the diagonal walls (they were used once or twice)")
                (:p "Apart from that, the physics was fairly simple and we implemented it the first day."(:br)" The only other things that took a while were the level design and making the sprites (for which I used Aseprite)."))

          (:div :class "img-container"
                (:img  :src "/images/golf6.JPG" :style " max-height: 300px;")
                (:img  :src "/images/golf7.JPG" :style " max-height: 300px;")))))



(defun what-is-puyo-puyo ()
  (spinneret:with-html()
    (:h4 "What is Puyo Puyo?")
    (:p "Essentially, a long-running Tetris-like puzzle game series, where instead of blocks you drop blobs, and instead of clearing lines your focus is on chains.")
    (:p "A chain is where clearing one clump of same-coloured blobs triggers another clump of blobs to be cleared (basically clearing blobs consecutively).")
    (:p "4 or more connected blobs don't have to be all horizontal like in Tetris. They can connect both horizontally and vertically. Pairs of blobs are dropped at a time (they don't have to be the same colour as each other). ")
    (:p (:a :href " https://puyonexus.com/wiki/Main_Page" " https://puyonexus.com/wiki/Main_Page"))))



(easy-routes:defroute route-puzzleDroid("/projects/puzzleDroid" :method :get)() 
  (with-base-layout (:title "Projects | Puzzle Droid"  :style (append *css-projects-description* *css-home*))
    (:div 
     (:h2 "Puzzle Droid" ))      
    (:img  :src "/images/puyoclone.JPG" :style " max-height: 300px;")
    (:div :class "project-description"
          (:div :class "purple-background-container"
                (:h4 "what is it?")
                (:p "Another puyo puyo clone, but more complete and with an extra mechanic (a boost to shoot the puyo upwards with a meter that you use up)")
                (:p "It also had a  messaging app (with a MySQL database), in which you could add friends and send messages to those friends."))


          (:div :class "black-background-container"
                (what-is-puyo-puyo))

          (:div :class "img-container"                                         
                (:img  :src "/images/puyoclone3.jpg" :style " max-height: 300px;")   
                (:img  :src "/images/puyoclone3ex.JPG" :style " max-height: 300px;")
                (:img  :src "/images/puyocloneEx2.JPG" :style " max-height: 300px;") 
                (:img  :src "/images/puyocloneEx4.JPG" :style " max-height: 300px;"))

          (:div :class "purple-background-container"
                (:h4 "The background?")
                (:p "This was for my A levels (16-18 year old) Non-exam assessment (basically a final year project). Our software had to solve a problem. I decided to do a Puyo Puyo clone...because? Well, I really just wanted to make a Puyo Puyo clone again.")         
                (:p "The problem? ")
                (:p "I sort of had to work backwards for this one and said that the messaging systems were not good for puzzle games so I wanted to add good in-game chat. Basically, I had to create two products to be able to create the one I wanted. Not really the ideal Problem and solution combo, but again, a good learning opportunity. ")
                (:p "The hardest part was the algorithm to detect which blobs were connected, to clear them, and then also detect chains (consecutively clearing Puyo).")))))



(easy-routes:defroute route-notPuyo("/projects/notPuyo" :method :get)() 
  (with-base-layout (:title "Projects | Not Puyo"  :style (append *css-projects-description* *css-home*))
    (:div 
     (:h2 "Not Puyo" ))      
    (:img  :src "/images/puyocloneyear12p3.JPG" :style " max-height: 300px;")

    (:div :class "project-description"
          (:div :class "purple-background-container"
                (:h4 "what is it?")
                (:p "A very crude puyo puyo clone, without most of the chain clearing mechanics. You move the blobs left and right as they go down the screen. Clearing lines is done if 4 of the same colour are in a row horizontally or vertically (closer to tetris than Puyo Puyo)."(:br)" You lose when your stack reaches the top of the screen (you drop a blob on a stack higher than the max limit).")
                (:p "Its function was more of a test for my actual actual A-level project."))

          (:div :class "black-background-container"
                (what-is-puyo-puyo))

          (:div :class "img-container"
                (:img  :src "/images/puyocloneyear12.JPG" :style " max-height: 300px;")
                (:img  :src "/images/puyocloneyear12p2.JPG" :style " max-height: 300px;")
                (:img  :src "/images/puyocloneyear12p3.JPG" :style " max-height: 300px;")
                (:img  :src "/images/puyocloneyear12p4.JPG" :style " max-height: 300px;")))))


(easy-routes:defroute route-phpWebsite("/projects/phpWebsite" :method :get)() 
  (with-base-layout (:title "Projects | PHP website"  :style (append *css-projects-description* *css-home*))
    (:div 
     (:h2 "Fan PHP website" ))      
    (:img  :src "/images/reicult4.JPG" :style " max-height: 300px;")
    (:div :class "project-description"
          (:div :class "purple-background-container"
                (:h4 "what is it?")
                (:p "Basically, a fan site consisting of a collection of pages containing links, info, and photos alongside a forum system (in the form of threads).")
                (:p "To use the forum, I had a Standard login section (albeit lacking security measures).")
                (:p "This was done in PHP (a language I haven't touched since), with a MySQL database." ))

          (:div :class "img-container"
                (:img  :src "/images/reicult2.JPG" :style " max-height: 300px;")
                (:img  :src "/images/reicult3.JPG" :style " max-height: 300px;")
                (:img  :src "/images/reicult5.JPG" :style " max-height: 300px;")
                (:img  :src "/images/reicult.JPG" :style " max-height: 300px;")))))


(easy-routes:defroute route-scratchGames("/projects/scratchGames" :method :get)() 
  (with-base-layout (:title "Projects | ScratchGames"  :style (append *css-projects-description* *css-home*))
    (:div 
     (:h2 "Scratch Games" ))      
    (:img  :src "/images/scratch.JPG" :style " max-height: 300px;")

    (:a :class "github-container"                 
        :href "https://scratch.mit.edu/users/Thibaultshon/" "Scratch (link to source code)"   
        (:img  :src "/images/logo_sm.png"))
    (:a :class "github-container"                                                               
        :href "https://scratch.mit.edu/users/jtfrancis/" "Scratch (old account) (link to source code)"   
        (:img  :src "/images/logo_sm.png"))                                                       

    (:div :class "project-description"
          (:div :class "purple-background-container"
                (:h4 "what is it?")
                (:p "A load of games and projects spread across two accounts. This was my first introduction to programming and a hobby of mine (mainly a lot of platformers with copyrighted music).")))))



(easy-routes:defroute route-majtron("/projects/majtron" :method :get)() ;;turn into macro for other projcts
  (with-base-layout (:title "Projects | Majtron"  :style (append *css-projects-description* *css-home*))
    (:div 
     (:h2 :style (format nil "color: ~a;" *main-colour-purple*) "Majtron - 3D arena shooter" ))
    (:img  :src "/images/gameEx1.JPG" :style "width: 400px; height: 300px;")
    (github-link "https://github.com/Thibaultshon/Majtron" )

    (:div :class "project-description"
          (:div :class "purple-background-container"
                (:h4 "What is it?")
                (:p "(If you just want a quick overview just stick to this section or have a look at the images below)" )
                (:p "Most of it is a game engine, starting from low-level OpenGL commands upt to a high-level interface in Common Lisp, along with a 3D Arena shooter demo (cyberpunk/magic inspired game called Majtron)." (:br) "So, basically just a " (:b "3D shooter built from scratch."))

                (:p "Each level in the game has a number of different types of enemies and pickups to help you." (:br)" To pass to the next level you need to clear all the enemies.")
                (:p "The movement was meant to be some form of bunny hopping/strafe jumping (a way to gain and maintain extra velocity), inspired by the Quake 3 engine and the Source engine")
                (:p "The twist is that the projectiles you fire are both slow (more like magic orbs) and you can add spin (makes combat more like a fighting game)."))

          
          (:div :class "black-background-container"
                (:h4 "The Background")
                (:p "Tihs was my University Final Year Project and the only requirement was to build a game." (:br)
                    "I wanted to challenge myself and build not only a 3D game engine but also do it in Common Lisp (a language with minimal libraries geared for game dev despite being highly suitable).")
                (:p "For a final year project (where they prefer that you implement specific algorithms and focus on the report), this was an incredibly dumb idea, but as a tool for learning and increasing my knowledge base, this was probably the best decision."))

          (:div :class "img-container"
                (:img  :src "/images/gameEx3.JPG" :style " max-height: 300px;")
                (:img  :src "/images/gameEx8.png" :style " max-height: 300px;"))

          (:div :class "purple-background-container"
                (:h4 "The Preperation")
                (:p "Problem 1: I didn't know anything about graphics programming or making game engines."(:br)" Sure, I had done 2D games in simple engines like pygame, or played around in Unity, but never something this big.")
                (:p "Problem 2: Even if I did know, I couldn't be sure if it was doable within the project time frame (4-5 months alongside other courses)")
                (:p "I solved these first two by doing what I call light research: casual skimming through enough videos and articles  (sometimes even flicking through digital books), over a week or two until I could convince myself that I had understood the basics."(:br)
                    "This was very much more of a mental solution, but most of the time the problem is motivation.")
                (:p "From here, I started going though the learnopengl.com tutorials along with reading relevant parts of books like the OpenGL Bible or Real Time Rendering.")
                (:p "With programming, you have to actually implement to see if you understant, so (along side the tutorial game I created) I did a demo game in C (trying to replicate one of my old tower defense games on Scratch).")
                (:p "The actual game was going to be in Common lisp not C, so I tried to familiarize myself with the Common Lisp equivalent libraries and syntax I would need to use. Again, This is programming, so I decided to test if it was viable with yet another game, a Tetris clone."(:br)"This time I somewhat completed it. This was a little more challenging than I expected because of the overall lack of documenation, but this required me to dig deep into a few of the library source code to try and understand ambiguities"))

          (:div :class "img-container"                                          
                (:img  :src "/images/gameEx12.png" :style " max-height: 300px;")
                (:img  :src "/images/gameEx11.png" :style " max-height: 300px;")
                (:img  :src "/images/gameEx10.png" :style " max-height: 300px;")
                (:img  :src "/images/gameEx9.png" :style " max-height: 300px;"))


          
          (:div :class "black-background-container"          
                (:h4 "The Idea")
                (:p "By the time University started, I decided to make an arena shooter as this was both a favourite genre of mine and a game that would be in 3D (so would require going deeper into OpenGL and the collison algorithms)."(:br)" I then decided that I wanted to change a part of the mechanics.")
                (:p "The actual movements, i.e, strafe jumping, bunny hopping, were the main parts that made them so fun, so I decided to change the projectile mechanics (a bias from having a lack of talent in my tracking ability) to make them more interesting."(:br)" The aim was to combine the projectile spin mechanics of table tennis, with the movement of Quake 3.")

                (:P "To tackle such a large project in a limited time (around 4-5 months total across 2 terms), I split it into these categories:")
                (:ul
                 (:li "Display a 3D object on the screen")
                 (:li "Add textures to objects displayed on screen")
                 (:li "Automate the rendering process by creating a parser to load obj files on screen")
                 (:li "Add ability to move camera to view objects from different angles")
                 (:li "Add collision system between camera and 3d objects")
                 (:li "Add basic physics including gravity to camera/player")
                 (:li "Add quake 3 specific physics")
                 (:li "Add lighting system")
                 (:li "Add projectiles that can be fired by player")
                 (:li "Give the ability to add spin to projectiles")
                 (:li "Then for the game I split it into these categories:")
                 (:li "Display enemy")
                 (:li "Enemy move in world")
                 (:li "Make enemy fire projectiles to player")
                 (:li "Add different types of enemies")
                 (:li "Add different types of levels")
                 (:li "Integrate enemy and levels to complement each other")
                 (:li "Add different items")
                 (:li "Add multiplayer")
                 (:li "Add UI system")
                 (:li "Make a UI that fits the theme of the game")))



          (:div :class "purple-background-container"
                (:h4 "The Process")
                (:p "(If you really want you can just go to the source code and follow the version history)")
                (:p "looking back a quicker method might have been to look though game design patterns and familiarize myself on how things are supposed to be designed/structured.")
                (:p "However,")
                (:p "A: The process of figuring it myself is more educational and this is an educational setting not a comercial one")
                (:p "B: There was a high likelihood that my underdeveloped programmer brain would overuse them")
                (:p "C: I don't like them")
                (:p "I went about going through each 1-2 tasks every 1-2 weeks, trying to keep the architecture simple and worked out, by refactoring at the end of each feature/couple of features, what was the best and clearest way to structure the architecture."(:br)
                    "I found this was the best way to balance keeping the code clean, and, at the same time not overabstracted")
                (:p "A large chunk of time ended up being spent on the collision system (the backbone behind the simple physics engine).")
                (:p "In the end I managed to have a working game and game engine, but given the time constraints the game side wasn't as extensive as planned (lacking a multiplayer and complex ai), however it was a good stepping stone that helped me have an idea of how to design and create any future complex systems."))


          (:div :class "img-container"                                          

                (:img  :src "/images/gameEx7.jpg" :style " max-height: 300px;")
                (:img  :src "/images/GameEx2.JPG" :style " max-height: 300px;")))))



(easy-routes:defroute route-pictures ("/pictures" :method :get) ()
  (with-base-layout (:title "Pictures" :style (append *css-pictures* *css-home*))    

    (loop for (location . images) in *images-list*
          do
             (:h4 (string-upcase (symbol-name location)))
             (:div :class "image-container"
                   (dolist (url images)
                     (:img :src url :alt (symbol-name location)))))))






