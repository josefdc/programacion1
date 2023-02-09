#lang racket/base
;; 1- Funcion multiplicación
;(* x y z ...) → number

;  x : number
;  y : number
;  z : number

(* 4 5 6)
(*(* 3 4)(* 3 4))

;; 2 - Funcion suma
; (+ x y z ...) → number

;  x : number
;  y : number
;  z : number
(+ 2 2/3  8) ;32/3 
(+ 65 23 62) ;150
(+ 28 32 (* 32 5)) ;220

;; 3- Funcion resta
;(- x y ...) → number
;
;  x : number
;  y : number
(- 5) ;-5
(- 2 3 (+ 20 10 ))
(- (* 25 28) (* 18 25)); 250

;; 4 - Funcion Division

; (/ x y z ...) → number

;  x : number
;  y : number
;   z : number

(/ 6 4 2) ;3/4
(/ 3/4 8 9) ;1/96
(/ (+ 38 68) (* 35 2)) ; 53/35

;; 5 Funcion de < 
;(< x y z ...) → boolean?

;  x : real
;  y : real
;  z : real

(< 2 3) ;#t
(< (* 25 32)(/ 23 3)) ; #f
(< (- 25 22)(* 38 2)) ; #t

;;6 - Funcion de <=  
;(<= x y z ...) → boolean?

;  x : real
;  y : real
;  z : real

(<= 2 2) ;#t
(<= 0 4/2 2) ;#t
(<= 7 (* 58 52)) #t

;; 7 - Funcion >
;(> x y z ...) → boolean?

;  x : real
;  y : real
;  z : real

(> 2 3) ;#f
(> (* 25 32)(/ 23 3)) ; #t
(> (- 25 22)(* 38 2)) ; #f

;; 8 - Funcion >= 

;(>= x y z ...) → boolean?

  ;x : real
  ;y : real
  ;z : real
  
(>= 2 2) ;#f
(>= 0 4/2 2) ;#f
(>= 7 (* 58 52)) #t

;; 9 - Funcion Valor abs
;(abs x) → real
;  x : real

(abs -2) ;2
(abs  (- 895 123)) ;772
(abs (* (* -32 8 ) (+ 59 3))) ;15872

;; 10- Funcion arcos o cos^-1
;(acos x) → number
;  x : number 
; **para que el resultado sea  un nuemro real debe de ingresar valores entre 1 y -1**

(acos 10 ) ; 0.0+2.993222846126381i
(acos (- 1 0.5)) ; 1.0471975511965979
(acos (abs -0.75) ) ;0.7227342478134157

;; 11- Funcion agrega un 1 entero 
;(add1 x) → number
;  x : number
(add1 23 ) ;24
(add1 (acos (abs -0.75) )) ;1.7227342478134157
(add1 (/ (+ 38 68) (* 35 2))) ;88/35

;; 12- Funcion angulos en variable complejo
;(angle x) → real
;  x : number

(angle (make-polar 75 32)) ;0.584073
(angle (make-polar 2 2)) ;2.0
(angle (make-polar 2 5 )) ;-1.2831853071795865

;;13- Funcion arcsin o sin^-1 
;(asin x) → number
;  x : number

(asin 25) ;1.5707963267948966-3.9116227652145885i
(asin 0.5) ;0.5235987755982989
(asin 0.22) ;0.22181447049679442

;; 14 Funcion arctan o tan^-1 
; (atan x) → number
;   x : number
(atan 1.5) ;0.982793723247329
(atan (* (* -32 8 ) (+ 59 3))) ;-1.5707333227627218
(atan (abs (+(* 25 1/2)(/ 2 15)))) ;1.4918053550441501

;;15 Funcion techo 
; (ceiling x) → integer
;   x : real
(ceiling (atan (abs (+(* 3 1/2)(/ 2 28))))) ;2.0
(ceiling 3.141592) ;4.0
(ceiling 7/2) ;4

;; 16 Funcion que determina si un valor es complejo
(complex? 1-4i) ;#t
(complex? (asin 32)) ;#t
(complex?  (acos (abs (+(* 3 1/2)(/ 2 28))))) ;#t

;; 17 Funcion  que devuelve el conjugado complejo de un número complejo x.
; (conjugate x) → number

;   x : number
(conjugate -2-5i)
(conjugate (make-polar 3 4))


