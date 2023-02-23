#lang racket
(display "Ingrese el precio de compra del artículo: ")
(define precio-compra (read))

(define precio-venta (* (+ precio-compra (* precio-compra 0.3)) 1.0))

(display "El precio al que debe vender el artículo para obtener una ganancia del 30% es: ")
(display precio-venta)
(newline)
