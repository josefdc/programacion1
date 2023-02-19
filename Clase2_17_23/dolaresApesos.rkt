#lang racket

(display "Cuantos dolares desea convertir?")
(define dolares (read))
(display "usted tiene ")
(define pesos (* dolares 4883.03))
(display pesos )
(display " pesos ")