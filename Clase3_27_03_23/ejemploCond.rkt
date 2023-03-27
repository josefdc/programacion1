#lang racket

; La letra de la nota de un estudiante dado el promedio se asigna de acuerdo a la siguiente tabla:

; Promedio                            Letra de la Nota

; promedio >= 90.0                        A

; promedio >= 80.0 y promedio < 90.0      B

; promedio >= 70.0 y promedio < 80.0      C

; promedio >= 60.0 y promedio < 70.0      D

; promedio <60.0                          F         

(define (promedio p)
(cond ((>= p 90.0) 'A)
      ((>= p 80.0) 'B)
      ((>= p 70.0) 'C)
      ((>= p 60.0) 'D)
      (else 'F)))

(define (nota)
(display "escriba su promedio de 0 a 100: ")
(newline)
(define p (read))
(display "su nota es: ")
(display (promedio p))
(newline))

(nota)



