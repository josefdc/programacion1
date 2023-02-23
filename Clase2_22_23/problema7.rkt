#lang racket
(display "Ingrese la cantidad de computadoras a producir: ")
(define x (read));12

(define costo-total (+ 5000 (* x 805)))

(display "El costo total de producir ")
(display x)
(display " computadoras en un día es: ")
(display costo-total) ;14660
(newline)

(define costo-unitario (/ costo-total x))

(display "El costo unitario por computadora en un día es: ")
(display costo-unitario);3665/3
