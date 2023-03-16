#lang racket
;; Problema 9 Admitamos el costo de prodccion de un numero x de periodicos es
;; C(x) = 200000+400x pesos
;; cual es el costo de producir 30000 periodicos?
;;  cuantos periodicos se han producido si el costo total fue $520000

;; definamos multiplicacion

(define (multiplicacion x y)
(* x y)
)


;; definimos suma
(define (suma x y)
(+ x y)
)


;; definamos la funcion costo
(define (costo x)
(suma 200000 (multiplicacion 400 x)))


;; definamos la inversa al costo
(define (inversa-costos x)
(/ (- x 200000) 400)
)




;; definamos la funcion principal
(define (principal)
(display "Digite el numero de periodicos producidos: ")
(define periodicos (read))
(display "el costo de produccion es ")
(display (costo periodicos))
(newline)
(display "Cuanto dinero se ha gastado en produccion: ")
(define dinero (read))
(display "Se han producido ")
(display (inversa-costos dinero))
)
;; llamamos la funcion

(principal)