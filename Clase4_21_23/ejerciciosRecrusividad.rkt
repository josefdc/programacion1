#lang racket
;----1----
;factorial de n recursivo(si es negativo, convertirlo a positivo)

(define (convertir n)
  (if (< n 0)
      (- n)
      n))

(define (factorial n)
    (if (= n 0)
        1
        (* n (factorial (- n 1)))))

; hacemos la funcion principal que pida el numero
(define (main)
  (display "Ingrese un numero: ")
  (newline)
  (display (factorial (convertir (read))))
  (newline))
;llamamos a la funcion
(main)

;----2----
;potencia de n (validar base y exponente, que sean entero positivo y base (par) y exp (impar))

#lang racket

; Potencia de un numero
(define (potencia n e)
  (if (= e 0)
      1
      (* n (potencia n (- e 1)))))

; Validar base (par) y exponente (impar) y que sean enteros positivos
(define (validar a b)
  (cond
    [(and (even? a) (odd? b) (> a 0) (> b 0)) (potencia a b)]
    [(<= a 0) "Invalido porque la base no es un entero positivo"]
    [(<= b 0) "Invalido porque el exponente no es un entero positivo"]
    [(even? a) "Invalido porque el exponente es par"]
    [(odd? b) "Invalido porque la base es impar"]
    [else "Invalido porque la base es impar y el exponente es par"]))

; Función principal que pide la base y el exponente
(define (main)
  (display "Ingrese la base: ")
  (newline)
  (define a (read))
  (display "Ingrese el exponente: ")
  (newline)
  (define b (read))
  (newline)
  (display (validar a b))
  (newline))

; Ejecutar la función principal
(main)



;----3----
; suma de dos numeros (enteros positivos y pares) 

#lang racket

; Suma de dos numeros (enteros positivos y pares)

; Validar si n es entero positivo y par
(define (validar n)
  (if (and (integer? n) (> n 0) (even? n))
      n
      (begin
        (display "Ingrese un numero entero positivo y par")
        (newline)
        (main))))

; Suma de dos numeros utilizando recursión
(define (suma n m)
  (if (= m 0)
      n
      (suma (+ n 1) (- m 1))))

; Hacemos la función principal que pida los dos números
(define (main)
  (display "Ingrese el primer numero: ")
  (newline)
  (define n (read))
  (display "Ingrese el segundo numero: ")
  (newline)
  (define m (read))
  (newline)
  (display (suma (validar n) (validar m)))
  (newline))

; Ejecutar la función principal
(main)

;----4----


; Multiplicacion de dos numeros (enteros positivos e impares)

; Validar si n es entero positivo e impar
(define (validar n)
  (if (and (integer? n) (> n 0) (odd? n))
      n
      (begin
        (display "Ingrese un numero entero positivo e impar")
        (newline)
        (main))))

; Multiplicacion de dos numeros utilizando recursión
(define (multiplicacion n m)
  (if (= m 0)
      0
      (+ n (multiplicacion n (- m 1)))))

; Hacemos la función principal que pida los dos números
(define (main)
  (display "Ingrese el primer numero: ")
  (newline)
  (define n (read))
  (display "Ingrese el segundo numero: ")
  (newline)
  (define m (read))
  (newline)
  (display (multiplicacion (validar n) (validar m)))
  (newline))

; Ejecutar la función principal
(main)

;----5----
; adivinar un numero de 1-10 y contar el numero de oportunidades

; Generar un número aleatorio entre 1 y 10
(define (generar-numero-aleatorio)
  (+ 1 (random 10)))

; Jugar el juego y contar oportunidades
(define (adivinar-numero numero intentos)
  (display "Adivina el número entre 1 y 10: ")
  (newline)
  (define guess (read))
  (if (= guess numero)
      (begin
        (display "¡Correcto! El número era ")
        (display numero)
        (display ". Adivinaste en ")
        (display intentos)
        (display " intentos.")
        (newline))
      (begin
        (display "Incorrecto, intenta de nuevo.")
        (newline)
        (adivinar-numero numero (+ intentos 1)))))

; Función principal para iniciar el juego
(define (main)
  (define numero-aleatorio (generar-numero-aleatorio))
  (adivinar-numero numero-aleatorio 1))

; Ejecutar el juego
(main)

  ;----6----
  ; Adivianr un numero en maximo 3 oportunidades

  ; Generar un número aleatorio entre 1 y 10
  (define (generar-numero-aleatorio)
    (+ 1 (random 10)))

  ; Jugar el juego y contar oportunidades
  (define (adivinar-numero numero intentos)
    (display "Adivina el número entre 1 y 10: ")
    (newline)
    (define guess (read))
    (if (= guess numero)
        (begin
          (display "¡Correcto! El número era ")
          (display numero)
          (display ". Adivinaste en ")
          (display intentos)
          (display " intentos.")
          (newline))
        (begin
          (display "Incorrecto, intenta de nuevo.")
          (newline)
          (if (< intentos 3)
              (adivinar-numero numero (+ intentos 1))
              (begin
                (display "¡Perdiste! El número era ")
                (display numero)
                (display ".")
                (newline))))))
  ; Función principal para iniciar el juego
  (define (main)
    (define numero-aleatorio (generar-numero-aleatorio))
    (adivinar-numero numero-aleatorio 1))

  ; Ejecutar el juego
  (main)





