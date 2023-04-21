#lang racket

(define (factorial2 n)
(if (= n 1) 1
(* n (factorial2 (- n 1)))))

(factorial2 (read))

; pruebas de escritorio
(factorial2 5) ; 120
(* 5 (factorial2 4)) ; 120
(* 5 (* 4 (factorial2 3))) ; 120
(* 5 (* 4 (* 3 (factorial2 2)))) ; 120
(* 5 (* 4 (* 3 (* 2 (factorial2 1))))) ; 120
(* 5 (* 4 (* 3 (* 2 1)))) ; 120
(* 5 (* 4 (* 3 2))) ; 120
(* 5 (* 4 6)) ; 120
(* 5 24) ; 120

;---2---- 

; potencia de un numero
(define (potencia n e)
  (if (= 0 e) 1
      (begin 
        (* n (potencia n (- e 1))))))

(potencia (read) (read))

; pruebas de escritorio
(potencia 2 4)
(* 2 (potencia 2 3))
(* 2 (* 2 (potencia 2 2)))
(* 2 (* 2 (* 2 (potencia 2 1))))
(* 2 (* 2 (* 2 2)))
(* 2 (* 2 4))
(* 2 8)
16
;---3----
; suma de dos numeros de manera recusiva
(define (suma n m)
  (if (= 0 m) n
      (begin 
        (suma (+ n 1) (- m 1)))))

(suma (read) (read))

; pruebas de escritorio
(suma 5 3)
(+ 1 (suma 5 2))
(+ 1 (+ 1 (suma 5 1)))
(+ 1 (+ 1 (+ 1 (suma 5 0))))
(+ 1 (+ 1 (+ 1 5)))
(+ 1 (+ 1 6))
(+ 1 7)
8

;---4----
; multiplicacion de dos numeros de manera recusiva

(define (multiplicacion n m)
  (if (= 0 m) 0
      (begin 
        (+ n (multiplicacion n (- m 1))))))

(multiplicacion (read) (read))

; pruebas de escritorio
(multiplicacion 5 3)
(+ 5 (multiplicacion 5 2))
(+ 5 (+ 5 (multiplicacion 5 1)))
(+ 5 (+ 5 (+ 5 (multiplicacion 5 0))))
(+ 5 (+ 5 (+ 5 0)))
(+ 5 (+ 5 5))
(+ 5 10)
15
;---5----
; division de dos numeros de manera recusiva

(define (division n m)
  (if (< n m) 0
      (begin 
        (+ 1 (division (- n m) m)))))

(division (read) (read))

; pruebas de escritorio
(division 12 3)

; ---6---
; raiz cuadrado con metodo de Heron

; Función auxiliar que implementa el método de Herón
(define (heron-method x y)
  ; Valor de tolerancia para detener las iteraciones
  (define epsilon 0.0001) 

  ; Verificar si la diferencia entre el cuadrado de y y x es menor que la tolerancia
  (if (< (abs (- (sqr y) x)) epsilon)
      ; Si la diferencia es menor que la tolerancia, entonces se ha encontrado una aproximación suficientemente buena
      y
      ; Si la diferencia es mayor que la tolerancia, entonces continuar iterando
      (heron-method x (/ (+ y (/ x y)) 2))))

; Función principal para calcular la raíz cuadrada
(define (sqrt-recursive x)
  ; Invocar heron-method con una aproximación inicial igual al número de entrada
  (heron-method x x))

; Ejemplo de uso
(define numero (read))
; Imprimir la raíz cuadrada aproximada del número leído
(display "La raíz cuadrada aproximada de ")
(display numero)
(display " es: ")
(display (sqrt-recursive numero))
(newline)

;---7---
;resta de manera recursiva

(define (resta n m)
  (if (= 0 m) n
      (begin 
        (resta (- n 1) (- m 1)))))

(resta (read) (read))

; pruebas de escritorio

(resta 5 3)
(- 1 (resta 5 2))
(- 1 (- 1 (resta 5 1)))
(- 1 (- 1 (- 1 (resta 5 0))))
(- 1 (- 1 (- 1 5)))
(- 1 (- 1 4))
(- 1 3)
2
