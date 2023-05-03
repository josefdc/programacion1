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


;--------------------------------------------------------------------------
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

; Función para imprimir un par de números entre paréntesis
(define (imprimir-par a b)
  (display "(")
  (display a)
  (display ",")
  (display b)
  (display ")"))

; Función auxiliar recursiva para generar todas las posibles combinaciones válidas de pares de números
; utilizando n pares de números, donde el primer número del par es menor o igual al segundo número.
(define (generar-pares n a b)
  (cond
    [(> a n) (newline)] ; Si a > n, termina la línea actual
    [(> b n) (generar-pares n (+ a 1) a)] ; Si b > n, pasa al siguiente valor de a y reinicia b
    [else     (imprimir-par a b) ; Imprime el par (a, b)     (generar-pares n a (+ b 1))])) ; Continúa con el siguiente valor de b

; Función principal que llama a la función auxiliar recursiva para generar todas las posibles combinaciones válidas
; de pares de números utilizando n pares de números, donde el primer número del par es menor o igual al segundo número.
(define (pares-validos n)
  (generar-pares n 1 1))

; Función principal que solicita al usuario un número entero y llama a la función para generar todas las posibles
; combinaciones válidas de pares de números utilizando n pares de números, donde el primer número del par es menor o igual al segundo número.
(define (principal)
  (display "Ingrese un número entero: ")
  (pares-validos (read)))

; Llamada a la función principal para comenzar a ejecutar el programa
(principal)

;--------------------------------------------------------------------------
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

;--------------------------------------------------------------------------
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
  (define a-prima (/ (+ a (/ x a)) 2)) ; Calcula la siguiente aproximación usando la fórmula del método de Newton
  (if (<= (abs (- a a-prima)) epsilon) ; Compara la diferencia absoluta entre la aproximación actual y la nueva con la tolerancia de error
      a-prima
      (raiz-newton-aux x a-prima epsilon))) ; Si la diferencia es mayor que la tolerancia de error, llama a la misma función con la nueva aproximación como argumento

; Función principal para calcular la raíz cuadrada
(define (raiz-newton x epsilon)
  (raiz-newton-aux x x epsilon)) ; Llama a la función auxiliar con la aproximación inicial como el valor de la raíz cuadrada

; Función main para solicitar los valores y mostrar la raíz cuadrada
(define (main)
  (display "Ingrese un número positivo x: ")
  (define x (read))
  (display "Ingrese una tolerancia de error ε: ")
  (define epsilon (read))
  (display "Raíz cuadrada: ")
  (display (round (* 10000 (raiz-newton x epsilon)))) ; Multiplica por 10000 y redondea el resultado para mostrar la raíz cuadrada con 4 decimales
  (display " (con precisión de 4 decimales)")
  (newline))

; Ejecutar la función main
(main)

;--------------------------------------------------------------------------
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



#lang racket

(define (print-spaces n)
  (cond
    [(<= n 0) (newline)]
    [else
     (display " ")
     (print-spaces (- n 1))]))

(define (print-triangles n)
  (cond
    [(<= n 0) (newline)]
    [else
     (display "*")
     (print-spaces (- n 1))
     (display "*")
     (print-triangles (- n 1))]))

(define (sierpinski-aux n row col)
  (cond
    [(= n 0) (display "*")]
    [(= (modulo (+ row col) 2) 0) (sierpinski-aux (- n 1) (/ row 2) (/ col 2))]
    [else (display " ")]))

