#lang racket

;; el crecimiento de un feto de mas de 12 semanas de gestacion se calcula mediante la funicon 
;; L(t)=1.53t-6.7, donde L es la longitud en cm y el es tiempo en semanas
;; Calcule la edad de un feto cuya longitud es N centimetros

;; definamos suma
(define (suma x y)
    (+ x y)
 )
;; definamos multiplicacion
(define (multiplicacion x y)
    (* x y)
 )

;; definamos la funcion L
(define (L t)
    (suma (multiplicacion 1.53 t) -6.7)
 )

;; defineamos la funcion inversa de L
(define (inversa-L L)
    (/ (- L -6.7) 1.53)
 )


 ;; definamos principal 
(define (principal)
    (display "Ingrese la longitud del feto en cm: ")
    (newline)
    (define longitud (read))
    (display "La edad del feto es: ")
    (display (inversa-L longitud))
    (display " semanas")
    (newline)
 )

(principal) 