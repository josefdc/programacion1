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

; solucion alternativa con menos funciones auxiliares
#lang racket

(define (imprimir-rango numero)
  (cond
    [(<= numero 15) (imprimir-numeros 1 15)]
    [(<= numero 30) (imprimir-numeros 15 30)]
    [(<= numero 40) (imprimir-numeros 30 40)]
    [else (display "El numero no esta en el rango")])
  )

(define (imprimir-numeros inicio fin)
  (if (<= inicio fin)
      (begin
        (display inicio)
        (display " ")
        (imprimir-numeros (+ inicio 1) fin))
      (display " ")))

(define (main)
  (display "Ingrese un numero: ")
  (define numero (read))
  (imprimir-rango numero))

(main)
;; otro tipo de funcion
#lang racket

(define (imprimir-rango numero inicio fin)
  (if (<= inicio fin)
      (begin
        (display inicio)
        (display " ")
        (imprimir-rango numero (+ inicio 1) fin))
      (display " ")))

(define (main)
  (display "Ingrese un numero: ")
  (define numero (read))
  (cond
    [(<= numero 15) (imprimir-rango numero 1 15)]
    [(<= numero 30) (imprimir-rango numero 15 30)]
    [(<= numero 40) (imprimir-rango numero 30 40)]
    [else (display "El numero no esta en el rango")]))

(main)


;; problema 2
; Hacer un programa que calcule la suma de dos numero que existen
; Entre dos numeros dados, debe incluir ambos enteros
; Ejemplo, si entran 3 y 8 ls funcion debe devover la suma total de 3+4+5+6+7+8

#lang racket

(define (suma-numeros numero1 numero2)
  (if (<= numero1 numero2)
      (begin
        (display numero1)
        (display " ")
        (+ numero1 (suma-numeros (+ numero1 1) numero2)))
      (display " ")))

(define (main)
    (display "Ingrese un numero: ")
    (define numero1 (read))
    (display "Ingrese un numero: ")
    (define numero2 (read))
    (display "La suma es: ")
    (display (suma-numeros numero1 numero2)))

(main)

;; problema 3
