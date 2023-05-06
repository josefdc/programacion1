#lang racket

; Creación de vectores
(make-vector 5)                 ; Crea un vector de longitud 5 con elementos sin inicializar
(make-vector 5 #\q)             ; Crea un vector de longitud 5 con elementos inicializados al caracter 'q'
(make-vector 5 "abc")           ; Crea un vector de longitud 5 con elementos inicializados a la cadena "abc"
(vector 1 2 3 "hola" "*")       ; Crea un vector con elementos específicos (números, cadenas, caracteres)
(vector-length(vector 1 2 3 "hola" "*")) ; Obtiene la longitud del vector

;---------------------------------
; Agregando imágenes a vectores
(require (lib "image.ss""teachpack/htdp"))
(define a (vector 0 "1" (rectangle 100 10 'outline 'red) "casa")) ; Define un vector "a" con una imagen de rectángulo
a ; -> #(#0 "1" #<image> "casa")
(define bol (vector 0 "1" (circle 30 "solid" 'red) "c"))
bol ;-> #(#0 "1" #<image> "c")

; Vectores anidados: un vector dentro de otro vector
(require (lib "image.ss""teachpack/htdp"))
(define vec1 (vector 0 "1" "Hola" "amigos")) ; Define un vector "vec1"
(define vec2 (vector vec1 "UTP" (circle 30 "solid" 'red) "Pereira")) ; Define un vector "vec2" que contiene el vector "vec1"
vec2;-> #(#0 "1" "Hola" "amigos" "Pereira") 

;---------------------------------
; Accediendo a elementos de un vector usando (vector-ref NOMBRE_VECTOR POSICION)
(define vec (vector 12 "1" "Hola" "amigos")) ; Define un vector "vec"
(vector-ref vec 0); -> 12                    ; Obtiene el elemento en la posición 0 del vector "vec" (12)
(vector-ref vec 3); -> "amigos"              ; Obtiene el elemento en la posición 3 del vector "vec" ("amigos")

; Ejemplo de uso de string-length con elementos de un vector:
(string-length (vector-ref vec 3)) ;->6 ; Muestra la longitud de la cadena "amigos" (6)

; Ejemplo de operaciones con números en un vector:
(+ 10 (vector-ref vec 0)) ;-> 22 ; Suma 10 al elemento en la posición 0 del vector "vec" (12), obteniendo 22

;---------------------------------

; Modificar elementos de un vector usando (vector-set! Vector posicion nuevo-dato)
; Ejemplo:

(define vec2 (vector 12 "1" "Hola" "amigos")) ; Define un vector "vec2" para guardar un vector
(vector-set! vec2 0 876) ; Se ingresa 876 en la posición 0 del vector vec2
vec2 ; -> #(#876 "1" "Hola" "amigos") ; Se muestra el vector vec2 con el nuevo dato en la posición 0

; Ejemplo usando random
(vector-set! vec2 2 (+ (random 100) 1)) ; Se ingresa un número aleatorio entre 1 y 100 en la posición 2 del vector vec2
vec2 ;-> #(#876 "1" 1 "amigos") ; Se muestra el vector vec2 con el nuevo dato en la posición 2

;---------------------------------
; Ejemplo de funciones para llenar e imprimir un vector interactuando con el usuario
(define (imprimir-datos)
  (display "Introduzca la longitud del vector: ")
  (newline)
  (define vec (make-vector (read))) ; Crea un vector con la longitud especificada por el usuario
  (display "Ingrese los datos del vector: ")
  (newline)
  (llenar vec 0) ; Llama a la función llenar para ingresar los datos en el vector
  (mostar vec 0)) ; Llama a la función mostar para imprimir los datos del vector

; Función para llenar un vector con datos ingresados por el usuario
(define (llenar vec i)
  (if (< i (vector-length vec)) ; Verifica si el índice i está dentro de los límites del vector
      (begin
        (vector-set! vec i (read)) ; Ingresa el dato en la posición i del vector
        (llenar vec (+ i 1)) ; Llama a la función llenar recursivamente con el siguiente índice
        )))

; Función para mostrar los elementos de un vector separados por guiones
(define (mostar vec i)
  (if (< i (vector-length vec)) ; Verifica si el índice i está dentro de los límites del vector
      (begin
        (display (vector-ref vec i)) ; Muestra el dato en la posición i del vector
        (display "-") ; Muestra un guion para separar los elementos
        (mostar vec (+ i 1)) ; Llama a la función mostar recursivamente con el siguiente índice
        )))

;; Llamamos la funcion
(imprimir-datos)

;---------------------------------
; Ejemplo de funciones para llenar e imprimir un vector interactuando con el usuario
(define (imprimir-datos)
  (display "Introduzca la longitud del vector: ")
  (newline)
  (define vec (make-vector (read))) ; Crea un vector con la longitud especificada por el usuario
  (display "Ingrese los datos del vector: ")
  (newline)
  (llenar vec 0) ; Llama a la función llenar para ingresar los datos en el vector
  (newline)
  (display "Los elementos del vector son: ")
  (newline)
  (mostar vec 0) ; Llama a la función mostar para imprimir los datos del vector
  (newline)
  (display "La suma de los elementos del vector es: ")
  (display (sumar vec 0))) ; Llama a la función sumar para calcular la suma de los elementos del vector

; Función para llenar un vector con datos ingresados por el usuario
(define (llenar vec i)
  (if (< i (vector-length vec)) ; Verifica si el índice i está dentro de los límites del vector
      (begin
        (vector-set! vec i (read)) ; Ingresa el dato en la posición i del vector
        (llenar vec (+ i 1)) ; Llama a la función llenar recursivamente con el siguiente índice
        )))

; Función para mostrar los elementos de un vector separados por guiones
(define (mostar vec i)
  (if (< i (vector-length vec)) ; Verifica si el índice i está dentro de los límites del vector
      (begin
        (display (vector-ref vec i)) ; Muestra el dato en la posición i del vector
        (display "-") ; Muestra un guion para separar los elementos
        (mostar vec (+ i 1)) ; Llama a la función mostar recursivamente con el siguiente índice
        )))

; Función para sumar los elementos de un vector
(define (sumar vec i)
  (if (< i (vector-length vec)) ; Verifica si el índice i está dentro de los límites del vector
      (+ (vector-ref vec i) (sumar vec (+ i 1))) ; Suma el dato en la posición i del vector y llama a la función sumar recursivamente con el siguiente índice
      0)) ; Cuando el índice i llega al final del vector, retorna 0 para finalizar la suma recursiva
        
; Llamamos la función
(imprimir-datos)

;; Tarea:

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
