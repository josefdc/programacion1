#lang racket
;Ejercicio 1
;Imprimir los numeros pares del 100 al 1 de manera recursiva


(define (imprimir-pares n)
  (if (>= n 1)
      (begin
        (if (even? n)
            (begin
              (display n)
              (display " ")))
        (imprimir-pares (- n 1)))))

(imprimir-pares 100)

; Ejercicio 2
; Imprimir los cuadrados de los numeros del 1 al 10 de manera recursiva
(define (imprimir-cuadrados n)
  (if (<= n 10)
      (begin
        (display (* n n))
        (display " ")
        (imprimir-cuadrados (+ n 1)))))

(imprimir-cuadrados 1)

; Ejercicio 3
; Hacer una funcion que improma los numeor que hay del 1 al 100
; Frente a cada numero debe aparecer un cuadrado su cubo,su raiz y su raiz cubica

(define (cbrt n)
  (expt n (/ 1 3)))

(define (imprimir-numeros n)
  (if (<= n 100)
      (begin
        (display n)
        (display " ")
        (display (* n n))
        (display " ")
        (display (* n n n))
        (display " ")
        (display (sqrt n))
        (display " ")
        (display (cbrt n))
        (display " ")
        (newline)
        (imprimir-numeros (+ n 1)))))

(imprimir-numeros 1)

; Ejercicio 4
; Imprimir la suma total de los numeros impares del 1 al 100

(define (suma-impares n)
  (if (<= n 100)
      (if (odd? n)
          (+ n (suma-impares (+ n 1)))
          (suma-impares (+ n 1)))
      0)) ; Agrega el caso base para la suma cuando n es mayor que 100

 (suma-impares 1); Llama a la funcion

 ; Ejercicio 5
; imprimir la multiplicacion de los numeros cuadrados del 1 al 10

(define (multiplicacion-cuadrados n)
  (if (<= n 10)
      (* n n (multiplicacion-cuadrados (+ n 1)))
      1)) ; Agrega el caso base para la multiplicacion cuando n es mayor que 10

 (multiplicacion-cuadrados 1); Llama a la funcion

  ; Ejercicio 6
; Construir una función que reciba como parámetro un número N, y calcule la multiplicación de todos los enteros
; menores que el número recibido. Ej: Si la función recibe 4, la función debe devolver la suma=1*2*3. En este caso deben
; mostrar=6

(define (multiplicacion-menores n)
  (if (<= n 1)
      1
      (* n (multiplicacion-menores (- n 1)))))

(multiplicacion-menores 4)

; Ejercicio 7
; Construir un programa que dados dos enteros M y N diferentes, calcule la multiplicación de los cuadrados de los
; números que hay entre ellos, sin incluirlos. Ej: Si la función recibe un 1 y un 6, la función debe devolver la multiplicación total
; de: 4*9*16*25

(define (multiplicacion-cuadrados-entre m n)
  (if (<= m n)
      (* m m (multiplicacion-cuadrados-entre (+ m 1) n))
      1)) ; Agrega el caso base para la multiplicacion cuando m es mayor que n

 (multiplicacion-cuadrados-entre 1 6); Llama a la funcion

; Ejercicio 8
; Escriba un programa que calcule la suma de los números paresque existen entre dos números dados. Debe incluir
; ambos números. Ej: si se entran los números 3 y 8 la función debe devolver la suma total de: 4+6+8

(define (suma-pares-entre m n)
  (if (<= m n)
      (if (even? m)
          (+ m (suma-pares-entre (+ m 1) n))
          (suma-pares-entre (+ m 1) n))
      0)) ; Agrega el caso base para la suma cuando m es mayor que n

 (suma-pares-entre 3 8); Llama a la funcion

; Ejercicio 9
; Escriba una función que calcule cuantos números naturales hay entre 2 números dados, incluyéndolos. Por ejemplo si
; se entran los números 3 y 8, la función debe devolver: 6, pues hay 6 números del 3 al 8 así: 3,4,5,6,7,8.

