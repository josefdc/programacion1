#lang racket

;; a function that caculate the volume of a cilinder

(define (cilinder-volume r h)
  (* pi (* r r) h)
  )
;; some values
(cilinder-volume 5 3) ; 235.61944901923448

;; a function that caculate the volume of a cone 
 (define (cone-volume r h)
   (/ (* pi (* r r) h) 3)
   )

;; some values
(cone-volume 5 3) ; 78.53981633974483

;; a function that converts farenheit to celcius

(define (farenheit-to-celcius f)
  (/ (- f 32) 5/9)
  )

;; some values
(farenheit-to-celcius 38) ; 3.3333333333333335

;; a function that calculate slope of a straight line

(define (slope x1 y1 x2 y2)
  (/ (- y2 y1) (- x2 x1))
  )
;; some values 
(slope 1 2 3 4) ; 1.0