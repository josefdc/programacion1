#lang racket
(define (costo-produccion x)
(+ 200000 (* 400 x)))

; a) ¿Cuál es el costo de producir 30.000 periódicos?
(define costo-30k (costo-produccion 30000))
(displayln "Costo de producir 30,000 periódicos: $")
(display costo-30k)
(newline)

; b) ¿Cuántos periódicos se han producido si el costo total fue de $520.000?
(define x-520k (/ (- 520000 200000) 400))
(displayln "Número de periódicos producidos con un costo total de $520,000: ")
(display x-520k)