#lang racket

;; Pedimos al usuario que ingrese los segundos a convertir
(display "Ingrese la cantidad de segundos: ")
(define segundos (read))

;; Calculamos el número de horas
(define horas (/ segundos 3600))

;; Calculamos el número de minutos
(define minutos (/ (modulo segundos 3600) 60))

;; Calculamos el número de segundos restantes
(define segundos-restantes (modulo segundos 60))

;; Mostramos el resultado al usuario
(display "El resultado es: ")
(display horas)
(display " hora(s) ")
(display minutos)
(display " minuto(s) ")
(display segundos-restantes)
(display " segundo(s)")
(newline)
