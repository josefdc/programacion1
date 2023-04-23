#lang racket
;; Taller 2

;;------EJERCICIO 1------
; Calcular el factorial de un numero utulizando (cond y recursion)

; Funcion (factorial n) = 1* 2* 3 *4 *n
; ejemplo: (factorial 0) = 1
          ;(factorial 1) = 1
          ;(factorial 2) = 1*2 = 2
          ;(factorial 3) = 1*2*3 = 6
          ;(factorial 4) = 1*2*3*4 = 24

(define (factorial n)
    (cond [(= n 0) 1]
            [else (* n (factorial (- n 1)))]))

(factorial 4) ; 24

;;------EJERCICIO 2------
; Calcular la potencia de un numero sin usar "expt"

; Funcion (potencia n m) = n^m
; ejemplo: (potencia 2 0) = 1
          ;(potencia 2 1) = 2
          ;(potencia 2 2) = 2*2 = 4
          ;(potencia 2 3) = 2*2*2 = 8
          ;(potencia 2 4) = 2*2*2*2 = 16

(define (potencia n m)
    (cond [(= m 0) 1]
            [else (* n (potencia n (- m 1)))]))

(potencia 2 4) ; 16
;;--Ejercicio 3--
;; Calcuar la siguiente secuencia de numeros
;; Funcion (secuencia n) = 2^0 + 2^1 + 2^2 + 2^3 + ... + 2^n

; EJEMPLO: (secuencia 2) = 2^0 + 2^1 + 2^2 = 7
;          (secuencia 3) = 2^0 + 2^1 + 2^2 + 2^3 = 15

(define (secuencia n)
    (cond [(= n 0) 1]
            [else (+ (potencia 2 n) (secuencia (- n 1)))]))

(secuencia 3) ; 15

;;--Ejercicio 4--
;; Sumar dos numeros recursivamente. No Usar el operador "+"
; Funcion (suma n m) = n + m
; EJEMPLO: (suma 2 3) = 2 + 3 = 5
;          (suma 3 4) = 3 + 4 = 7

(define (suma n m)
    (cond [(= m 0) n]
            [else (suma (+ n 1) (- m 1))]))

(suma 2 3) ; 5

;;--Ejercicio 5--

;; Multiplicar 2 numeros recursivamente. No Usar el operador "*"
; Funcion (multiplicacion n m) = n * m
; EJEMPLO: (multiplicacion 2 3) = 2 * 3 = 6
;          (multiplicacion 3 4) = 3 * 4 = 12

(define (multiplicacion n m)
    (cond [(= m 0) 0]
            [else (+ n (multiplicacion n (- m 1)))]))

(multiplicacion 2 3) ; 6


;;--Ejercicio 6--
;; Implementar la serie de (Fibonacci n), utilizando (cond y recursion)

; Funcion (fibonacci n) = 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181, 6765, 10946, 17711, 28657, 46368, 75025, 121393, 196418, 317811, 514229, 832040, 1346269, 2178309, 3524578, 5702887, 9227465, 14930352, 24157817, 39088169, 63245986, 102334155, 165580141, 267914296, 433494437, 701408733, 1134903170, 1836311903, 2971215073, 4807526976, 7778742049, 12586269025, 20365011074, 32951280099, 53316291173, 86267571272, 139583862445, 225851433717, 365435296162, 591286729879, 956722026041, 1548008755920, 2504730781961, 4052739537881, 6557470319842, 10610209857723, 17167680177565, 27777890035288, 44945570212853, 72723460248141, 117669030460994, 190392490709135, 308061521170129, 498454011879264, 806515533049393, 1304969544928657, 2111485077978050, 3416454622906707, 5527939700884757, 8944394323791464, 14472334024676221, 23416728348467685, 37889062373143906, 61305790721611591, 99194853094755497, 160500643816367088, 259695496911122585, 420196140727489673, 679891637638612258, 1100087778366101931, 177997941
; Ejemplo (fibonacci 0) = 0
;         (fibonacci 4) = 3
;         (fibonacci 6) = 8

(define (fibonacci n)
    (cond [(= n 0) 0]
            [(= n 1) 1]
            [else (+ (fibonacci (- n 1)) (fibonacci (- n 2)))]))

(fibonacci 6) ; 8

;;--Ejercicio 7--
;; Sumar los numeros desde  hasta n
; Funcion (sumaHasta n) = 1 + 2 + 3 + 4 + ... + n
; Ejemplo: (sumaHasta 5) = 1 + 2 + 3 + 4 + 5 = 15

(define (sumaHasta n)
    (cond [(= n 0) 0]
            [else (+ n (sumaHasta (- n 1)))]))

(sumaHasta 5) ; 15

;;--Ejercicio 8--
;; Implemtar la division en enteroa mediante restas sucesivas

; Funcion (DivisionEnEnteros dividiendo divisor resultado)
; Ejemplo: (DivisionEnEnteros 10 2 0) = 5
;          (DivisionEnEnteros 9 2 0) = 4

(define (DivisionEnEnteros dividiendo divisor resultado)
    (cond [(< dividiendo divisor) resultado]
            [else (DivisionEnEnteros (- dividiendo divisor) divisor (+ resultado 1))]))
        

(DivisionEnEnteros 10 2 0) ; 5

;;--Ejercicio 9--
;; Escribir un programa que permita jugar doble o nada :
;; El jugador apuesta una cantidad y tira una moneda. Si sale cara
;; Obtiene el doble de la cantidad apostada, si sale cruz lo pierde todo
;; El programa debe permitir ir jugando hasta que el jugador decida abondonar el juego
;; El programa debe sacar por pantalla el numero de jugadas y el total ganado por el 
;; jugador (si ha perdido debe ser una cantidad negativa)

(define (doble-o-nada)
    (define (jugar apuesta)
        (define (tirarMoneda)
            (random 2))
        (cond [(= (tirarMoneda) 0) (+ apuesta (jugar apuesta))]
                [else (- apuesta (jugar apuesta))]))
    (jugar 1))



