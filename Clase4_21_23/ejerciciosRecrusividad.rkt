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

; Validar si n es entero positivo
(define (validar n)
  (if (and (integer? n) (> n 0))
      n
      (begin
        (display "Ingrese un numero entero positivo")
        (newline)
        (main))))

; Validar base (par) y exponente (impar)
(define (validar2 b a)
  (cond [(and (even? b) (odd? a))
         (expt b a)]
        [(not (even? b))
         (begin
           (display "Ingrese una base par")
           (newline)
           (main))]
        [(not (odd? a))
         (begin
           (display "Ingrese un exponente impar")
           (newline)
           (main))]
        [else
         (begin
           (display "Ingrese una base par y un exponente impar")
           (newline)
           (main))]))

; Hacemos la función principal que pida la base y el exponente
(define (main)
  (display "Ingrese la base: ")
  (newline)
  (define b (read))
  (display "Ingrese el exponente: ")
  (newline)
  (define a (read))
  (newline)
  (validar2 (validar b) (validar a)))

; Ejecutar la función principal
(main)

;----3----