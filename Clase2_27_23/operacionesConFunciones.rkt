#lang racket
;; funcion para sumar dos numeros
(define (sumar x y)
  (+ x y)
  )
;; funcion para restar dos numeros
(define (restar x y)
  (- x y)
  )
;; funcion para multiplicar dos numeros
(define (multiplicar x y)
  (* x y)
  )
;; funcion para dividir dos numeros
(define (dividir x y)
  (/ x y)
  )
;; funcion para calcular el cuadrado de un numero
(define (cuadrado x)
  (* x x)
  )
;; funcion para calcular el volumen de cilindro
(define (volumen-cilindro radio altura)
  (multiplicar (cuadrado radio) (multiplicar altura 3.1416))
  )
;; llamamos la funcion para calcular el volumen de cilindro
(volumen-cilindro 2 3) ; 37.6992

;; funcion para calcular el volumen de esfera
(define (volumen-esfera radio)
  (multiplicar (multiplicar (cuadrado radio) radio) (multiplicar 4/3 3.1416))
  )
;; llamaos la funcion para calcular el volumen de esfera
(volumen-esfera 2) ; 33.5104   

;; funcion para calcular el volumen de cono
(define (volumen-cono radio altura)
  (multiplicar (multiplicar (cuadrado radio) altura) (multiplicar 1/3 3.1416))
  )
;; llamamos la funcion para calcular el volumen de cono
(volumen-cono 2 3) ; 12.5664