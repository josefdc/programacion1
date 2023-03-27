#lang racket

; La función "Fibonacci-rabbits" recibe un número "n" que representa la cantidad de meses
; transcurridos y devuelve la cantidad de parejas de conejos que hay en ese momento.
; Si n es menor que 3, se retorna 1 ya que solo hay una pareja al principio.
; En caso contrario, se suman la cantidad de parejas que habrá después de 1 mes y
; la cantidad de parejas que habrá después de 2 meses. Esto se hace llamando de forma
; recursiva a la función "rabbit-pairs" con los valores de (n - 1) y (n - 2), respectivamente.
; Finalmente, se retorna la suma de ambas cantidades

(define (Fibonacci-rabbits n)
  (if (< n 3)
      1
      (+ (Fibonacci-rabbits (- n 1)) (Fibonacci-rabbits (- n 2)))
      )
  )
;;llamos la funcion
(Fibonacci-rabbits 12) ; 144