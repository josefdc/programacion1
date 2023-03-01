#lang racket

;;- Los contadores siempre usan programas que calculan los impuestos basados en el pago de 
;;las personas. El impuesto que tienen que pagar es del 15 % del pago 
;;que hagan las personas. Hacer un programa que calcule dicho impuesto.

;Definimos la multiplicacion y el impuesto
(define (multiplicacion a b)
  (* a b))

(define (impuesto pago)
  (multiplicacion 0.15 pago))    

(define (principal)
  (display "Ingrese el pago: ")
  (newline)
  (define pago (read))
  (display "El impuesto es: ")
  (display (impuesto pago))
  (newline)
  (display "El pago es: ")
  (display (multiplicacion pago 0.85))
  (newline)
  (display "El pago total es: ")
  (display pago)
  (newline)
  (display "Gracias por su pago")
  (newline)
  (display "Vuelva pronto")
  (newline)
  (display "Fin del programa")
)
;; Llamamos a la funcion principal
(principal)