(define (print-row n row)
  (cond


;--------------------------------------------------------------------------

; ;; Ejercicio 6
; La novia de Juan es apasionada por la programación en racket, y para darle una sorpresa, 
; este quiere diseñar un programa que muestre la primera letra de su nombre (Isabella) y mostrarla
;  en una pantalla de fondo para sorprenderla.

; Existe un pequeño problema, Juan no sabe de qué tamaño será la pantalla, pero el mínimo tamaño
;  para que se vea bien debe ser 25 pulgadas, y el maximo 50.

; Teniendo en cuenta que para 25 la letra I grande debe estar formada por 10 filas de I’s formadas
;  por 3 cada una.
; A partir de este tamaño, por cada pulgada el numero de filas aumentará en 1, así como por cada 3 
; pulgadas a partir de 25 se sumará una I a cada fila.

; Ejemplo:

; El  dia de la sorpresa, Juan digita en pulgadas 25, por lo que en el programa saldría de la
;  siguiente manera:

; III
; III
; III
; III
; III
; III
; III
; III
; III
; III

; Ejemplo 2:
; Si Juan digita 27, al correr el programa deberá salir lo siguiente:

; IIII
; IIII
; IIII
; IIII
; IIII
; IIII
; IIII
; IIII
; IIII
; IIII
; IIII
; IIII
; IIII

; FIN, si logras crear el programa, el plan maestro de Juan será un éxito. ¿ Que esperas para ayudarlo?
.

;Solucion

(define (dibujar-columna fila columna columnas)
  (cond
    [(< columna columnas)     ; Verifica si la columna actual es menor que el número total de columnas
     (display "I")            ; Dibuja una "I" en la pantalla
     (dibujar-columna fila (+ columna 1) columnas)] ; Llama a la misma función para dibujar la siguiente columna
    [else (newline)]))        ; Si ya se han dibujado todas las columnas, pasa a la siguiente fila

(define (dibujar-fila fila filas columnas)
  (cond
    [(< fila filas)           ; Verifica si la fila actual es menor que el número total de filas
     (dibujar-columna fila 0 columnas) ; Dibuja una columna en la fila actual
     (dibujar-fila (+ fila 1) filas columnas)] ; Llama a la misma función para dibujar la siguiente fila
    ))

(define (calcular-filas tamano-pantalla)
  (+ 10 (- tamano-pantalla 25))) ; Calcula el número de filas a dibujar en función del tamaño de la pantalla

(define (calcular-columnas tamano-pantalla)
  (dibujar-fila 0 (calcular-filas tamano-pantalla) (calcular-columnas tamano-pantalla))) ; Llama a la función dibujar-fila para dibujar la letra "I"

(define (main)
  (display "Ingrese el tamaño de la pantalla en pulgadas (entre 25 y 50): ")
  (define tamano-pantalla (read)) ; Lee el tamaño de la pantalla que se ingresó
  (newline)
  (if (and (>= tamano-pantalla 25) (<= tamano-pantalla 50)) ; Verifica si el tamaño de la pantalla está dentro del rango permitido
      (dibujar-letra-i tamano-pantalla) ; Si está dentro del rango, dibuja la letra "I"
      (display "El tamaño de la pantalla ingresado no está en el rango permitido."))) ; Si no está dentro del rango, muestra un mensaje de error

(main) ; Llama a la función principal para comenzar a ejecutar el programa
  (dibujar-fila 0 (calcular-filas tamano-pantalla) (calcular-columnas tamano-pantalla))) ; Llama a la función dibujar-fila para dibujar la letra "I"

(define (main)
  (display "Ingrese el tamaño de la pantalla en pulgadas (entre 25 y 50): ")
  (define tamano-pantalla (read)) ; Lee el tamaño de la pantalla que se ingresó
  (newline)
  (if (and (>= tamano-pantalla 25) (<= tamano-pantalla 50)) ; Verifica si el tamaño de la pantalla está dentro del rango permitido
      (dibujar-letra-i tamano-pantalla) ; Si está dentro del rango, dibuja la letra "I"
      (display "El tamaño de la pantalla ingresado no está en el rango permitido."))) ; Si no está dentro del rango, muestra un mensaje de error

(main) ; Llama a la función principal para comenzar a ejecutar el programa


;--------------------------------------------------------------------------

;; ejercicio 7
; Ejercicio 
; Elabore un programa que sirva para calcular el máximo común divisor (MCD) de dos números:
; El Máximo Común Divisor o MCD se define como el mayor número que divide exactamente dos o más números, en el caso del
; ejercicio a plantear, dos.
; Pd: Para la función recursiva utilizar el aritmético REMAINDER.
; Ejemplo:
; El usuario Ingresa 12 como N1 y 20 como N2
; Resultado: la función debe dar como resultado 4, pues este es el número que divide a ambos sin dejar residuo.
; El usuario Ingresa 15 como N1 y 45 como N2
; Resultado: la función debe dar como resultado 15, pues este es el número que divide a ambos sin dejar residuo

;Solucion

#lang racket

; Función auxiliar para calcular el MCD de dos números
(define (mcd n1 n2)
  (if (= n2 0)
      n1
      (mcd n2 (remainder n1 n2))))

; Función principal
(define (main)
  (display "Ingrese el primer número: ")
  (define n1 (read))
  (display "Ingrese el segundo número: ")
  (define n2 (read))
  (display "El MCD es: ")
  (display (mcd n1 n2))
  (newline))

; Ejecutar la función principal
(main)

; Comentarios en el código:
; La función mcd utiliza recursividad para calcular el MCD utilizando la propiedad matemática
; que establece que el MCD de dos números es igual al MCD del segundo número y el resto de la
; división del primer número entre el segundo número. Esto se aplica recursivamente hasta que
; el segundo número sea cero, en cuyo caso se devuelve el primer número. La función principal
; main solicita al usuario dos números y utiliza la función mcd para calcular el MCD, que se
; muestra en pantalla.

;--------------------------------------------------------------------------
;Ejercicio 
; Hacer una funcion recursiva en racket que muestre los cuadrados de un número n y los de los números que se anteponen a este
; si es mayor a 0.
; Ejemplo:
; El Usuario le da el valor de 5 a n
; Al correr la función esta debe dar los cuadrados de 1,2,3,4 y 5.
; Siendo así, el resultado sería:
; ( 1 4 9 16 25)

;Solucion
#lang racket

; Función auxiliar para calcular y mostrar el cuadrado de un número
(define (mostrar-cuadrado n)
  (display (* n n))
  (display " "))

; Función recursiva para mostrar los cuadrados de los números de 1 a n
(define (mostrar-cuadrados n)
  (cond
    [(> n 0)
     (mostrar-cuadrados (- n 1))
     (mostrar-cuadrado n)]))

; Función principal
(define (main)
  (display "Ingrese un número: ")
  (define n (read))
  (display "Los cuadrados son: ")
  (mostrar-cuadrados n)
  (newline))

(main)
;--------------------------------------------------------------------------
; Ejercicio 9

; El profesor de Miguel necesita saber cuantos aprobaron el curso basándose en la nota del examen final, para ello, Miguel, que no
; lo presentó, es abordado por el profesor, quien le propone que diseñe un programa para ganar la nota, este se basa en lo
; siguiente:
; El usuario ingresará el nombre del estudiante, al frente de este aparecerá APROBADO, PENDIENTE o REPROBADO.
; Básese en lo siguiente:
; - En el colegio de Miguel los exámenes se ganan con una calificación mayor a 3.5, AUNQUE, si la calificación es mayor a 3 pero
; menor a 3.5, el profesor podrá elegir si ayudarle o no, por eso la calificación quedaría en pendiente.
; - Toda calificación menor a 3 será automáticamente reprobada.
; Ejemplo:
; El programa mostrará lo siguiente:
; Felipe: APROBADO
; Carlos: PENDIENTE
; Manuel: REPROBADO
  

 #lang racket

; Función para calcular el resultado (aprobado, pendiente o reprobado) de acuerdo a la calificación
(define (calcular-resultado calificacion)
  (cond
    [(> calificacion 3.5) "APROBADO"]
    [(and (> calificacion 3) (<= calificacion 3.5)) "PENDIENTE"]
    [else "REPROBADO"]))

; Función para mostrar el resultado del estudiante
(define (mostrar-resultado nombre calificacion)
  (display (string-append nombre ": " (calcular-resultado calificacion)))
  (newline))

; Función para leer el nombre del estudiante
(define (leer-nombre)
  (display "Ingrese el nombre del estudiante (presione Enter sin escribir nada para terminar): ")
  (read-line))

; Función para leer la calificación del estudiante
(define (leer-calificacion)
  (display "Ingrese la calificación del estudiante: ")
  (read))

; Función para procesar un estudiante y mostrar su resultado
(define (procesar-estudiante nombre)
  (if (equal? nombre "") ; Si el usuario presiona Enter sin escribir nada, termina el programa
      (display "Fin del programa.")
      (begin
        (mostrar-resultado nombre (leer-calificacion)) ; Lee la calificación y muestra el resultado
        (procesar-estudiante (leer-nombre))))) ; Vuelve a leer el nombre del siguiente estudiante

; Función principal para iniciar el programa
(define (main)
  (procesar-estudiante (leer-nombre))) ; Lee el nombre del primer estudiante y lo procesa

(main) ; Inicia el programa

;--------------------------------------------------------------------------

; Ejercicio 10
; El salario mínimo en Colombia se ubica en 1.000.000 Pesos colombianos, supongamos que de un sueldo n, hay que pagar un
; 20% de impuestos, hacer una función recursiva en racket que según el sueldo ingresado muestre este sin el 20% y abajo de
; este los numeros inferiores sin el 20% hasta llegar al sueldo mínimo menos el 20%, es decir 800.000.
; Ejemplo:
; El usuario digita 1500000,
; Al correr el programa este debe mostrar lo siguiente:
; 1200000
; 1199999.2
; 1199998.4
; 1199997.6
; Y así sucesivamente hasta que muestre el millón de pesos menos el 20% planteado

#lang racket

; Definir el salario mínimo y el porcentaje de impuestos como constantes
(define salario-minimo 1000000)
(define porcentaje-impuestos 0.2)

; Función para calcular el salario neto
(define (calcular-salario-neto salario)
  (* salario (- 1 porcentaje-impuestos)))

; Función recursiva para mostrar los salarios netos inferiores hasta llegar al salario mínimo menos el 20%
(define (mostrar-salarios-netos salario-neto)
  (cond
    ; Si el salario neto es mayor o igual al salario mínimo menos el 20%, se muestra y se llama a la función recursivamente
    [(>= salario-neto (* (- salario-minimo (* salario-minimo porcentaje-impuestos)) 1.0))
     (display salario-neto)
     (newline)
     ; Se reduce el salario neto en un 20% y se llama a la función recursivamente con el nuevo valor
     (mostrar-salarios-netos (- salario-neto 0.8))]))

; Función principal para solicitar el salario y mostrar los salarios netos inferiores
(define (main)
  (display "Ingrese su salario: ")
  (define salario (read))
  (newline)
  (define salario-neto (calcular-salario-neto salario))
  (mostrar-salarios-netos salario-neto))

; Ejecutar la función main
(main)
; --------------------------------------------------------------------------
; Ejercicio 11
; Imprime todas las combinaciones de números del 1 al `n` con suma `n`
; Dado un entero positivo n, imprime todas las combinaciones de números entre 1 y n teniendo suma n.

; ejmemplo n = 5
; 5
; 1 4
; 2 3
; 1 1 3
; 1 2 2
; 1 1 1 2
; 1 1 1 1 1

; Ejericio 12
; Realizar un código que cumpla la función de una división mediante restas sucesivas en racket.
; Función auxiliar para realizar la división mediante restas sucesivas
(define (division-aux dividend divisor contador)
  (if (< dividend divisor)
      contador
      (division-aux (- dividend divisor) divisor (+ contador 1))))

; Función principal de la división mediante restas sucesivas
(define (division dividend divisor)
  (if (= divisor 0)
      (error "La división por cero no está definida")
      (division-aux dividend divisor 0)))

; Función para ejecutar el programa
(define (main)
  (display "Ingrese el dividendo: ")
  (define dividend (read))
  (display "Ingrese el divisor: ")
  (define divisor (read))
  (define resultado (division dividend divisor))
  (display "El resultado de la división es: ")
  (display resultado)
  (newline))

; Ejecutar el programa
(main)
; ; Ejercicio 13
; Encuentra todas las combinaciones posibles de palabras formadas desde el teclado del móvilDada una secuencia de números entre 2
; y 9, imprime todas las combinaciones posibles de palabras formadas desde el teclado del móvil que tiene alfabetos en inglés
; asociados a cada tecla


;Ejercicio 14
;Programe un método recursivo que transforme un número entero positivo a notación binaria

#lang racket

(define (entero-a-binario n)
  (if (= n 0)
      0
      (+ (modulo n 2)
         (* 10 (entero-a-binario (quotient n 2))))))

(define (main)
  (display "Ingrese un número entero positivo: ")
  (define n (read))
  (if (< n 0)
      (display "El número debe ser positivo.")
      (begin
        (display "La representación binaria del número es: ")
        (display (entero-a-binario n))
        (newline))))

(main)
