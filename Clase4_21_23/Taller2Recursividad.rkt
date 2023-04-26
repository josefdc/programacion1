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

;; Ejercicio 9
;; Este programa permite jugar al doble o nada.
;; El jugador apuesta una cantidad y lanza una moneda. Si sale cara,
;; obtiene el doble de la cantidad apostada. Si sale cruz, pierde todo.
;; El programa permite seguir jugando hasta que el jugador decida abandonar.
;; Al final, muestra el número de jugadas y el total ganado por el jugador
;; (si ha perdido, se muestra una cantidad negativa).

;; La función Moneda maneja la lógica del juego y mantiene un registro de la apuesta,
;; el resultado del lanzamiento de la moneda, el contador de jugadas y si el jugador desea seguir jugando.
(define (Moneda apuesta caraCruz contadorJugadas seguirJugando?)
  (if (= seguirJugando? 1)
      (if (= caraCruz 1)
          (begin
            (display "¡Doble!\n")
            (sleep 2)
            (display "¿Desea seguir jugando? (1 = Sí, 0 = No) ")
            (Moneda (* 2 apuesta) (random 2) (+ 1 contadorJugadas) (read))
            )
          (begin
            (display "Nada :(\n")
            (sleep 2)
            (display "Total de jugadas: ")
            (display contadorJugadas)(newline)
            (display "Su total ganado fue de: ")
            (display (- apuesta apuesta apuesta))
            )
          )
      (begin
        (display "Total de jugadas: ")
        (display contadorJugadas) (newline)
        (display "Su total ganado fue de: ")
        (display apuesta)
        )
      )
  )

