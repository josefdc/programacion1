#lang racket

; Se imprime un mensaje explicando el objetivo del programa
(displayln "Este programa calcula la longitud y el área total de tres circunferencias con radios R, 2R y 3R.")

; Se define el valor de pi para ser utilizado en los cálculos
(define pi 3.141592)

; Se solicita al usuario que ingrese el valor de R
(displayln "Ingrese el valor del radio R:")
(define R (read))

(newline)

; Cálculo y muestra de los resultados para la primera circunferencia
(displayln "Resultados para la primera circunferencia:")

; Longitud de la circunferencia (L.C.): 2 * pi * r
(define LC1 (round (* 2 pi R)))
(displayln (format "Longitud: ~a" LC1))

; Área de la circunferencia (A.C.): pi * r^2
(define AC1 (round (* pi (sqr R))))
(displayln (format "Área: ~a" AC1))

(newline)

; Cálculo y muestra de los resultados para la segunda circunferencia
(displayln "Resultados para la segunda circunferencia:")

; Longitud de la circunferencia (L.C.): 2 * pi * r
(define LC2 (round (* 2 pi (* 2 R))))
(displayln (format "Longitud: ~a" LC2))

; Área de la circunferencia (A.C.): pi * r^2
(define AC2 (round (* pi (sqr (* 2 R)))))
(displayln (format "Área: ~a" AC2))

(newline)

; Cálculo y muestra de los resultados para la tercera circunferencia
(displayln "Resultados para la tercera circunferencia:")

; Longitud de la circunferencia (L.C.): 2 * pi * r
(define LC3 (round (* 2 pi (* 3 R))))
(displayln (format "Longitud: ~a" LC3))

; Área de la circunferencia (A.C.): pi * r^2
(define AC3 (round (* pi (sqr (* 3 R)))))
(displayln (format "Área: ~a" AC3))
