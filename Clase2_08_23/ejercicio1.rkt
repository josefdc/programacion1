#lang racket/base

;; Ejerciocio #1 Jose Felipe Duarte Coronado Codigo:1003661694
;# Cualquier comentario estare atento.

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

;; 17- Funcion  que devuelve el conjugado complejo de un número complejo x.
; (conjugate x) → number
;   x : number
(conjugate -2 ) ;-2
 (conjugate (make-polar 3 4)) ;#i-1.960930862590836+2.2704074859237844i
 (conjugate 2 ) ;2-

; 18-Funcion coseno
; (cos x) → number
 ;  x : number
 (cos (/ pi 4)) ;l#i0.7071067811865476
 (cos (/ pi 2)) ;#6.123233995736766e-17
 (cos pi) ;#i-1.0
 
;19-Funcion hiperbolica de coseno
; (cosh x) → number
;   x : number
(* (sin (/ pi 4)) (cosh 1)) ;i1.0911227807955013
(+ (cosh 1) (sqrt 9)) ;i4.543080634815244
(* (cosh 0) (sin (/ pi 4))) ;i0.7071067811865475

;20-Determina el tiempo actual en segundos transcurridos (desde una fecha de inicio específica de la plataforma)
(current-seconds) ;1675979132
;; no se pueden proporcionar mas ejemplos :(

;21- funcion que determina el denomidado de un racional
; (denominator x) → integer
;   x : rational?
(* (denominator (/ 3 5)) (floor pi)) ;i15.0
(* (denominator (/ 4 7)) (cosh 0)) ;i7.0
(+ (log (expt 2.71828 2)) (denominator (/ 9 11))) ; 12.999998654694565

;22- da el numero e
;e : real
(* (expt e pi) (tan 0)) ;0
(+ (sqrt e) (log (expt e 2))) ;i3.648721270700128
(* (expt e -1) (sinh 0)) ;0

; 23- funcion que determina si el numero es par 
;(even? x) → boolean?
 ; x : integer
(even? (+ 3 4)) ;#false
(even? (* 2 7)) ;#true
(even? (- 6 8)) ; #true

 ;24- funcion que convierte un numero exacto a uno inexacto
;  (exact->inexact x) → number
;   x : number
(exact->inexact (+ pi 2)) ;5.141592653589793
(exact->inexact (* e 4)) ;10.87312731383618
(exact->inexact (log 8)) ;2.0794415416798357

;25 Funcion que determina si un numero es exacto
;(exact? x) → boolean?
;x : number
(exact? (+ 3 (/ 1 2))) ;#true
(exact? (expt 2 10)) ;#true
(exact? (cos pi));#false

;26 -Funcion que determina e elevado a un numero
;(exp x) → number
;  x : number
(exp 3) ;20.085536923187668
(+ (exp 2) (cos 1)) ;7.929358404798791
(log (exp 3)) ;3.0


; 27- funcion que calcule exponenciales
;(expt x y) → number
;   x : number
;   y : number
(expt 2 3) ;8
(* (expt 3 4) (cos 5)) ;i22.976637022521327
(+ (* (expt 2 3) (cos 1)) (log (exp 3))) ;7.322418446945118


;28 -funcion piso, redondea el numero al entero mas pequeño
; (floor x) → integer
;   x : real
(floor 3.14) ;3
(+ (floor 3.14) (sqrt 16)) ;7
(* (+ (floor 3.14) (sqrt 16)) (sin 1)) ;5.890296893655275


;29 -Funcion que calcule el maximo comun divisior 
; (gcd x y ...) → integer
;   x : integer
;   y : integer
(+ (* (gcd 10 15) (floor (/ 7 2))) (quotient 34 7)) ;19
(* (expt (gcd 30 40) 3) (modulo 13 4)) ;1000
(/ (- (gcd 5 20) (expt 2 4)) (abs (- (gcd 10 5) 9))) ;-2.75

;30 -Funcion que extrae la parte imaginaria de un numero
; (imag-part x) → real
;   x : number
(* (imag-part (+ 1.0 2)) (gcd 8 9)) ;0
(- (imag-part (- 3.5 4)) (quotient 19 5)) ;-3
(+ (expt (imag-part (* 2.0 3)) 3) (floor (/ 17 2))) ;8

;31 -Funcion que aproxima un numero inexacto a uno exacto
; (inexact->exact x) → number
;   x : number
(+ (inexact->exact 1.5) (inexact->exact 2.3));; Resultado: 3.8
(* (inexact->exact 3.14) (inexact->exact 4.0));; Resultado: 12.56
(/ (inexact->exact 8.0) (inexact->exact 2.0));; Resultado: 4.0


;32 -Funcion que determina si un número es inexacto.
; (inexact? x) → boolean?
;   x : number
(inexact? (/ 3 2)) ;#t ; El resultado es #t porque el resultado de la división es un número inexacto.
(inexact? (sin (* pi 3)) );#t ; El resultado es #t porque el resultado de la función seno es un número inexacto.
(inexact? (log 10) ) ;#t ; El resultado es #t porque el resultado de la función logaritmo es un número inexacto.


;33 -Funcion que busca el caracter correspondiente al numero entero exacto dado en la tabla ASCII
; (integer->char x) → char
;   x : exact-integer?

(integer->char (+ 96 97)) ;#\Á
(integer->char (- 65 1)) ;#\@
 (integer->char (* 48 2)) ;#\`

;34 -Funcion que calcula la raiz cuadrada y la aproxima al entero o entera-imaginaria de un entero
; (integer-sqrt x) → complex
;   x : integer
(+ (integer-sqrt 4) (* 2 (integer-sqrt 9))) ;8
(/ (integer-sqrt 144) (integer-sqrt 49)) ;1.714285
(/ (+ (integer-sqrt 4) (integer-sqrt 9)) (integer-sqrt 144)) ;0.416


;35 -Funcion que determina si hay un numero entero 
; (integer? x) → boolean?
;   x : any/c
 (integer? 7) ; Imprime #t
 (integer? 7.0) ; Imprime #f
  (integer? "7") ; Imprime #f


;36 -Formula que determina el mínimo común múltiplo de dos enteros (exacto o inexacto).
; (lcm x y ...) → integer
;   y : integer
;   x : integer
(+ (* (lcm 4 7) (expt 2 3)) (floor (/ pi 2))) ;225.0
(* (lcm (abs (- 14 3)) (abs (- 17 20))) (sin (* pi (/ 1 2)))) ;33.0
(/ (lcm (abs (modulo 11 7)) (abs (modulo 9 4))) (expt (cos pi) 2)) ;4.0


;37 -Funcion que calcula el logaritmo en base e
; (log x) → number
;   x : number
(+ (log (sin (* pi (expt (cos pi) 2)))) (log (sin (* pi (expt (sin pi) 2)))) (log (tan pi))) ;-145.41020524496506+3.141592653589793i
(+ (log (exp (sin (* pi (expt (cos pi) 2))))) (log (exp (sin (* pi (expt (sin pi) 2))))) (log (exp (tan pi)))) ; 1.1102230246251563e-16
(- (log (sin (* pi (expt (cos pi) 2)))) (log (sin (* pi (expt (sin pi) 2)))) (log (tan pi))) ;72.13272116622807-3.141592653589793i

;38 - Funcion que determina la magnitud de un numero complejo 
;(magnitude x) → real
 ; x : number
(+ (magnitude (* 2 (sin pi))) (magnitude (- pi (expt 2 2)))) ;0.8584073464102071
(magnitude (+ (sqrt 3) (sqrt (- 2)))) ;2.23606797749979
(* (magnitude pi) (magnitude (- (expt 3 2) (sqrt 5)))) ;21.24951915126741

;39 - Funcion que crea un complejo a partir de una magnitud y un ángulo.
;  (make-polar x y) → number
;   x : real
;   y : real

(sin (make-polar 1 pi)) ; -0.8414709848078965+6.616576367510055e-17i
(cos (make-polar 1 0)) ;0.5403023058681398
(sqrt (+ (expt (make-polar 1 pi) 2) (expt (make-polar 1 pi) 2))) ;1.4142135623730951-1.7318549141438708e-16i


;40 -Funcion crea un complejo a partir de una parte real y otra imaginaria.
;(make-rectangular x y) → number
 ; x : real
 ; y : real
 (make-rectangular (* 2 (sin pi)) (* 2 (cos pi))) ;  #i2.4492127076447545e-16-2.0i
(make-rectangular (* 4 (sin pi)) (* 4 (cos pi))) ;  #i4.898425415289509e-16-4.0i
(make-rectangular (* 3 (sin pi)) (* 3 (cos pi))) ;  #i3.673819061467132e-16-3.0i

 ;41 -Funcion que determina el numero mas grande
;  (max x y ...) → real
;   x : real
;   y : real
(+ (max 3 4 5) (sqrt 36));11
(- (max 10 20 -30) (* 4 (sin pi))) ;20.0
(* (max 2 -3 5) (expt 2 5)) ;160

;42 - Funcion que determina el numero mas pequeño
; (min x y ...) → real
;   x : real
;   y : real
(min (+ 2 3) (- 9 16)) ;-7
(min (* 6 8) (/ 42 5)) ;8.4
(min (expt 1 2) (expt pi 2)) ;#i1.0

;43 -funcion que determina el residuo
; (modulo x y) → integer
;   x : integer
;   y : integer
(modulo (+ 3 7) 5) ;0
(modulo (* 3 7) 5) ;1
(modulo (- 3 7) 5) ;1

;44 -Funcion que detemina si un numero es menor que 0
; (negative? x) → boolean?
;   x : real
(negative? -3.14) ;#true
(negative? 0) ;#false
(negative? 4.2) ;#false


;45 -Funcion que convierte un numero en un string
; (number->string x) → string
;   x : number
(number->string 3.14) ;"157/50"
(number->string 42) ;"42"
(number->string -7) ; "-7"


;46 - funcion que convierte un numero a un string con un numero especifico de digitos
; (number->string-digits x p) → string
;   x : number
;   p : posint
(number->string-digits 3.1416 2) ; "3.14"
(number->string-digits 42 3);"42"
(number->string-digits -7 1) ;"-7"


;47 -Funcion que determina si cualquier valor es un numero
;(number? n) → boolean?
;  n : any/c
(number? 3.14) ;#true
(number? 42) ;#true
(number? "hello") ;#false


;48 -Funcion que muestra el numerador de un numero racional
; (numerator x) → integer
;   x : rational?
(numerator (/ 3 7));3
(numerator (quotient 4 2)) ;2
(numerator (- 8 3/7));53

;49 -Funcion que determina si un numero es impar
;(odd? x) → boolean?
;  x : integer
(odd? (round (* pi 7))) ;#false
(odd? (- (quotient 4 2) (modulo 8 3))); #false
(odd? (abs (- (expt 2 3) 7))) ;#true


;50- el numero pi
;pi : real
(make-rectangular (* 2 (sin pi)) (* 2 (cos pi))) ;  #i2.4492127076447545e-16-2.0i
(make-rectangular (* 4 (sin pi)) (* 4 (cos pi))) ;  #i4.898425415289509e-16-4.0i
(make-rectangular (* 3 (sin pi)) (* 3 (cos pi))) ;  #i3.673819061467132e-16-3.0i

;;51 -Formula que determina si un numero es mayor que cero
; (positive? x) → boolean?
;   x : real
(positive? (* pi 7)) ;#true
(positive? (- (sqrt 4) (log 1000))) ;#false
(positive? (+ (expt 2 3) (sin 30))) ;#true


;; 52 -Fromula que nos brinda el cociente
; (quotient x y) → integer
  ; x : integer
  ; y : integer
(quotient (* 7 11) 3) ;25
(quotient (- (expt 3 2) 4) 2) ;2
(quotient (+ (modulo 8 3) 5) 7) ;1

;; 53 -Formula que genera numeros aleatorio natura menor al numero dado
; (random x) → natural
;   x : natural
(random (+ 10 25)) ;15
(random (* (expt 2 3) (modulo 100 7 ))) ;13
(random (- (quotient (* 7 11) 3) (modulo 7 3))) ;13


;;54- Formula que determina si un numero es racional
; (rational? x) → boolean?
;   x : any/c
(rational? 1) ;true
(rational? 1/2) ;true
(rational? 1.5) ;true

;; 55 - funcion queExtrae la parte real de un numero complejo
; (real-part x) → real
;   x : number
(real-part (+ 10 (sin (* pi 5)))) ;#i10.0
(real-part (* (expt 2 3) (log 100))) ;#i36.841361487904734
(real-part (- (quotient (* 7 11) 3) (modulo 7 3))) ; 24

;; 56 determina si un numero es real
; (real? x) → boolean?
;   x : any/c
(real? 1) ;;true
(real? 1/2);;true
(real? 1.5) ;;true

;;57 formula que entrega el residuo
; (remainder x y) → integer
;   x : integer
;   y : integer
(+ (* (quotient 11 3) 3) (remainder 11 3)) ;11
(* (cos (* (sin 3) pi)) (abs (- 11 3))) ;#i7.226586428167087
(- (expt 2 (round (log (abs (remainder 11 3))))) (floor (/ 11 (remainder 11 3)))) ;#i-3.0


;;58 -formula que redondea un numero real a un entero 
;(round x) → integer
 ; x : real
(+ (round (sqrt (abs (- 9 (expt 2 (round (log 2))))))) 2) (modulo (round (* 3.5 7)) 4) ;#i5.0
(expt 2 (round (- (log (abs (round (/ 11 3)))) (sin (acos (- (cos (* pi 7)))))))) ;0
(* (floor (sqrt (abs (round (* pi 7))))) (ceiling (abs (round (/ 11 3))))) ;#i16.0

 ;59 -Formula que determina el signo de un numero
;  (sgn x) → (union 1 #i1.0 0 #i0.0 -1 #i-1.0)
  ; x : real
(+ (sgn 10) (* (sgn -2) (sgn 3.14))) ;0
(* (abs (- (sgn -5) (sgn 1))) (expt (sgn 0) 2)) ;0
(/ (sgn 0.0) (sgn -1));0

; 60 -formula de sin 
; (sin x) → number
;   x : number
(+ (sin 0) (* (sin (/ pi 2)) (sin pi))) ;#i1.2246063538223773e-16
(* (cos (/ pi 4)) (sin (* pi 3/2))) ;#i-0.7071067811865476
(/ (sin pi) (sin (/ pi 2))) ;#i1.2246063538223773e-16

; 61 -formula de sinh
; (sinh x) → number
;   x : number
(+ (sinh 0) (* (sinh 1) (sinh 2))) ;#i4.262290680481261
(* (cosh (/ pi 4)) (sinh (* pi 3/2))) ;#i73.72032091703349
(/ (sinh pi) (sinh (/ pi 2)));i5.018356957316114

;62 funcion que calcula el cuadrado de un numero
;(sqr x) → number
  ;x : number
(+ (sqr 2) (* (sqr 3) (sqr 4)));148
(* (sqr (- 2)) (sqr (/ 16 2)));256
(/ (sqrt (sqr 9)) (sqr 2));2.25

;63 funcion que calcula la raiz cuadrada
; (sqrt x) → number
;   x : number
(+ (sqrt 2) (* (sqrt 3) (sqrt 4))) ;#i4.878315177510849
(* (sqrt (- 2)) (sqrt (/ 16 2))) ;#i0.0+4.000000000000001i
(/ (sin (sqrt pi)) (sqrt 2)) ;#i0.6927779216257759

;64 funcion que dismunye el numero dado 
; (sub1 x) → number
;   x : number
(+ (sub1 2) (* (sub1 3) (sub1 4))); 7
(* (sub1 (- 2)) (sub1 (/ 16 2))) ;-21
(/ (cos (sub1 pi)) (sub1 2));#i-0.5403023058681397

;65 funcion tangente
;(tan x) → number
 ; x : number
 (* (tan pi) (tan (/ pi 2))) ;#i-2.0
(/ (tan (* pi 2)) (tan pi)) ;#i2.0
(+ (tan pi) (tan 0)) ;#i-1.2246467991473532e-16

;66 Funcion que determina si es un cero o no
 ;(zero? x) → boolean?
  ;x : number
(zero? 0); devuelve #t
(zero? 0.0); devuelve #t
(zero? -0.0); devuelve #t

;; -------------------------------- 1.6 Booleans -------------------------------------------------

;67 funcion que Produce una cadena para el booleano dado
; (boolean->string x) → string
;   x : boolean?
(boolean->string #t) ; devuelve "true"
(boolean->string #f); devuelve "false"
(boolean->string (zero? (+ (* 2 (expt 3 2)) (- (sin pi) (cos (* 2 pi)))))) ;"#false"

;68 funcion  que determina cualqioera que dos boleanos si son iguales
; (boolean=? x y) → boolean?
  ;x : boolean?
  ; y : boolean?
(boolean->string (boolean=? (zero? (sin (* pi 3))) (zero? (- (cos (* pi 2)) 1))));"#false"
(boolean=? #t #t); devuelve #t
(boolean=? #f #f); devuelve #t

;69 funcion que Determines whether some value is a boolean.
;(boolean? x) → boolean?
; x : any/c
(boolean? #t); devuelve #t
(boolean? #f); devuelve #t
(boolean? 1); devuelve #f

;70 funcion que determina si cualquier valor es falso
; (false? x) → boolean?
;   x : any/c
(and (false? (zero? (sin (* pi 3)))) (not (false? (zero? (- (cos (* pi 2)) 1))))) ;#true
(and (false? 0) (not (false? (* 2 3)))) ;false
(or (false? (sqrt 16)) (not (false? (expt 2 3)))) ;true

;71 funcion que niega el valor boleano
;(not x) → boolean?
;  x : boolean?
(not (and (false? 0) (false? (* 2 3)))) ;true
(not (or (false? (sqrt 16)) (false? (expt 2 3)))) ;true
(not (false? (zero? (- (cos (* pi 2)) 1)))) ;true
; final