(define (cantidad-entre m n)
  (if (<= m n)
      (+ 1 (cantidad-entre (+ m 1) n))
      0)) ; Agrega el caso base para la cantidad cuando m es mayor que n

 (cantidad-entre 3 8); Llama a la funcion

; Ejercicio 10
; Escriba un programa que calcule el promedio de los números impares que existen entre dos números dados. Debe
; considerar ambos números.

(define (promedio-impares-entre m n)
  (if (<= m n)
      (if (odd? m)
          (+ m (promedio-impares-entre (+ m 1) n))
          (promedio-impares-entre (+ m 1) n))
      0)) ; Agrega el caso base para la suma cuando m es mayor que n

 (promedio-impares-entre 3 8); Llama a la funcion

; Ejercicio 11
;  Hacer un programa que reciba un número.
; Si el número es menor o igual que 15: imprime los números del 1 al 50.
; Si el número es mayor que 15 y menor o igual que 30: imprime los números del 50 al 80.
; Si el número es mayor que 30: imprime los números del 80 al 1

(define (imprimir-numeros-entre n)
  (if (<= n 15)
      (imprimir-numeros-entre-1-50 1)
      (if (<= n 30)
          (imprimir-numeros-entre-50-80 50)
          (imprimir-numeros-entre-80-1 80))))

(define (imprimir-numeros-entre-1-50 n)
  (if (<= n 50)
      (begin
        (display n)
        (display " ")
        (imprimir-numeros-entre-1-50 (+ n 1)))))

(define (imprimir-numeros-entre-50-80 n)
  (if (<= n 80)
      (begin
        (display n)
        (display " ")
        (imprimir-numeros-entre-50-80 (+ n 1)))))

(define (imprimir-numeros-entre-80-1 n)
  (if (>= n 1)
      (begin
        (display n)
        (display " ")
        (imprimir-numeros-entre-80-1 (- n 1)))))

(imprimir-numeros-entre 31)

; ; Ejercicio 12
; Hacer un programa que reciba un número.
; Si el número es menor o igual que 15: imprime los números del 1 al 15 con sus factoriales.
; Si el número es mayor que 15 y menor o igual que 30: imprime los números del 15 al 30 con sus sumatorias.
; Si el número es mayor que 30: imprime los números del 30 al 40 con sus cuadrados
; Ejemplo 
; Factorial 5! = 120
; Sumatoria 5 = 15

(define (imprimir-numeros-entre-2 n)
  (if (<= n 15)
      (imprimir-numeros-entre-1-15 1)
      (if (<= n 30)
          (imprimir-numeros-entre-15-30 15)
          (imprimir-numeros-entre-30-40 30))))

(define (imprimir-numeros-entre-1-15 n)

  (if (<= n 15)
      (begin
        (display n)
        (display " ")
        (display "Factorial ")
        (display n)
        (display "! = ")
        (display (factorial n))
        (display " ")
        (imprimir-numeros-entre-1-15 (+ n 1)))))

(define (imprimir-numeros-entre-15-30 n)
  (if (<= n 30)
      (begin
        (display n)
        (display " ")
        (display "Sumatoria ")
        (display n)
        (display " = ")
        (display (suma-menores n))
        (display " ")
        (imprimir-numeros-entre-15-30 (+ n 1)))))

(define (imprimir-numeros-entre-30-40 n)
  (if (<= n 40)
      (begin
        (display n)
        (display " ")
        (display "Cuadrado ")
        (display n)
        (display " = ")
        (display (* n n))
        (display " ")
        (imprimir-numeros-entre-30-40 (+ n 1)))))
    
(imprimir-numeros-entre-2 31)

; Ejercicio 13
; Adivinar un numero con n oportunidades

#lang racket

