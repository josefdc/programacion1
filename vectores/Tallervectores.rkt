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

;;QUIZ Jose Felipe Duarte Coronado

; Invertir un vector en otro vector
; Ejemplo: vec#(11,2,3,4,5,60) vec_inv#(60,5,4,3,2,11)

; Función principal para leer datos del usuario y mostrar resultados
(define (vector-invertido)
  (begin
    (display "Ingrese el tamaño del vector")
    (newline)
    (define vec (make-vector (read)))
    (display "Ingrese cada uno de los datos")
    (newline)
    (llenar-vector vec 0)
    (newline)
    (display "Vector original: ")
    (display vec)
    (newline)
    (display "Vector invertido: ")
    (display (invertir-vector vec))))

; Función para llenar un vector con datos ingresados por el usuario
(define (llenar-vector v pos)
  (if (< pos (vector-length v))
      (begin
        (vector-set! v pos (read))
        (llenar-vector v (+ pos 1)))))

; Función para invertir un vector en otro vector
(define (invertir-vector vec)
  (invertir-vector-aux vec (make-vector (vector-length vec)) (sub1 (vector-length vec)) 0))

; Función auxiliar para invertir el vector
(define (invertir-vector-aux vec vec-inv pos-orig pos-inv)
  (if (>= pos-orig 0)
      (begin
        (vector-set! vec-inv pos-inv (vector-ref vec pos-orig))
        (invertir-vector-aux vec vec-inv (sub1 pos-orig) (+ pos-inv 1)))
      vec-inv))

(vector-invertido)

;-----------------------------------------------------------------------------
; Problema 2
; Sumar dos vectores y colocar el resultado en un tercer vector
; Ejemplo: vec1#(1,2,3,4,5) vec2#(6,7,8,9,10) vec3#(7,9,11,13,15)

; Función principal para leer datos del usuario y mostrar resultados
(define (suma-vectores)
  (begin
    (display "Ingrese el tamaño de los vectores")
    (newline)
    (define n (read))
    (define vec1 (make-vector n))
    (define vec2 (make-vector n))
    (display "Ingrese los elementos del primer vector")
    (newline)
    (llenar-vector vec1 0)
    (display "Ingrese los elementos del segundo vector")
    (newline)
    (llenar-vector vec2 0)
    (newline)
    (define vec3 (sumar-vectores-aux vec1 vec2 n))
    (display "Vector 1: ")
    (display vec1)
    (newline)
    (display "Vector 2: ")
    (display vec2)
    (newline)
    (display "Vector suma: ")
    (display vec3)))

; Función para llenar un vector con datos ingresados por el usuario
(define (llenar-vector v pos)
  (if (< pos (vector-length v))
      (begin
        (vector-set! v pos (read))
        (llenar-vector v (+ pos 1)))))

; Función para sumar dos vectores y almacenar el resultado en un tercer vector
(define (sumar-vectores-aux vec1 vec2 n)
  (define vec3 (make-vector n))
  (sumar-vectores-rec vec1 vec2 vec3 0)
  vec3)

; Función recursiva para sumar elementos de los vectores y guardarlos en el tercer vector
(define (sumar-vectores-rec vec1 vec2 vec3 pos)
  (if (< pos (vector-length vec1))
      (begin
        (vector-set! vec3 pos (+ (vector-ref vec1 pos) (vector-ref vec2 pos)))
        (sumar-vectores-rec vec1 vec2 vec3 (+ pos 1)))))

(suma-vectores)

;;-----------------------------------------------------------------------
; Problema 3
; Llenar un vector de tamaño n con números de 1 al 5 y contar cuántas veces se repite cada número
; Ejemplo:
; n = 9
; #(1,1,1,1,5,5,1,3,4)
; 1 se repite 5
; 2 se repite 0
; 3 se repite 1
; 4 se repite 1
; 5 se repite 2

; Función principal para leer datos del usuario y mostrar resultados
(define (contar-repeticiones)
  (display "Ingrese el tamaño del vector")
  (newline)
  (llenar-vector (make-vector (read)) 0))

