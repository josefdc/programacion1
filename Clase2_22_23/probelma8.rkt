#lang racket
; Calculamos la edad del feto cuya longitud es 28 cm
(define edad (round (/ (+ 6.7 28) 1.53)))

; Imprimimos el resultado
(displayln "La edad del feto es: ")
(display edad)
(newline)