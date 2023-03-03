#lang racket

;; funcion del binomio cuadrado perfecto

;; definimos la multiplicacion de dos numeros
(define (mult a b)
  (* a b)
  )
;; definimos la suma de dos numeros
(define (sum a b)
  (+ a b)
  )
;; definimos la resta de dos numeros
(define (rest a b)
  (- a b)
  )
;; definimos el cuadrado de un numero
(define (square a)
  (mult a a)
  )

;; definimos la funcion del binomio cuadrado perfecto (a+b)^2
(define (binomio a b)
    (square (sum a b))
    )
;; tambien se puede definir como a^2 +2sb + b^2
(define (binomio2 a b)
    (sum (square a) (sum (mult 2 (mult a b)) (square b)))
    )
;; comprobamos que ambas funciones son iguales
(= (binomio 2 3) (binomio2 2 3)) ; #t

;;---------------2---------------------
;; definimos la funcion de binomio de cubos (a+b)^3
(define (binomio3 a b)
    ( expt (sum a b) 3)
    )
;; tambien se puede definir como a^3 + 3a^2b + 3ab^2 + b^3
(define (binomio4 a b)
    (sum (expt a 3) (sum (mult 3 (mult (square a) b)) (sum (mult 3 (mult a (square b))) (expt b 3))))
    )
;; comprobamos que ambas funciones son iguales
(= (binomio3 2 3) (binomio4 2 3)) ; #t

;;----------------3--------------------
;; definimos la funcion de diferencia de cuadrados a^2 - b^2
(define (diferencia a b)
    (rest (square a) (square b))
    )
;; tambien se puede definir como (a-b)(a+b)
(define (diferencia2 a b)
    (mult (rest a b) (sum a b))
    )
;; comprobamos que ambas funciones son iguales
(= (diferencia 2 3) (diferencia2 2 3)) ; #t
;;----------------4--------------------
;; definimos la funcion de diferencia de cubos a^3 - b^3
(define (diferencia3 a b)
    (rest (expt a 3) (expt b 3))
    )
;; tambien se puede definir como (a-b)(a^2 + ab + b^2)
(define (diferencia4 a b)
    (mult (rest a b) (sum (sum (square a) (mult a b)) (square b)))
    )
;; comprobamos que ambas funciones son iguales
(= (diferencia3 2 3) (diferencia4 2 3)) ; #t
;;----------------5--------------------
;; definimos la funcion de suma de cubos a^3 + b^3
(define (suma a b)
    (sum (expt a 3) (expt b 3))
    )
;; tambien se puede definir como (a+b)(a^2 - ab + b^2)
(define (suma2 a b)
    (mult (sum a b) (sum (rest (square a) (mult a b)) (square b)))
    )
;; comprobamos que ambas funciones son iguales
(= (suma 2 3) (suma2 2 3)) ; #t
;;----------------6--------------------
;; definimos la funcion de a^4-b^4

(define (diferencia5 a b)
    (rest (expt a 4) (expt b 4))
    )  

;; tambien se puede definir como (a-b)(a+b)(a^2+b^2)
(define (diferencia6 a b)
    (mult (rest a b) (mult (sum a b) (sum (square a) (square b))))
    )
;; comprobamos que ambas funciones son iguales
(= (diferencia5 2 3) (diferencia6 2 3)) ; #t
(display (diferencia5 2 3))
(newline)
(display (diferencia6 2 3))
;;----------------7--------------------
;; definimos (a+b+c)^2
(define (suma3 a b c)
    (square (sum (sum a b) c))
    )
;; tambien se puede definir como a^2 + b^2 + c^2 + 2ab + 2bc + 2ac
(define (suma4 a b c)
    (sum (sum (sum (square a) (square b)) (square c)) (sum (sum (mult 2 (mult a b)) (mult 2 (mult b c))) (mult 2 (mult a c))))
    )
;; comprobamos que ambas funciones son iguales
(= (suma3 2 3 4) (suma4 2 3 4)) ; #t