; Función para llenar un vector con datos ingresados por el usuario
(define (llenar-vector v pos)
  (cond
    [(< pos (vector-length v))
     (display "Ingrese un número entre 1 y 5: ")
     (validar-numero v pos (read))]

    [else
     (display "Vector: ")
     (display v)
     (newline)
     (contar-numeros v 1)]))

; Función auxiliar para validar y guardar el número ingresado
(define (validar-numero v pos num)
  (if (and (>= num 1) (<= num 5))
      (begin
        (vector-set! v pos num)
        (llenar-vector v (+ pos 1)))
      (begin
        (display "Error: Solo números entre 1 y 5.")
        (newline)
        (llenar-vector v pos))))

; Función para contar la cantidad de veces que se repiten los números del 1 al 5 en el vector
(define (contar-numeros vec num)
  (if (<= num 5)
      (begin
        (display "Número ")
        (display num)
        (display " se repite ")
        (display (contar-ocurrencias vec num 0))
        (display " veces")
        (newline)
        (contar-numeros vec (+ num 1)))))

; Función auxiliar para contar la cantidad de veces que se repite un número en el vector
(define (contar-ocurrencias vec num pos)
  (if (= pos (vector-length vec))
      0
      (if (= (vector-ref vec pos) num)
          (+ 1 (contar-ocurrencias vec num (+ pos 1)))
          (contar-ocurrencias vec num (+ pos 1)))))

(contar-repeticiones)

;-----------------------------------------------------------------------------
; Problema 4
;Llenar la serie de fibonacci en un vector de tamaño n
; Ejemplo:
; n = 10
; #(1,1,2,3,5,8,13,21,34,55)

; Función principal para leer datos del usuario y mostrar resultados
(define (fibonacci)
  (display "Ingrese el tamaño del vector")
  (newline)
  (display (fibonacci-aux (read))))

; Función para llenar un vector con datos ingresados por el usuario
(define (fibonacci-aux n)
  (define vec (make-vector n))
  (fibonacci-rec vec 0)
  vec)

; Función recursiva para llenar el vector con la serie de fibonacci
(define (fibonacci-rec vec pos)
  (if (< pos (vector-length vec))
      (begin
        (vector-set! vec pos (fibonacci-num pos))
        (fibonacci-rec vec (+ pos 1)))))
    
; Función para calcular el número de fibonacci en la posición n
(define (fibonacci-num n)
  (if (or (= n 0) (= n 1))
      1
      (+ (fibonacci-num (- n 1)) (fibonacci-num (- n 2)))))

(fibonacci)

;;-----------------------------------------------------------------------
; Problema 5
; Llenar un vector con los numeros primos
; Ejemplo:
; n = 10
; #(2,3,5,7,11,13,17,19,23,29)
; Problema 5
; Llenar un vector con los números primos
; Ejemplo:
; n = 10
; #(2,3,5,7,11,13,17,19,23,29)

; Función principal para leer datos del usuario y mostrar resultados
(define (vector-primos)
  (display "Ingrese el tamaño del vector: ")
  (newline)
  (llenar-primos (make-vector (read)) 0 2))

; Función para llenar el vector con números primos
; Parámetros:
; - vec: vector que se llenará con números primos
; - pos: posición actual en el vector
; - num: número a verificar si es primo
(define (llenar-primos vec pos num)
  (cond
    [(< pos (vector-length vec))
     (if (es-primo? num)
         (begin
           (vector-set! vec pos num)
           (llenar-primos vec (+ pos 1) (+ num 1)))
         (llenar-primos vec pos (+ num 1)))]

    [else
     (display "Vector de primos: ")
     (display vec)]))

; Función para determinar si un número es primo
; Parámetros:
; - num: número a verificar si es primo
(define (es-primo? num)
  (if (= num 2)
      #t
      (primo-aux num (- num 1))))

