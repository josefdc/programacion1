#lang racket
;; Llenar un vector de N hasta M y mostrarlo
;; Problema 1

(define (vect n m)
  (if (and (integer? n)(integer? m))
  (llenar n m (make-vector (+(- m n)1))0)
  "Error: Los parametros deben ser enteros"))



(define (llenar n m vec pos)
  (if (and (<= n m)(<= pos (vector-length vec)))
      (begin
        (vector-set! vec pos n)
        (llenar (+ n 1) m vec (+ pos 1))
        )
      (display vec)
      )
  )

(vect (read) (read)) 

;; Contar wl numero de pares e impares de un vector
;; Problema 2

(define (contar vec cp ci pos)
 (if (= pos )))
