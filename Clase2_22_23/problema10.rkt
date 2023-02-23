#lang racket

;; Pedimos al usuario que ingrese la altura en metros
(display "Ingrese la altura en metros: ")
(define altura (read))

;; a) Calculamos el tiempo que tarda el proyectil en estar a 128 metros del suelo
(define tiempo-128 (/ (+ (sqrt (- (* 144 4) (* 4 -16 (- altura 128)))))(* 2 -16)))
(display "Después de cuántos segundos estará el proyectil a 128 metros del suelo: ")
(display tiempo-128)
(newline)

;; b) Calculamos el momento en el que el objeto toca el suelo
(define tiempo-suelo (+ (/ -144 -16) (sqrt (- (/ (* -144 -144) (* 2 (* -16  -16)))))))
(display "En qué momento toca el suelo el objeto: ")
(display tiempo-suelo)
(newline)
