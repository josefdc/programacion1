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

;----3------
; una funcion que muestre los numero de n hasta m

; Ejemplo 

; n = 10
; m = 5

; 10 9 8 7 6 5

; Ejemplo 2

; n = 4

; m = 10

; 4 5 6 7 8 9 10.

;definimos la funcion   

(define (numeros3 n m)
  (cond [(> n m) (begin 
                   (display n) 
                   (newline) 
                   (numeros3 (- n 1) m))]
        [(< n m) (begin                 
                   (display n)   
                   (newline)
                   (numeros3 (+ n 1) m))]
        [else (display n) (newline)]))

(numeros3 10 5) ; muestra 10 9 8 7 6 5 en consola
(numeros3 4 10) ; muestra 4 5 6 7 8 9 10 en consola
(numeros3 5 5) ; muestra 5 en consola

; otra manera de solucionarlo.

 (define (numero n m)
  (cond
    ((< n m)(begin
              (displayln n)
              (numero (+ n 1)m)
              m
              )
            )
    (else
     n)
    )
  )

(define (numero2 n m)
  (cond
    ((> n m)(begin
              (displayln n)
              (numero2 (- n 1)m)
              m
              )
            )
    
  (else
   (display n)
   )
  )
  )

(define (num3 n m)
  (if (< n m)
      (numero n m)

      (numero2 n m)
      )
  )
(num3 10 3)