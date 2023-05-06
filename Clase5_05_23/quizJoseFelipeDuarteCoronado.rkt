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