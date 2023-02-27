#lang racket
;; a function that calculate a absolute value

(define (f x)
    (abs x)
)
;; some values is 
(f -3) ;3

;; a function that rest 1 of a number

(define (g x)
    (- x 1)
)
;; some values is
(g 3) ;2

;; a function that calculate the denominator of a racional number

(define (h x)
    (denominator x)
)
;; some values is
(h 3/4) ;4

;; a function that elevete a number to the power of any number

(define (i x y)
    (expt x y)
)
;; some values is
(i 2 3) ;8

;; a funtion that calculate the remainder of a division

(define (j x y)
    (remainder x y)
)

;; a function that calculete the logarithm of a number

(define (k x)
    (log x)
)

;; a funtion that calculate the area of a circle

(define (circunferencia x)
    (* pi (expt x 2))
)

;; some values

(circunferencia 3) ;28.274333882308138