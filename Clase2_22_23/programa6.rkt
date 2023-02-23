#lang racket
;Suponga que se espera que un objeto de arte adquirido por $50.000 aumenten 
;su valor a una razón constante
;de $500 por año durante los próximos 40 años
;
; Definimos la función que predice el valor de la obra de arte
(define (valor-arte años)
  (+ (* años 500) 50000))

; a) Calculamos el valor de la obra de arte después de 40 años
(define valor-40 (valor-arte 40))
(displayln "Valor después de 40 años: " )
(display valor-40 );70000
(newline)

; b) Calculamos el valor de la obra de arte después de 31 años
(define valor-31 (valor-arte 31))
(displayln "Valor después de 31 años: " )
(display valor-31 );65500
(newline)
; c) Calculamos el número de años para que la obra de arte tenga un valor de $55.500
(define años-55k (/ (- 55500 50000 500) 500))
(displayln "Años para valor de $55.500: " )
(display años-55k);10 años