;; La función principal inicia el juego e interactúa con el jugador para recibir la apuesta inicial.
(define (principal)
  (display "Este programa permite jugar doble o nada\n")
  (display "¿Cuánto desea apostar?: ")
  (define apuesta (read))
  (Moneda apuesta (random 2) 1 1)

; ejercicio 10
  ; Escribir un programa para jugar a adivinar un numero entre 1 y 10 (generado al azar por el ordenador)
  ; hasta acetarlo y contar el numero de aciertos y fallas

    ; Funcion (adivinar numero intentos)

    (define (adivinar numero intentos)
        (if (= intentos 0)
            (begin
                (display "Perdiste :(\n")
                (display "El numero era: ")
                (display numero)
                (newline)
                (display "Total de intentos: ")
                (display intentos)
                (newline)
                )
            (begin
                (display "Adivina el numero: ")
                (define numeroAdivinado (read))
                (if (= numero numeroAdivinado)
                    (begin
                        (display "Ganaste :)\n")
                        (display "Total de intentos: ")
                        (display intentos)
                        (newline)
                        )
                    (begin
                        (display "Fallaste :(\n")
                        (adivinar numero (- intentos 1))
                        )
                    )
                )
            )
        )


; Ejercicio 11
; uno de los usos mas habituales para los bucles condicionales es la validacion de entradas.
;Escribir un programa que pida una contraseña y permita tres intenton
;SI el usuario da la conseña correcta responde "Enhorabuena". En caso contrario
; el porgrama escribe "Lo siento, contraseña incorrecta" 

; Funcion (validarContrasena intentos)
(define (ValidarContrasena intentos)
    (if (= intentos 0)
        (begin
            (display "Lo siento, contraseña incorrecta\n")
            (display "Total de intentos: ")
            (display intentos)
            (newline)
            )
        (begin
            (display "Ingrese la contraseña: ")
            (define contrasena (read))
            (if (= contrasena "1234")
                (begin
                    (display "Enhorabuena\n")
                    (display "Total de intentos: ")
                    (display intentos)
                    (newline)
                    )
                (begin
                    (display "Contraseña incorrecta\n")
                    (ValidarContrasena (- intentos 1))
                    )
                )
            )
        )
    )

; Ejercicio 12
; escribir un programa que pida un numero numero y saque por panatalla
; su tabla de multiplcar hasta el 10

; Funcion (tablaMultiplicar numero multiplicador)
(define (tablaMultiplicar numero multiplicador)
    (if (= multiplicador 0)
        (begin
            (display "Total de intentos: ")
            (display multiplicador)
            (newline)
            )
        (begin
            (display numero)
            (display " x ")
            (display multiplicador)
            (display " = ")
            (display (* numero multiplicador))
            (newline)
            (tablaMultiplicar numero (- multiplicador 1))
            )
        )
    )

; funcion principal
(define (principal)
    (display "Ingrese un numero: ")
    (define numero (read))
    (tablaMultiplicar numero 10)
    )
; Ejercicio 13
; Escribir un programa que que lea una lista de numeros y determine
; cuantos son positivos, y cuantos son negativos

; Funcion (contarPositivosNegativos lista)


; ;Construir una función o un conjunto de funciones que
; permitan sumar todos los números enteros impares
; comprendidos entre 1 y un número n leído

; Funcion (sumarImpares numero)
(define (sumarImpares numero)
    (if (= numero 0)
        (begin
            (display "Total de numeros impares: ")
            (display 0)
            (newline)
            )
        (begin
            (if (= (modulo numero 2) 0)
                (begin
                    (sumarImpares (- numero 1))
                    )
                (begin
                    (display "Total de numeros impares: ")
                    (display numero)
                    (newline)
                    (sumarImpares (- numero 1))
                    )
                )
            )
        )
    )

; Funcion principal
(define (principal)
    (display "Ingrese un numero: ")
    (define numero (read))
    (sumarImpares numero)
    )

; Ejercicio 15
; 15. Construir una función o un conjunto de funciones que
; permitan sumar todos los números enteros pares que terminen
; en 4 comprendidos entre 1 y un número entero n leído.

; Funcion (sumarPares numero)
(define (sumarPares numero)
    (if (= numero 0)
        (begin
            (display "Total de numeros pares: ")
            (display 0)
            (newline)
            )
        (begin
            (if (= (modulo numero 2) 0)
                (begin
                    (if (= (modulo numero 10) 4)
                        (begin
                            (display "Total de numeros pares: ")
                     
; Funcion (calcularMedia lista)       (display numero)
                            (newline)
                            (sumarPares (- numero 1))
                            )
                        (begin
                            (sumarPares (- numero 1))
                            )
                        )
                    (begin
                        (sumarPares (- numero 1))
                        )
                    )
                (begin
                    (sumarPares (- numero 1))
                    )
                )
            )
        )
    )

; Funcion principal
(define (principal)
    (display "Ingrese un numero: ")
    (define numero (read))
    (sumarPares numero)
    )

;Ejercicio 16
; 16. Escribir un programa que lea desde teclado un valor N,
; seguido de N números, y calcule la media de los números
; positivos y la media de los números negativos


#lang racket

(define (procesar-numero n contador suma-pos suma-neg total-pos total-neg numero)
  (if (> numero 0)
      (leer-numeros n (+ contador 1) (+ suma-pos numero) suma-neg (+ total-pos 1) total-neg)
      (leer-numeros n (+ contador 1) suma-pos (+ suma-neg numero) total-pos (+ total-neg 1))))

(define (leer-numeros n contador suma-pos suma-neg total-pos total-neg)
  (if (> contador n)
      (imprimir-medias suma-pos suma-neg total-pos total-neg)
      (begin
        (display "Ingrese un número: ")
        (procesar-numero n contador suma-pos suma-neg total-pos total-neg (read)))))

(define (imprimir-medias suma-pos suma-neg total-pos total-neg)
  (display "Media de números positivos: ")
  (display (/ suma-pos total-pos))
  (newline)
  (display "Media de números negativos: ")
  (display (/ suma-neg total-neg))
  (newline))

(define (main)
  (display "Ingrese el número de valores (N): ")
  (leer-numeros (read) 1 0 0 0 0))

(main)

; Ejercicio 17
; Escribir un programa que lea números enteros de teclado
; hasta que encuentre uno que cumpla las siguientes
; condiciones:
; • Múltiplo de 2.
; • No múltiplo de 5.
; • Mayor que 100.
; • Menor que 10.000

#lang racket

(define (cumple-condiciones? numero)
  (and (zero? (remainder numero 2))
       (not (zero? (remainder numero 5)))
       (> numero 100)
       (< numero 10000)))

(define (procesar-numero numero)
  (if (cumple-condiciones? numero)
      (display "El número cumple con las condiciones.")
      (leer-numeros)))

(define (leer-numeros)
  (display "Ingrese un número entero: ")
  (procesar-numero (read)))

(define (main)
  (leer-numeros))

(main)

; Ejercicio 18
; Escribir un programa que lea valores enteros hasta que se
; introduzca un 0 y calcule la media de los positivos y la media
; de los negativos.

#lang racket

(define (actualizar-contadores n pos-neg total-pos total-neg)
  (cond
    [(> n 0) (leer-valores (+ pos-neg 1) (+ total-pos n) total-neg)]
    [(< n 0) (leer-valores pos-neg total-pos (+ total-neg n))]
    [else (calcular-medias pos-neg total-pos total-neg)]))

(define (calcular-medias pos-neg total-pos total-neg)
  (if (not (zero? pos-neg))
      (begin
        (display "Media de los positivos: ")
        (display (/ total-pos pos-neg))
        (newline))
      (display "No se ingresaron números positivos."))
  (if (not (zero? (- pos-neg)))
      (begin
        (display "Media de los negativos: ")
        (display (/ total-neg (- pos-neg)))
        (newline))
      (display "No se ingresaron números negativos.")))

(define (leer-valores pos-neg total-pos total-neg)
  (display "Ingrese un número entero (0 para terminar): ")
  (define n (read))
  (if (not (zero? n))
      (actualizar-contadores n pos-neg total-pos total-neg)
      (calcular-medias pos-neg total-pos total-neg)))

(define (main)
  (leer-valores 0 0 0))

(main)

;EJercicio 19
; ;Escribir un programa que pidiendo un valor N seguido de
; N números, calcule el máximo y mínimo de ese conjunto de N
; números.
#lang racket

(define (actualizar-max-min n max min contador N)
  (cond
    [(> n max) (leer-numeros n min contador N)]
    [(< n min) (leer-numeros max n contador N)]
    [else (leer-numeros max min contador N)]))

(define (leer-numeros max min contador N)
  (if (< contador N)
      (begin
        (display "Ingrese un número entero: ")
        (define n (read))
        (actualizar-max-min n max min (+ contador 1) N))
      (mostrar-resultados max min)))

(define (mostrar-resultados max min)
  (display "Máximo: ")
  (display max)
  (newline)
  (display "Mínimo: ")
  (display min)
  (newline))

(define (main)
  (display "Ingrese la cantidad de números a procesar: ")
  (define N (read))
  (if (<= N 0)
      (display "La cantidad de números debe ser mayor a 0.")
      (begin
        (display "Ingrese un número entero: ")
        (define primer-valor (read))
        (leer-numeros primer-valor primer-valor 1 N))))

(main)

#lang racket

; Ejercicio 20
; 0. Escribir un programa que sume las cifras de un número
; entero positivo.
; Ej.
; 962 9 + 6 + 2 = 17
; 1 + 7 = 8
; El resultado es 8
(define (sumar-cifras n)
  (if (< n 10)
      n
      (+ (modulo n 10) (sumar-cifras (quotient n 10)))))

(define (reducir-numero n)
  (if (< n 10)
      n
      (reducir-numero (sumar-cifras n))))

(define (main)
  (display "Ingrese un número entero positivo: ")
  (define n (read))
  (if (< n 0)
      (display "El número debe ser positivo.")
      (begin
        (display "Resultado: ")
        (display (reducir-numero n))
        (newline))))

(main)
