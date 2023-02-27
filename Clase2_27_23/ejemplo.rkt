#lang racket
;; a function that elevates to two a number
(define (f x)
    (* x x)
)

(f 5)
(f 4)
(+ (f 5) (f 4))

;; a function that sum two numbers

(define (suma x y)
    (+ x y)
)

(suma 10 20)
