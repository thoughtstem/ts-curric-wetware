#lang slideshow

(provide thick-frame bgify
         brain-with-alg 
         brain-with-alg-2
         brain-with-alg-3
         computer-with-alg
         computer-with-alg-2
         computer-with-alg-3
         computer-with-blob
         io)

(require racket/runtime-path)
(require (for-syntax racket/runtime-path))
(define-runtime-path images "images")
(require "./image-dir-loader.rkt")


(define (local-bitmap s)
  (bitmap (~a (path->string images) "/" s)))

;Loads and defines constants for everything in ./images
(def-icons "./images" local-bitmap)


(provide question-mark)
(define question-mark (scale
                       (text "?")
                       5))

(provide big-tshirt-joke)
(define big-tshirt-joke (local-bitmap "tshirt-joke.png"))

(define (thick-frame f)
  (cc-superimpose
   f
   (rectangle #:border-width 5
              (+ 10 (pict-width f))
              (+ 10 (pict-height f)))))

(define (bgify i color)
  (cc-superimpose
   
   (colorize
    (filled-rectangle (pict-width i)
                      (pict-width i))
    color)

   i))



(define brain-with-alg
  (cc-superimpose brain
                  (bgify
                   (thick-frame (scale flow-chart 0.5))
                   "white")
                  ))

(define brain-with-alg-2
  (cc-superimpose brain
                  (bgify
                   (thick-frame (scale flow-chart-2 0.5))
                   "white")
                  ))

(define brain-with-alg-3
  (cc-superimpose brain
                  (bgify
                   (thick-frame (scale system 0.5))
                   "white")
                  ))


(define computer-with-alg
  (cc-superimpose computer
                  (bgify
                   (thick-frame (scale flow-chart 0.5))
                   "white")
                  ))

(define computer-with-alg-2
  (cc-superimpose computer
                  (bgify
                   (thick-frame (scale flow-chart-2 0.5))
                   "white")
                  ))

(define computer-with-alg-3
  (cc-superimpose computer
                  (bgify
                   (thick-frame (scale system 0.5))
                   "white")
                  ))

(define computer-with-blob
  (cc-superimpose computer
                  (bgify
                   (thick-frame (scale blob 0.5))
                   "white")
                  ))


(define (io in
            (f brain)
            (out question-mark))
  (hc-append 10
             in
             (arrow 30 0)
             (thick-frame f)
             (arrow 30 0)
             out))