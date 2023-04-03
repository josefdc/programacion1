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

