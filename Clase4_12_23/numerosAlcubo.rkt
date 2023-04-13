#lang racket

;hacer un proagram que muestre hasta n numeros, luego muestre n ^2 y n ^3

; hagamos la funcion auxiliar que nos ayude a hacer el cuadrado

(define (cuadrado n) (* n n))

;hagamos la funcion auxiliar que nos ayude a hacer el cubo

(define (cubo n) (* n n n))

;hagamos la funcion que nos ayude a mostrar los numeros

(define (numeros2 n i)
  (cond [(>= i n)
         (display n)
         (display "\t ")
         (display (cuadrado n))
         (display "\t ")
         (display (cubo n))
         (newline)]
        [else (begin 
                (display i) 
                (display "\t ")
                (display (cuadrado i))
                (display "\t ")
                (display (cubo i))
                (newline)
                (numeros2 n (+ i 1))
                )]))
 

(numeros2 15 10)

;Ejercicio 2

; hacer un programa que sume la sucesion de numeros de 1 hasta n por ejmeplo si se ingresa 5 la suma 
; seria 1+2+3+4+5

; hagamos la funcion

(define (suma n)
  (cond [(= n 1) 1]
        [else (+ n (suma (- n 1)))]))

(suma 5)

; programa 3
(define (suma n sum)
  (cond [(= n 0) sum]
        [else (suma (- n 1) (+ n sum))]))

(suma 5 0)

;prueba de escritorio

;suma 5 0
;suma 4 5
;suma 3 9
;suma 2 12
;suma 1 14
;suma 0 15

;Ejercicio 3
; contar los numeros de n hasta m
; (contar 5 10 0) salida  5 
; (contar 8 3 0) salida 5

(define (contar n m cont)
    (cond
        [(< n m ) (contar (+ n 1) m (+ cont 1))]
        [(> n m ) (contar (- n 1) m (+ cont 1))]
        [else cont]))

(contar 5 10 0)

; pruebas de escritorio

;contar 5 10 0
;contar 6 10 1
;contar 7 10 2
;contar 8 10 3
;contar 9 10 4
;contar 10 10 5
(contar 8 3 0)
; prueba de escritorio
;contar 8 3 0
;contar 7 3 1
;contar 6 3 2
;contar 5 3 3
;contar 4 3 4
;contar 3 3 5


;Ejercicio 4
; hacer un programa que muestre los numeros pares de n hasta m
; (pares 5 10 0) salida  6 8 10
; (pares 8 3 0) salida 8 6 4

; funcion que nos ayude a saber si un numero es par o no

(define (par? n)
  (= (modulo n 2) 0))

; funcion que nos ayude a mostrar los numeros pares de n hasta m

(define (pares n m )

(pares 5 10 0)