; Función principal para iniciar el juego de adivinar un número con 'n' intentos.
; Llama a la función auxiliar 'adivinar-numero-aux' con el número de intentos y un número aleatorio entre 0 y 99.
(define (adivinar-numero n)
  (adivinar-numero-aux n (random 100)))

; Función auxiliar para manejar los intentos de adivinar el número.
; 'n' es el número de intentos restantes y 'm' es el número que se debe adivinar.
(define (adivinar-numero-aux n m)
  (if (<= n 0) ; Si no quedan intentos
      (display "Perdiste") ; Muestra el mensaje de que se ha perdido
      (begin ; Si aún quedan intentos
        (display "Adivina el numero: ")
        (adivinar-numero-aux-2 n m (read))))) ; Llama a la función auxiliar 'adivinar-numero-aux-2' con el valor leído

; Función auxiliar para comparar el número adivinado 'a' con el número objetivo 'm'.
; 'n' es el número de intentos restantes.
(define (adivinar-numero-aux-2 n m a)
  (if (= a m) ; Si el número adivinado es igual al número objetivo
      (display "Ganaste") ; Muestra el mensaje de que se ha ganado
      (begin ; Si el número adivinado no es igual al número objetivo
        (display "Te quedan ")
        (display (- n 1))
        (display " oportunidades")
        (newline)
        (adivinar-numero-aux (- n 1) m)))) ; Llama a 'adivinar-numero-aux' con un intento menos

; Llama a la función principal para iniciar el juego
(adivinar-numero 5)




; Ejercicio 14
; Lazamiento de monedas con n veces, determinar el numero de caras y sellos
#lang racket

; Función auxiliar que simula un lanzamiento de moneda y devuelve #t (verdadero) si es cara, y #f (falso) si es sello
(define (lanzar-moneda)
  (= (random 2) 0))

; Función auxiliar que lanza una moneda n veces y cuenta el número de caras y sellos de forma recursiva
(define (lanzar-moneda-n veces caras sellos)
  (if (= veces 0)
      (display-result caras sellos)
      (if (lanzar-moneda)
          (lanzar-moneda-n (- veces 1) (+ caras 1) sellos)
          (lanzar-moneda-n (- veces 1) caras (+ sellos 1)))))

; Función auxiliar para mostrar el resultado
(define (display-result caras sellos)
  (display "Caras: ")
  (display caras)
  (display ", Sellos: ")
  (display sellos)
  (newline))

; Función principal que pide al usuario el número de lanzamientos y muestra el resultado
(define (main)
  (display "Ingrese el número de lanzamientos de moneda: ")
  (define n (read))
  (lanzar-moneda-n n 0 0))

(main)

;problema 15
;Lanzamiento de dos dados n veces, determinar el numero determinar cuatas veces salen pares

#lang racket
; Función auxiliar que simula un lanzamiento de dado y devuelve un número aleatorio entre 1 y 6
(define (lanzar-dado)
  (+ 1 (random 6)))

; Función auxiliar que lanza dos dados n veces y cuenta el número de pares de forma recursiva
(define (lanzar-dados-n veces pares)
  (if (= veces 0)
      (display-result pares)
      (if (= (modulo (+ (lanzar-dado) (lanzar-dado)) 2) 0)
          (lanzar-dados-n (- veces 1) (+ pares 1))
          (lanzar-dados-n (- veces 1) pares))))


; Función auxiliar para mostrar el resultado
(define (display-result pares)
  (display "Pares: ")
  (display pares)
  (newline))

; Funcion auxiliar que muetre el numero del dado 1 y el numero del dado 2
(define (display-dados n1 n2)
  (display "Dado 1: ")
  (display n1)
  (display ", Dado 2: ")
  (display n2)
  (newline))

; Función principal que pide al usuario el número de lanzamientos y muestra el resultado
(define (main)
  (display "Ingrese el número de lanzamientos de dados: ")
  (define n (read))
  (lanzar-dados-n n 0))
  (display-dados n1 n2)

(main)
