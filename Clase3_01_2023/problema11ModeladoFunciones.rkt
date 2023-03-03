#lang racket
; Problema 11. Un fabricante determina que el ingreso R obtenido por la producción
; y venta de $x$ artículos está dado por la función: R=350 x-0,25 x^2
; a) Calcule el ingreso cuando se venden 100 artículos.
; b) Si el ingreso obtenido es $120.000$, determine la cantidad de artículos vendidos.

;; defininamos las operaciones que vamos a usar

;; definamos resta
(define (resta a b)
(- a b)
 )

;; definimos la suma
(define (suma a b)
(+ a b)
 )
;; definimos la multiplicacion
(define (multiplicacion a b)
(* a b)
 )
;; definimos la funcion de elevar un numero al cuadrado
(define (cuadrado a)
(multiplicacion a a)
 )

;; definiamos la funcion raiz cuadrada
(define (raiz-cuadrada a)
(sqrt a)
 )
;; definimos la funcion R, que es la funcion que nos da el ingreso
(define (R x)
(suma (multiplicacion 350 x) (multiplicacion -0.25 (cuadrado x)))
 )
; Funcion que calcula la catidad de articulos con el dinero recibido
(define (dinero x)
(resta 700 (multiplicacion 2 (raiz-cuadrada (resta 122500  x))))
)

;; Funcion principal

(define (principal)
(display "Ingrese la cantidad de articulos")
(define articulos (read))
(display "El ingreso es: ")
(display (R articulos))
(newline)
(display "Ingrese el dinero recibido")
(define dinero-recibido (read))
(display "la cantidad de articulos ")
(display (dinero dinero-recibido))
)
;; llamamos la funcion principal
(principal)
