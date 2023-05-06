#lang racket

; Llenar un vector desde N hasta M y mostrarlo
; Problema 1

(define (crear-vector n m)
  (if (and (integer? n) (integer? m))
      (llenar-vector n m (make-vector (+ (- m n) 1)) 0)
      "Error: Los parametros deben ser enteros"))

(define (llenar-vector n m vec pos)
  (if (and (<= n m) (<= pos (vector-length vec)))
      (begin
        (vector-set! vec pos n)
        (llenar-vector (+ n 1) m vec (+ pos 1)))
      (display vec)))

(crear-vector (read) (read))

;-----------------------------------------------------------------------------
; Contar el número de pares e impares de un vector
; Problema 2

(define (contar-pares-impares vec contador-pares contador-impares posicion)
  (if (= posicion (vector-length vec))
      (begin
        (display "Pares: ")
        (display contador-pares)
        (newline)
        (display "Impares: ")
        (display contador-impares))
      (if (= (remainder (vector-ref vec posicion) 2) 0)
          (contar-pares-impares vec (+ contador-pares 1) contador-impares (+ posicion 1))
          (if (not (= (remainder (vector-ref vec posicion) 2) 0))
              (contar-pares-impares vec contador-pares (+ contador-impares 1) (+ posicion 1))))))

(contar-pares-impares (read) 0 0 0)

;-----------------------------------------------------------------------------
; Problema 3
; Colocar en dos vectores los números pares y los impares

; Función principal para leer datos del usuario y mostrar resultados
(define (vector-principal)
  (begin
    (display "Ingrese el tamaño del vector")
    (newline)
    (define vec (make-vector (read)))
    (display "Ingrese cada uno de los datos")
    (newline)
    (llenar-vector vec 0)
    (newline)
    (display "Vector Principal: ")
    (display vec)
    (newline)
    (display "Vector con los digitos pares: ")
    (vector-pares (make-vector (contar-pares vec 0 0)) 0 vec 0)
    (newline)
    (display "Vector con los digitos impares: ")
    (vector-impares (make-vector (contar-impares vec 0 0)) 0 vec 0)))

; Función para llenar un vector con datos ingresados por el usuario
(define (llenar-vector v pos)
  (if (< pos (vector-length v))
      (begin
        (vector-set! v pos (read))
        (llenar-vector v (+ pos 1)))))

; Función para contar la cantidad de números pares en un vector
(define (contar-pares vec pos con)
  (if (= pos (vector-length vec))
      con
      (if (= (remainder (vector-ref vec pos) 2) 0)
          (contar-pares vec (+ pos 1) (+ con 1))
          (contar-pares vec (+ pos 1) con))))

; Función para contar la cantidad de números impares en un vector
(define (contar-impares vec pos con)
  (if (= pos (vector-length vec))
      con
      (if (not (= (remainder (vector-ref vec pos) 2) 0))
          (contar-impares vec (+ pos 1) (+ con 1))
          (contar-impares vec (+ pos 1) con))))

; Función para llenar un vector con números pares de otro vector
(define (vector-pares vec-pares pos1 vec pos2)
  (if (= pos1 (vector-length vec-pares))
      (display vec-pares)
      (if (= (remainder (vector-ref vec pos2) 2) 0)
          (begin
            (vector-set! vec-pares pos1 (vector-ref vec pos2))
            (vector-pares vec-pares (+ pos1 1) vec (+ pos2 1)))
          (vector-pares vec-pares pos1 vec (+ pos2 1)))))

; Función para llenar un vector con números impares de otro vector
(define (vector-impares vec-impares pos1 vec pos2)
  (if (= pos1 (vector-length vec-impares))
      (display vec-impares)
      (if (not (= (remainder (vector-ref vec pos2) 2) 0))
          (begin
            (vector-set! vec-impares pos1 (vector-ref vec pos2))
            (vector-impares vec-impares (+ 1 pos1) vec (+ pos2 1)))
          (vector-impares vec-impares pos1 vec (+ pos2 1)))))

(vector-principal)

;-----------------------------------------------------------------------------
; Problema 4
; Contar el número de primos en un vector

; Función para verificar si un número es primo
(define (es-primo num divisor contador)
  (if (and (= divisor (+ num 1)) (= contador 2))
      num
      (if (and (<= divisor num) (= (remainder num divisor) 0))
          (es-primo num (+ divisor 1) (+ contador 1))
          (if (and (<= divisor num) (not (= (remainder num divisor) 0)))
              (es-primo num (+ divisor 1) contador)
              0))))

; Función para contar los números primos en un vector
(define (contar-primos-vector vec pos contador)
  (if (= pos (vector-length vec))
      (display contador)
      (if (and (< pos (vector-length vec)) (= (es-primo (vector-ref vec pos) 1 0) (vector-ref vec pos)))
          (contar-primos-vector vec (+ pos 1) (+ contador 1))
          (contar-primos-vector vec (+ pos 1) contador))))

(contar-primos-vector (read) 0 0)

;-----------------------------------------------------------------------------
; Problema 5
; Llenar un vector con la serie de Fibonacci

; Función para llenar un vector con la serie de Fibonacci
(define (llenar-fibonacci vec pos)
  (if (= pos (vector-length vec))
      vec
      (begin
        (if (< pos 2)
            (vector-set! vec pos pos) ; Los primeros dos elementos de la serie son 0 y 1
            (vector-set! vec pos (+ (vector-ref vec (- pos 1)) (vector-ref vec (- pos 2)))))
        (llenar-fibonacci vec (+ pos 1)))))

; Función para crear un vector con la serie de Fibonacci de longitud n
(define (fibonacci n)
  (if (and (integer? n) (>= n 0))
      (llenar-fibonacci (make-vector n) 0)
      "Error: El parámetro debe ser un entero no negativo"))

(fibonacci (read))
