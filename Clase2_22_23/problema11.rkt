#lang racket
;; a) Calcule el ingreso cuando se venden 100 artículos.
(display "Ingrese la cantidad de artículos vendidos: ")
(define x-venta (read))
(define r-venta (- (* 350 x-venta) (* 0.25 (expt x-venta 2))))
(display "El ingreso obtenido es: ")
(display r-venta)
(newline)

;; b) Si el ingreso obtenido es 120.000, determine la cantidad de artículos vendidos
(display "Ingrese el ingreso obtenido: ")
(define r-venta1 (read))
(define a-venta (/ (- (* -1 350) (sqrt (- (* 350 350) (* -4 -0.25 r-venta1)))) (* 2 -0.25)))
(display "La cantidad de artículos vendidos es: ")
(display a-venta)
(newline)
