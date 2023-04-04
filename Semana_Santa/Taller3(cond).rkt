#lang racket
;-------1--------
;Leer un numero entero obtenido al lanzado de un dado de seis caras e imprimir el numero en letras
;De la cara opuesta. En las caras opuestas de un dado de seis caras se encuentran los numeros 1-6, 2-5 y 3-4.   
; si el numero es menor que 1 o mayor que 6, imprimir "Numero invalido"

(define (leer-numero)
  (read))

(define (imprimir-numero numero)
    (cond
        [(= numero 1) (display "Seis")]
        [(= numero 2) (display "Cinco")]
        [(= numero 3) (display "Cuatro")]
        [(= numero 4) (display "Tres")]
        [(= numero 5) (display "Dos")]
        [(= numero 6) (display "Uno")]
        [else (display "Numero invalido")])
    (newline))

(define (principal)
    (display "Ingrese un numero: ")
    (imprimir-numero (leer-numero)))

(principal)

;-------2--------
; Capturar una letra minuscula o mayuscula e imprimir la poscion que ocupa en el abecedario.
; ejemplo a=1 b=2 c=3 ... z=26


(define (leer-letra)
  (read-char))

(define (imprimir-posicion letra)
  (cond
    [(or (char=? letra #\a) (char=? letra #\A)) (display 1)]
    [(or (char=? letra #\b) (char=? letra #\B)) (display 2)]
    [(or (char=? letra #\c) (char=? letra #\C)) (display 3)]
    [(or (char=? letra #\d) (char=? letra #\D)) (display 4)]
    [(or (char=? letra #\e) (char=? letra #\E)) (display 5)]
    [(or (char=? letra #\f) (char=? letra #\F)) (display 6)]
    [(or (char=? letra #\g) (char=? letra #\G)) (display 7)]
    [(or (char=? letra #\h) (char=? letra #\H)) (display 8)]
    [(or (char=? letra #\i) (char=? letra #\I)) (display 9)]
    [(or (char=? letra #\j) (char=? letra #\J)) (display 10)]
    [(or (char=? letra #\k) (char=? letra #\K)) (display 11)]
    [(or (char=? letra #\l) (char=? letra #\L)) (display 12)]
    [(or (char=? letra #\m) (char=? letra #\M)) (display 13)]
    [(or (char=? letra #\n) (char=? letra #\N)) (display 14)]
    [(or (char=? letra #\o) (char=? letra #\O)) (display 15)]
    [(or (char=? letra #\p) (char=? letra #\P)) (display 16)]
    [(or (char=? letra #\q) (char=? letra #\Q)) (display 17)]
    [(or (char=? letra #\r) (char=? letra #\R)) (display 18)]
    [(or (char=? letra #\s) (char=? letra #\S)) (display 19)]
    [(or (char=? letra #\t) (char=? letra #\T)) (display 20)]
    [(or (char=? letra #\u) (char=? letra #\U)) (display 21)]
    [(or (char=? letra #\v) (char=? letra #\V)) (display 22)]
    [(or (char=? letra #\w) (char=? letra #\W)) (display 23)]
    [(or (char=? letra #\x) (char=? letra #\X)) (display 24)]
    [(or (char=? letra #\y) (char=? letra #\Y)) (display 25)]
    [(or (char=? letra #\z) (char=? letra #\Z)) (display 26)]
    [else (display "No es una letra")])
  (newline))

; usamos una funcion principal
(define (principal)
    (display "Ingrese una letra: ")
    (imprimir-posicion (leer-letra)))

(principal)

;------3------

; En un supermercado, se realizan descuentos por las compras a partir de unas bolitas de colores:
; Verde 20%, amarilla 25%, negra del 30%; la blanca no aplica ningún descuento. Leer el importe 
; de la compra y el color de la bolita e imprimir lo que debe pagar dicho cliente.


; Función para aplicar el descuento según el color de la bolita
(define (aplicar-descuento importe color)
  (cond
    [(equal? color 'verde) (* importe 0.8)]
    [(equal? color 'amarilla) (* importe 0.75)]
    [(equal? color 'negra) (* importe 0.7)]
    [(equal? color 'blanca) importe]
    [else (error "Color desconocido")]))


; Función principal
(define (calcular-pago)
  (display "Ingrese el importe de la compra: ")
  (define importe (read))
  (display "Ingrese el color de la bolita (verde, amarilla, negra, blanca): ")
  (define color (read))
  (display "El cliente debe pagar: ")
  (displayln (aplicar-descuento importe color)))

; Ejemplo de uso
(calcular-pago)

;------5------
; Leer una letra mayuscula e imprimir la letra  y si esta es recta (A,E,F,H,I,K,L,M,N,O,T,V,W,X,Y,Z), 
; es curva (C,O,S,U,Q), o curva y recta (B,D,G,J,P,R)

(define (leer-letra)
  (read))

; Función para determinar si una letra es recta
(define (char-recta letra)
      (or (char=? letra #\a) (char=? letra #\A)
          (char=? letra #\e) (char=? letra #\E)
          (char=? letra #\f) (char=? letra #\F)
          (char=? letra #\h) (char=? letra #\H)
          (char=? letra #\i) (char=? letra #\I)
          (char=? letra #\k) (char=? letra #\K)
          (char=? letra #\l) (char=? letra #\L)
          (char=? letra #\m) (char=? letra #\M)
          (char=? letra #\n) (char=? letra #\N)
          (char=? letra #\o) (char=? letra #\O)
          (char=? letra #\t) (char=? letra #\T)
          (char=? letra #\v) (char=? letra #\V)
          (char=? letra #\w) (char=? letra #\W)
          (char=? letra #\x) (char=? letra #\X)
          (char=? letra #\y) (char=? letra #\Y)
          (char=? letra #\z) (char=? letra #\Z)))

; Función para determinar si una letra es curva

(define (char-curva letra)
      (or (char=? letra #\c) (char=? letra #\C)
          (char=? letra #\o) (char=? letra #\O)
          (char=? letra #\s) (char=? letra #\S)
          (char=? letra #\u) (char=? letra #\U)
          (char=? letra #\q) (char=? letra #\Q)))
; Función para determinar si una letra es curva y recta
(define (char-curva-recta letra)
      (or (char=? letra #\b) (char=? letra #\B)
          (char=? letra #\d) (char=? letra #\D)
          (char=? letra #\g) (char=? letra #\G)
          (char=? letra #\j) (char=? letra #\J)
          (char=? letra #\p) (char=? letra #\P)
          (char=? letra #\r) (char=? letra #\R)))

; Función principal
(define (principal)
  (display "Ingrese una letra: ")
  (define letra (leer-letra))
  (display "La letra ingresada es: ")
  (display letra)
  (newline)
  (display "La letra ingresada es: ")
  (cond
    [(char-recta letra) (display "recta")]
    [(char-curva letra) (display "curva")]
    [(char-curva-recta letra) (display "curva y recta")]
    [else (display "desconocida")])
  (newline))


;------6------
; Elaborar un menu que calcule tres conversiones de tiempo
; 1. De segundos a minutos
; 2. De minutos a horas
; 3. De horas a dias

; Función para convertir segundos a minutos
(define (segundos-minutos segundos)
  (/ segundos 60))

; Función para convertir minutos a horas
(define (minutos-horas minutos)
  (/ minutos 60))

; Función para convertir horas a días
(define (horas-dias horas)
  (/ horas 24))

; Función principal
(define (principal)
  (display "Ingrese una opción: ")
  (displayln "1. De segundos a minutos")
  (displayln "2. De minutos a horas")
  (displayln "3. De horas a días")
  (define opcion (read))
  (cond
    [(= opcion 1)
     (display "Ingrese la cantidad de segundos: ")
     (define segundos (read))
     (display "La cantidad de minutos es: ")
     (displayln (segundos-minutos segundos))]
    [(= opcion 2)
     (display "Ingrese la cantidad de minutos: ")
     (define minutos (read))
     (display "La cantidad de horas es: ")
     (displayln (minutos-horas minutos))]
    [(= opcion 3)
     (display "Ingrese la cantidad de horas: ")
     (define horas (read))
     (display "La cantidad de días es: ")
     (displayln (horas-dias horas))]
    [else (error "Opción desconocida")]))

