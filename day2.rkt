#lang slideshow

(provide lecture2)

(define (lecture2)
  (slide (bt "Mindset!"))

  (define questions
    '(
      "Your intelligence is something very basic about you that you can't change very much."
      "No matter how much intelligence you have, you can always change it quite a bit."
      "You can always substantially change how intelligent you are."
      "You are a certain kind of person, and there is not much that can be done to really change that."
      "You can always change basic things about the kind of person you are."
      "Music talent can be learned by anyone."
      "Only a few people will be truly good at sports -- you have to be 'born with it.'"
      "Math is much easier to learn if you are male or maybe come from a culture who values math."
      "The harder you work at something, the better you will be at it."
      "No matter what kind of person you are, you can always change substantially."
      "Trying new things is stressful for me and I avoid it."
      "Some people are good and kind, and some are not -- it's not often that people change."
      "I appreciate when parents, coaches, teachers give me feedback about my performance."
      "I often get angry when I get feedback about my performance."
      "All human being swithout a brain injury or birth defect are capable of the same amount of learning."
      "You can learn new things, but you can't really change how intelligent you are."
      "You can do things differently, but the important parts of who are you are can't really be changed."
      "Human beings are bsaically good, but sometimes make terrible decisions."
      "An important reason why I do my school work is that I like to learn new things."
      "Truly smart people do not need to try hard."))

  (define (string->slide s i)
    (slide
     (bt (~a "Question " (add1 i)))
     (para s)))

  (map (curry apply string->slide)
       (map list questions (range (length questions))))


  (slide (bt "Score your sheet (5 minutes)"))
  (slide (bt "Discuss"))

  (slide #:title "Fixed Mindset"
         (para "1. My intelligence is fixed")
         (para "2. I was born smart")
         (para "3. I'm not a 'math person'")
         (para "4. I'm tone deaf")  )

  (slide #:title "Growth Mindset"
         (para "1. My intelligence can change")
         (para "2. I worked to become smart")
         (para "3. I haven't practiced math enough")
         (para "4. I need to practice music more")  )


  (slide #:title "How does one's mindset affect them?"
         (hc-append 20 
                    (vl-append 10
                               (bt "Fixed")
                               (t "My intelligence is fixed")
                               (t "I was born smart")
                               (t "I'm not a 'math person'")
                               (t "I'm tone deaf"))

                    (vl-append 10
                               (bt "Growth")
                               (t "My intelligence can change")
                               (t "I worked to become smart")
                               (t "I haven't practiced math enough")
                               (t "I need to practice music more"))))

  
  (slide (bt "REMEMBER: Mindset is multi-faceted!"))
  
  (slide #:title "Discuss"
         (para "What are the 'facets' of coding?"))
  
  (slide #:title "In Pairs"
         (para "Come up with 4 things a person with a fixed mindset about coding might say.")
         (para "Do the same for growth mindset"))
  
  (slide #:title "Discuss"
         (para "How do we promote a growth mindset in coding classes?"))
  )

#;(
   ;How does this work?
   ;  How do we get our brains to do this?
   ;  Do other people's brains already do this?
   ;  What's the algorithm for getting your brain to do this?
   ;     Is it a pipeline?
   ;  What's the algorithm for getting your brain to play piano?

   ;The mind as an algorithm machine.  Learning example...

  

   ;Machines themselves.  An image example...



   ;Teaching.  Create your own "design an algorithm" domain.


  
   ;Framing.  One thing...
    
  
   ;History of algorithms?  Historical example....


   (slide #:title "Muhammad ibn Musa al-Khwārizmī"
          (scale
           (local-bitmap "alKhwarizmi.png")
           0.75))


   (slide #:title "How old are algorithms?" history-math-alg-1)
   )