; Función auxiliar para determinar si un número es primo mediante la división
; Parámetros:
; - num: número a verificar si es primo
; - div: divisor actual
(define (primo-aux num div)
  (cond
    [(= div 1) #t]
    [(= (remainder num div) 0) #f]
    [else (primo-aux num (- div 1))]))

(vector-primos)

;; Calcular la mediana con vectores
 ;;Función principal para leer datos del usuario y mostrar resultados
(define (vector-media)
  (display "Ingrese el tamaño del vector: ")
  (newline)
  (define vec (make-vector (read)))
  (display "Ingrese cada uno de los datos")
  (newline)
  (llenar-vector vec 0)
  (newline)
  (define vec-ordenado (ordenar-vector vec 0))
  (display "Vector ordenado: ")
  (display vec-ordenado)
  (newline)
  (display "La media del vector es: ")
  (display (calcular-media vec-ordenado)))

; Función para llenar un vector con datos ingresados por el usuario
; Parámetros:
; - v: vector a llenar
; - pos: posición actual en el vector
(define (llenar-vector v pos)
  (if (< pos (vector-length v))
      (begin
        (vector-set! v pos (read))
        (llenar-vector v (+ pos 1)))))

; Función para ordenar un vector utilizando el algoritmo de selección (recursivo)
; Parámetros:
; - vec: vector a ordenar
; - i: índice actual
(define (ordenar-vector vec i)
  (if (< i (vector-length vec))
      (begin
        (ordenar-aux vec i (add1 i))
        (ordenar-vector vec (add1 i)))
      vec))  ; Devuelve el vector ordenado

; Función auxiliar para la ordenación (recursivo)
; Parámetros:
; - vec: vector a ordenar
; - i: índice actual
; - j: siguiente índice
(define (ordenar-aux vec i j)
  (if (< j (vector-length vec))
      (begin
        (if (> (vector-ref vec i) (vector-ref vec j))
            (swap vec i j))
        (ordenar-aux vec i (add1 j)))))

; Función para intercambiar dos elementos en un vector
; Parámetros:
; - vec: vector
; - i: primer índice
; - j: segundo índice
(define (swap vec i j)
  (define temp (vector-ref vec i)) ; Almacenar temporalmente el valor en la posición i
  (vector-set! vec i (vector-ref vec j)) ; Colocar el valor en la posición j en la posición i
  (vector-set! vec j temp)) ; Colocar el valor almacenado en temp (valor original de i) en la posición j

; Función para calcular la media de un vector ordenado
; Parámetros:
; - vec: vector ordenado
(define (calcular-media vec)
  (if (par? (vector-length vec))
      (calcular-media-par vec)
      (calcular-media-impar vec)))

; Función para determinar si un número es par
; Parámetros:
; - num: número a verificar
(define (par? num)
  (= (remainder num 2) 0))

; Función para calcular la media de un vector con longitud par
; Parámetros:
; - vec: vector ordenado con longitud par
(define (calcular-media-par vec)
  (/ (+ (vector-ref vec (/ (vector-length vec) 2))
         (vector-ref vec (- (/ (vector-length vec) 2) 1)))
     2))

; Función para calcular la media de un vector con longitud impar
; Parámetros:
; - vec: vector ordenado con longitud impar
(define (calcular-media-impar vec)
  (vector-ref vec (quotient (vector-length vec) 2)))

(vector-media)
;;------------------------------------------------------------------------------------------
;; Calcular la media con vectores
;; Función principal para leer datos del usuario y mostrar resultados
(define (vector-media)
  (display "Ingrese el tamaño del vector: ")
  (newline)
  (define vec (make-vector (read)))
  (display "Ingrese cada uno de los datos")
  (newline)
  (llenar-vector vec 0)
  (newline)
  (display "La media del vector es: ")
  (display (calcular-media vec)))

; Función para llenar un vector con datos ingresados por el usuario
; Parámetros:
; - v: vector a llenar
; - pos: posición actual en el vector
(define (llenar-vector v pos)
  (if (< pos (vector-length v))
      (begin
        (vector-set! v pos (read))
        (llenar-vector v (+ pos 1)))))

; Función para calcular la media de un vector
; Parámetros:
; - vec: vector
(define (calcular-media vec)
  (/ (sumar-elementos vec 0) (vector-length vec)))

; Función para sumar los elementos de un vector de manera recursiva
; Parámetros:
; - vec: vector
; - pos: posición actual en el vector
(define (sumar-elementos vec pos)
  (if (< pos (vector-length vec))
      (+ (vector-ref vec pos) (sumar-elementos vec (+ pos 1)))
      0))

(vector-media)
;;------------------------------------------------------------------------------------------
;; ;; Calcular la desviación respecto a la media con vectores
;; Función principal para leer datos del usuario y mostrar resultados
(define (vector-desviacion-media)
  (display "Ingrese el tamaño del vector: ")
  (newline)
  (define vec (make-vector (read)))
  (display "Ingrese cada uno de los datos")
  (newline)
  (llenar-vector vec 0)
  (newline)
  (define media (calcular-media vec))
  (display "La media del vector es: ")
  (display media)
  (newline)
  (display "La desviación respecto a la media del vector es: ")
  (display (calcular-desviacion-media vec media)))

; Función para llenar un vector con datos ingresados por el usuario
; Parámetros:
; - v: vector a llenar
; - pos: posición actual en el vector
(define (llenar-vector v pos)
  (if (< pos (vector-length v))
      (begin
        (vector-set! v pos (read))
        (llenar-vector v (+ pos 1)))))

; Función para calcular la media de un vector
; Parámetros:
; - vec: vector
(define (calcular-media vec)
  (/ (sumar-elementos vec 0) (vector-length vec)))

; Función para sumar los elementos de un vector de manera recursiva
; Parámetros:
; - vec: vector
; - pos: posición actual en el vector
(define (sumar-elementos vec pos)
  (if (< pos (vector-length vec))
      (+ (vector-ref vec pos) (sumar-elementos vec (+ pos 1)))
      0))

; Función para calcular la desviación respecto a la media de un vector
; Parámetros:
; - vec: vector
; - media: la media del vector
(define (calcular-desviacion-media vec media)
  (/ (sumar-diferencias-absolutas vec media 0) (vector-length vec)))

; Función para sumar las diferencias absolutas entre los elementos de un vector y su media
; Parámetros:
; - vec: vector
; - media: la media del vector
; - pos: posición actual en el vector
(define (sumar-diferencias-absolutas vec media pos)
  (if (< pos (vector-length vec))
      (+ (abs (- (vector-ref vec pos) media))
         (sumar-diferencias-absolutas vec media (+ pos 1)))
      0))

(vector-desviacion-media)

;;-----------------------------------------------------------------------------

;; Calcular la varianza con vectores
;; Función principal para leer datos del usuario y mostrar resultados
(define (vector-varianza)
  (display "Ingrese el tamaño del vector: ")
  (newline)
  (define vec (make-vector (read)))
  (display "Ingrese cada uno de los datos")
  (newline)
  (llenar-vector vec 0)
  (newline)
  (define media (calcular-media vec))
  (display "La media del vector es: ")
  (display media)
  (newline)
  (display "La varianza del vector es: ")
  (display (calcular-varianza vec media)))

; Función para llenar un vector con datos ingresados por el usuario
; Parámetros:
; - v: vector a llenar
; - pos: posición actual en el vector
(define (llenar-vector v pos)
  (if (< pos (vector-length v))
      (begin
        (vector-set! v pos (read))
        (llenar-vector v (+ pos 1)))))

; Función para calcular la media de un vector
; Parámetros:
; - vec: vector
(define (calcular-media vec)
  (/ (sumar-elementos vec 0) (vector-length vec)))

; Función para sumar los elementos de un vector de manera recursiva
; Parámetros:
; - vec: vector
; - pos: posición actual en el vector
(define (sumar-elementos vec pos)
  (if (< pos (vector-length vec))
      (+ (vector-ref vec pos) (sumar-elementos vec (+ pos 1)))
      0))


; Función para calcular la varianza de un vector
; Parámetros:
; - vec: vector
; - media: la media del vector
(define (calcular-varianza vec media)
  (/ (sumar-diferencias-cuadradas vec media 0) (vector-length vec)))

; Función para sumar las diferencias cuadradas entre los elementos de un vector y su media
; Parámetros:
; - vec: vector
; - media: la media del vector
; - pos: posición actual en el vector
(define (sumar-diferencias-cuadradas vec media pos)
  (if (< pos (vector-length vec))
      (+ (expt (- (vector-ref vec pos) media) 2)
         (sumar-diferencias-cuadradas vec media (+ pos 1)))
      0))

(vector-varianza)
;; ---------------------------------------------------------------------

;; Calcular la desviación estándar con vectores
;; Función principal para leer datos del usuario y mostrar resultados
(define (vector-desviacion-estandar)
  (display "Ingrese el tamaño del vector: ")
  (newline)
  (define vec (make-vector (read)))
  (display "Ingrese cada uno de los datos")
  (newline)
  (llenar-vector vec 0)
  (newline)
  (define media (calcular-media vec))
  (display "La media del vector es: ")
  (display media)
  (newline)
  (display "La desviación estándar del vector es: ")
  (display (calcular-desviacion-estandar vec media)))

; Función para llenar un vector con datos ingresados por el usuario
; Parámetros:
; - v: vector a llenar
; - pos: posición actual en el vector
(define (llenar-vector v pos)
  (if (< pos (vector-length v))
      (begin
        (vector-set! v pos (read))
        (llenar-vector v (+ pos 1)))))

; Función para calcular la media de un vector
; Parámetros:
; - vec: vector
(define (calcular-media vec)
  (/ (sumar-elementos vec 0) (vector-length vec)))

; Función para sumar los elementos de un vector de manera recursiva
; Parámetros:
; - vec: vector
; - pos: posición actual en el vector
(define (sumar-elementos vec pos)
  (if (< pos (vector-length vec))
      (+ (vector-ref vec pos) (sumar-elementos vec (+ pos 1)))
      0))


; Función para calcular la varianza de un vector
; Parámetros:
; - vec: vector
; - media: la media del vector
(define (calcular-varianza vec media)
  (/ (sumar-diferencias-cuadradas vec media 0) (vector-length vec)))

; Función para sumar las diferencias cuadradas entre los elementos de un vector y su media
; Parámetros:
; - vec: vector
; - media: la media del vector
; - pos: posición actual en el vector
(define (sumar-diferencias-cuadradas vec media pos)
  (if (< pos (vector-length vec))
      (+ (expt (- (vector-ref vec pos) media) 2)
         (sumar-diferencias-cuadradas vec media (+ pos 1)))
      0))
; Función para calcular la desviación estándar de un vector
; Parámetros:
; - vec: vector
; - media: la media del vector
(define (calcular-desviacion-estandar vec media)
  (sqrt (calcular-varianza vec media)))

(vector-desviacion-estandar)

;------------------------------------------------------------------------------------------------------

;; dado un vector con solo numero realizar la suma de sus elementos impares
(define (suma-impares vec)
  (suma-impares-aux vec 0 0))

(define (suma-impares-aux vec pos suma)
  (if (< pos (vector-length vec))
      (if (odd? (vector-ref vec pos))
          (suma-impares-aux vec (+ pos 1) (+ suma (vector-ref vec pos)))
          (suma-impares-aux vec (+ pos 1) suma))
      suma))
  
(define vec (make-vector 5))
(vector-set! vec 0 1)
(vector-set! vec 1 2)
(vector-set! vec 2 3)
(vector-set! vec 3 4)
(vector-set! vec 4 5)
(suma-impares vec)

 ;; dado un vector , hacer un programa que invierta sus datos y devuelva el vector invertido
 
