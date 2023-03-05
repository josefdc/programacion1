#lang racket
;; definimos la funcion multiplicacion
(define (multiplicacion a b)
  (* a b)
  )
;; definimos la funcion suma
(define (suma a b)
  (+ a b)
  )
;; definimos la funcion resta
(define (resta a b)
  (- a b)
  )
;; definimos la funcion division
(define (division a b)
  (/ a b)
  )
;;-------a----------
;;Figura1, Area de un cuadrado menos el area de un triangulo

;; definimos la funcion area de un cuadrado
(define (area-cuadrado a)
  (multiplicacion a a)
  )
;; definimos la funcion area de un triangulo
(define (area-triangulo b h) ;; h es la altura
  (division (multiplicacion b h) 2)
  )
;; definimos la funcion area de la figura
(define (area-figura a b h)
  (resta (area-cuadrado a) (area-triangulo b h))
  )
;; Probamos la funcion con los valores dados
(area-figura 4 3 2)
;;-------b----------
;;Figura2, Area de un cuadrado menos el area de un cuadrado menor con un circulo dentro


;; definimos la funcion area de un circulo
(define (area-circulo r)
  (multiplicacion 3.1416 (multiplicacion r r))
  )
;; area cuadrado menor
(define (area-cuadrado-menor a)
   (area-cuadrado a) 
  )
;; definimos la funcion area de la figura
(define (area-figura2 a r)
  (resta (area-cuadrado-menor a) (area-circulo r))
  )