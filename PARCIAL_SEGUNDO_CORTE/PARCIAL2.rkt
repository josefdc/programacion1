; Ejercicio: Calcular la secuencia de números de 
;Fibonacci modificada.

; En este ejercicio, en lugar de calcular la secuencia de Fibonacci
;  regular (0, 1, 1, 2, 3, 5, 8, ...), se calculará una secuencia modificada en la que 
;  cada número es la suma de los dos números anteriores más su posición en la secuencia
;   (1-indexada). La secuencia comienza con 0 y 1 como los dos primeros elementos. 
;   Por ejemplo, el tercer elemento sería 0 + 1 + 3 = 4, el cuarto elemento sería 1 + 4 + 4 = 9, 
;   y así sucesivamente.

; Ejemplo 1:
; Entrada: 5
; Salida: 0, 1, 4, 9, 19

; Ejemplo 2:
; Entrada: 7
; Salida: 0, 1, 4, 9, 19, 37, 68

#lang racket

; Función auxiliar para calcular el siguiente número en la secuencia de Fibonacci modificada
(define (siguiente-fibonacci-modificado a b posicion)
  (+ a b posicion))

; Función auxiliar recursiva para calcular la secuencia de Fibonacci modificada y mostrarla
(define (fibonacci-modificado-aux n a b posicion)
  (cond
    [(= posicion n) (display a) (newline)]
    [else
     (begin
       (display a)
       (display ", ")
       (fibonacci-modificado-aux n b (siguiente-fibonacci-modificado a b (+ posicion 1)) (+ posicion 1)))]))

; Función principal para calcular y mostrar la secuencia de Fibonacci modificada
(define (fibonacci-modificado n)
  (fibonacci-modificado-aux n 0 1 1))

; Función main para solicitar el número y mostrar la secuencia de Fibonacci modificada
(define (main)
  (display "Ingrese el número: ")
  (define n (read))
  (display "Secuencia de Fibonacci modificada: ")
  (fibonacci-modificado n))

; Ejecutar la función main
(main)
;; Ejercicio 2
; Ejercicio: Generar todas las posibles combinaciones de pares de números válidos.

; Dado un número entero n, genera todas las posibles combinaciones de pares de números válidos 
; utilizando n pares de números, donde el primer número del par es menor o igual al segundo número.
;  Utiliza recursividad para resolver este problema.

; Ejemplo 1:
; Entrada: 2
; Salida: (1,1)(2,2), (1,2)(2,2)

; Ejemplo 2:
; Entrada: 3
; Salida: (1,1)(2,2)(3,3), (1,1)(2,3)(3,3), (1,2)(2,2)(3,3), (1,2)(2,3)(3,3)

; Este ejercicio requiere el uso de recursividad para generar las combinaciones válidas de pares de números.
;  Puedes abordar el problema utilizando una función auxiliar recursiva que construya las combinaciones válidas de 
;  pares de números de manera incremental, manteniendo un conteo de los números disponibles en el rango de 
;  1 a n, y asegurándote de que cada paso en la construcción mantenga la validez de la combinación de
;   pares de números (es decir, el primer número en el par siempre debe ser menor o igual al segundo número).

#lang racket

(define (imprimir-par a b)
  (display "(")
  (display a)
  (display ",")
  (display b)
  (display ")"))

(define (generar-pares n a b)
  (cond
    [(> a n) (newline)] ; Si a > n, termina la línea actual
    [(> b n) (generar-pares n (+ a 1) a)] ; Si b > n, pasa al siguiente valor de a y reinicia b
    [else
     (imprimir-par a b) ; Imprime el par (a, b)
     (generar-pares n a (+ b 1))])) ; Continúa con el siguiente valor de b

(define (pares-validos n)
  (generar-pares n 1 1))

(define (principal)
  (display "Ingrese un número entero: ")
  (pares-validos (read)))

(principal)
;ejercicio 3

; Ejercicio: Calcular la cantidad de dígitos en un número entero.

; Dado un número entero n, encuentra la cantidad de dígitos en el número utilizando recursividad. 
; No se permite el uso de listas, cadenas de caracteres ni funciones de conversión de tipos de datos.

; Ejemplo 1:
; Entrada: 123
; Salida: 3

; Ejemplo 2:
; Entrada: 56789
; Salida: 5

; Este ejercicio requiere el uso de recursividad para contar la cantidad de dígitos en un número entero.
;  Puedes abordar el problema utilizando una función recursiva que divida el número por 10 en cada 
;  llamada hasta que el número sea igual a 0. Lleva un contador que incremente en cada llamada recursiva.

; El desafío de este ejercicio radica en utilizar recursividad para contar los dígitos sin convertir el 
; número a una cadena de caracteres o lista y sin utilizar funciones de biblioteca para obtener la longitud.


