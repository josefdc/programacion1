#lang racket
; Definimos una funcion f(x) , es una funcion f con argumentos x

; ```scss
; f(x) ={ 1 si x <= 1
;         x * f(x-1) si x > 1
;       }

; ```

; miremo unos casos

; - f(3.5) = f(2.5) * 3.5
; - f(2.5) = f(1.5) * 2.5
; - f(1.5) = f(0.5) * 1.5
; - f(0.5) = 1
; - f(1.5) = 1 * 1.5 = 1.5
; - f(2.5) = 1.5 * 2.5 = 3.75
; - f(3.5) = 3.75 * 3.5 = 13.125
  

; Definimos la funcion f con cond
(define (f x)
  (cond [(<= x 1) 1]
        [else (* x (f (- x 1)))]))

; Miremos algunos casos
(f 3.5)

;----2------
; definimos una funcion que muestre los numeros del 1 al n

; definemos la fucnion
(define (numeros n)
  (cond [(<= n 1) 1]
        [else (begin 
            (display n) 
            (newline) 
            (numeros (- n 1)))]))

; miremos algunos casos
(numeros 5)

; definamos esta funcion de otra manera, de forma asendente

; definamos la funcion con dos argumentos, donde inicia en este caso 1 y el limite es n
(define (numeros2 n i)
  (cond [(>= i n) n]
        [else (begin 
            (display i) 
            (newline) 
            (numeros2 n (+ i 1)))]))

; miremos algunos casos
(numeros2 5 1)


 