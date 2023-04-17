#lang racket

; Hacer un programa que reciba un numero

; Si el numero es menor o igual que 15 imprimir los numeros del 1 al 15
; Si el numero es mayor que 15 y menor o igual que 30 impreme los numeros del 15 al 30
; Si el numero es mayor que 30 y menor o igual que 40 impreme los numeros del 30 al 40



(define (imprimir-numeros numero)
  (cond
    [(<= numero 15) (imprimir-numeros-1-15 1)]
    [(<= numero 30) (imprimir-numeros-15-30 15)]
    [(<= numero 40) (imprimir-numeros-30-40 30)]
    [else (display "El numero no esta en el rango")])
  )

(define (imprimir-numeros-1-15 numero)
  (if (<= numero 15)
      (begin
        (display numero)
        (display " ")
        (imprimir-numeros-1-15 (+ numero 1)))
      (display " ")))

(define (imprimir-numeros-15-30 numero)
  (if (<= numero 30)
      (begin
        (display numero)
        (display " ")
        (imprimir-numeros-15-30 (+ numero 1)))
      (display " ")))

(define (imprimir-numeros-30-40 numero)
  (if (<= numero 40)
      (begin
        (display numero)
        (display " ")
        (imprimir-numeros-30-40 (+ numero 1)))
      (display " ")))

(define (main)
  (display "Ingrese un numero: ")
  (define numero (read))
  (imprimir-numeros numero))

(main)



    