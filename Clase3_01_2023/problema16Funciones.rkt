#lang racket

;definimos multiplicacion

(define (multiplicacion a b)
 (* a b)
  )
; definiemos funcion que convierta dolares a pesos
(define (dolar a)
 (multiplicacion a 4800)
 )

;; definimos la funcion principal
(define (principal)
(display "ingrese la cantidad de dolares que desea convertir")
(newline)
(define dolares (read))
(display "la cantidad de dolares ingresados es:")
(display dolares)
(newline)
(display "la cantidad de pesos es:")
(display (dolar dolares))
(newline)
(display "gracias por usar el programa")
 )

(principal)