#lang racket

; Función auxiliar para contar dígitos
(define (contar-digitos-aux n contador)
  (if (= n 0)
      contador
      (contar-digitos-aux (quotient n 10) (+ contador 1))))

; Función principal para contar dígitos
(define (contar-digitos n)
  (contar-digitos-aux n 0))

; Función main para solicitar el número y mostrar la cantidad de dígitos
(define (main)
  (display "Ingrese un número entero: ")
  (define n (read))
  (display "Cantidad de dígitos: ")
  (display (contar-digitos n))
  (newline))

; Ejecutar la función main
(main)

; Ejercicio 4
; Ejercicio: Calcular la raíz cuadrada de un número utilizando el método de aproximación de Newton.

; Dado un número positivo x y una tolerancia de error ε, calcula la raíz cuadrada de x utilizando el método de aproximación de Newton con recursión. No se permite el uso de listas ni funciones de biblioteca para calcular la raíz cuadrada directamente.

; El método de aproximación de Newton para calcular la raíz cuadrada de un número x es el siguiente:

;     Comienza con una estimación inicial a (por ejemplo, a = x).
;     Calcula la siguiente estimación a partir de la estimación actual utilizando la fórmula: a' = 0.5 * (a + x / a).
;     Si la diferencia absoluta entre a y a' es menor o igual que ε, devuelve a'.
;     De lo contrario, repite el proceso con a' como la nueva estimación.

; Ejemplo 1:
; Entrada: x = 25, ε = 0.0001
; Salida: 5.0000 (con precisión de 4 decimales)

; Ejemplo 2:
; Entrada: x = 2, ε = 0.0001
; Salida: 1.4142 (con precisión de 4 decimales)

; Este ejercicio requiere el uso de recursividad para calcular la raíz cuadrada de un número utilizando 
; el método de aproximación de Newton. Puedes abordar el problema utilizando una función recursiva que 
; realice las iteraciones del método de Newton, verificando la tolerancia de error en cada llamada recursiva.

; El desafío de este ejercicio radica en implementar el método de Newton con recursividad y en
;  garantizar que el algoritmo converja correctamente hacia la raíz cuadrada real dentro de la 
;  tolerancia de error especificada.
#lang racket

; Función auxiliar para calcular la raíz cuadrada usando el método de Newton
(define (raiz-newton-aux x a epsilon)
  (define a-prima (/ (+ a (/ x a)) 2))
  (if (<= (abs (- a a-prima)) epsilon)
      a-prima
      (raiz-newton-aux x a-prima epsilon)))

; Función principal para calcular la raíz cuadrada
(define (raiz-newton x epsilon)
  (raiz-newton-aux x x epsilon))

; Función main para solicitar los valores y mostrar la raíz cuadrada
(define (main)
  (display "Ingrese un número positivo x: ")
  (define x (read))
  (display "Ingrese una tolerancia de error ε: ")
  (define epsilon (read))
  (display "Raíz cuadrada: ")
  (display (round (* 10000 (raiz-newton x epsilon))))
  (display " (con precisión de 4 decimales)")
  (newline))

; Ejecutar la función main
(main)

; ; Ejercicios 5 

; Ejercicio: Generar un patrón de triángulo de Sierpinski utilizando recursión.

; Dado un nivel de profundidad n, imprime un patrón de triángulo de Sierpinski utilizando recursión. 
; El triángulo de Sierpinski es un fractal que se crea dividiendo un triángulo equilátero en 4 
; triángulos equiláteros más pequeños, y luego haciendo lo mismo con los 3 triángulos equiláteros
;  resultantes (sin el triángulo central) de forma recursiva. Puedes representar el triángulo de
;   Sierpinski utilizando caracteres de texto, como asteriscos (*) o cualquier otro símbolo.

; Ejemplo 1 (n = 1):

;  *
; * *

; Ejemplo 2 (n = 2):
;    *   
;   * *  
;  *   * 
; * * * *

; Ejemplo 3 (n = 3):


;        *       
;       * *      
;      *   *     
;     * * * *    
;    *       *   
;   * *     * *  
;  *   *   *   * 
; * * * * * * * *

; Este ejercicio requiere el uso de recursión para crear un patrón de triángulo de Sierpinski 
; de n niveles de profundidad. Puedes abordar el problema utilizando una función recursiva que divida 
; el triángulo en triángulos más pequeños, imprimiendo cada triángulo equilátero en función de su posición y nivel de profundidad.

; El desafío de este ejercicio radica en implementar la recursión y en garantizar que el patrón del
;  triángulo de Sierpinski se genere correctamente para cada nivel de profundidad dado. Además, deberás
;   manejar el formato de texto y la alineación para que el resultado se vea como un patrón de triángulo.
