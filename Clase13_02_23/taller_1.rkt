#lang racket


;; PROGRAMACION 1
;; Jose Felipe Daurte Coronado 1003661694
;; Programa #1
;; PUNTO (a) PASAR EN NOTACION PREFIJA EN DR RACKET
;P_1(2*3)+5 
;P_2((2*3)+5 )
P_3(+ (* 2 3) 5) ;-> 11
;-----d------
;8/((2*3)/6)
;(8/((2*3)/6))
(/ 8 (/ (* 2 3)6)) ;)->8
;-----g------
;5+(3*8)+1
;(5+(3*8)+1)
(+ 5(* 3 8) 1);-> 30
;-----b-----
;(5+2)*3
;((5+2)*3)
(*(+ 5 2) 3);->21
;----e-----
;(6*3)/(8 * 2)
;((6*3)/(8 * 2))
( / (* 6 3) (* 8 2)) ;->1.125
;-----i-----
;((3+4)*8)+2
;(((3+4)*8)+2)
(+ (* (+ 3 4) 8)2);->58
;----c-----
;(1+4)*(4+6)
;((1+4)*(4+6))
(* (+ 1 4) (+ 4 6)) ;-> 50
;-----f-----
;5+(6/2) +3
;(5+(6/2) +3)
(+ 5 (/ 6 2) 3); ->11


;; PUNTO (b)
;;PASAR EN NOTACION PREFIJA EN DR RACKET
; (3 + ((8-2)-4))/6
; ((3 + ((8-2)-4))/6)
 (/ (+  (-  (- 8 2)4)3)6) ;->5/6
; ------b------
; (5*(75/15))+(4*(4-1))+(2*(7+4))
; ((5*(75/15))+(4*(4-1))+(2*(7+4)))
 (+ (+(* 5 (/ 75 15)) (* 4 (- 4 1))) (* 2 (+ 7 4))) ;->59
;------c--------
; ((15/(8-3))+ (4*(6+2))) * 2
; (((15/(8-3))+ (4*(6+2))) * 2)
 (* (+ (/ 15 (- 8 3))(* (+ 6 2)4))2) ;->70
;-----d-------
; (8+3)*(40-(7*4))
; ((8+3)*(40-(7*4)))
 (* (+ 8 3)(- 40 (* 7 4)));->132
;---------------------------------------------------------------------------------------------
;;PROGRAMA 2
;; (a) Evaluar las expresiones numéricas para los valores indicados de las diferentes 
;; variables y pasar a notación prefija (utilizar define, newline, display etc)
(define a  6)
(define b 8)
(define PVP 7)
;((a + b) / PVP) + 2
;(((a + b) / PVP) + 2)
(+ (/ (+ a b)PVP)2) ;-> 4
; -------b-------
 (define PVP  2)
 (define TASA 3)
 (define IVA 16)
; IVA * (IVA – 4) * Tasa * PVP
; (IVA * (IVA – 4) * Tasa * PVP)
 (* IVA (- IVA 4) TASA PVP) ;-> 1152
; ------c-------
 (define a  3)
 (define b 6)
 (define c 4)
; ((a + 7) * c) / (b + 2 - a) + (2 * b) 
 (/ (*(+ a 7) c)(+ (-(+ b 2)a)(* 2 b))); -> 40/17
; -------d--------
  (define a 3 )
  (define b 6 )
;  ( (a + 5) * 3) / ((2 * b) – b) 
;  ( ( (a + 5) * 3) / ((2 * b) – b) )
  (/(*(+ a 5)3)(-(* 2 b)b)); -> 4

;;Punto (b)
;;Escribir las siguientes expresiones matemáticas en forma de expresiones 
;;prefijas (utilizar define, newline, display etc).
;;Ejemplo (define n (read))
;-------a-------
(display "Vamos a calcular (m/n)+1 ")
(newline)
(display "defina m  " )
(define m (read))
(display "defina n  ")
(define n (read))
(display "su resulado es  ")
(+(/ m n)1) ; -> si m = 3 y n = 2 la respuesta es 2*(1/2)
;-------b-------
(display "Vamos a calcular m +(n/p-q) ")
(newline)
(display "defina m  " )
(define m (read))
(display "defina n  " )
(define n (read))
(display "defina p  " )
(define p (read))
(display "defina q  " )
(define q (read))
(display "su resulado es  ")
(+ m (/ n (- p q))) ; -> si m = 3 , n = 3, p = 5 y q = 4 la respuesta es 6
;-------c---------
(display "Vamos a calcular (m + n)/(p - q) ")
(newline)
(display "defina m  " )
(define m (read))
(display "defina n  " )
(define n (read))
(display "defina p  " )
(define p (read))
(display "defina q  " )
(define q (read))
(display "su resulado es  ")
(/ (+ m n)(- p q)) -> ;  si m = 3 , n = 2, p = 6 y q = 4 la respuesta es 2(1/2)
;-------d---------
(display "Vamos a calcular (m + (n/p))/(q - (r/s)) ")
(newline)
(display "defina m  " )
(define m (read))
(display "defina n  " )
(define n (read))
(display "defina p  " )
(define p (read))
(display "defina q  " )
(define q (read))
(display "defina r  " )
(define r (read))
(display "defina s  " )
(define s (read))
(display "su resulado es  ")
(/ (+ m (/ n p ))(- q (/ r s))) ;-> si m = 6 , n = 4, p = 3 , q = 5, r = 2 y s = 1 la respuesta es 2(4/9)
;----------e------------
 (display "Vamos a calcular (m + n)*(p/q) ")
(newline)
(display "defina m  " )
(define m (read))
(display "defina n  " )
(define n (read))
(display "defina p  " )
(define p (read))
(display "defina q  " )
(define q (read))
(display "su resulado es  ")
(* (+ m n)(/ p q));-> si m = 6 , n = 4, p = 3 , q = 5 la respuesta es 6

;;PROGRAMA 3 
;; CALCULE LO SIGUIENTE:
;---Multiplique 5 numeros---
(* 5(* 3(* 4(* 5 6)))) ; 1800
;---Reste dos numeros---
(- 5 3) ;2
;---Sume 5 numeros---
(+ 5(+ 3(+ 4(+ 5 6)))) ;23
;---Divida 3 numeros---
(/ (/ 6 4) 2) ; 3/4
;--- Calcule el valor absoluto de un número---
(abs 3) ;3
;--- Reste 1 (uno) a un número---
(sub1 6) ;5
;--- Calcule el denominador de un número racional---
(denominator (/ 3 5)) ;5
;--- Elevar un número a una potencia dada.---
(expt 2 5) ;32
;--- Calcule la raíz cuadrada de un número---
(sqrt 16) ;4
;--- Calcule el residuo de una división entera---
(modulo 9 2) ;1
;--- Calcule el logaritmo de un número ---
(log pi) ;1.1447298858494002
;--- Calcule el número más grande entre 5 números ---
(max 1 5 3 8 2);8
;--- Calcule el número más pequeño entre 5 números---
(min 1 5 3 8 2 );1
;--- Genere un número aleatorio.----
(random  25) ; 22
;--- Redondee un número ---
(round 22.5) ;22.0
;--- Eleve al cuadrado un número---
(sqr 5) ;25

;; PROGRAMA #4
;; CALCULE LO SIGUEINTE:
;------- Volumen de una esfera -------
(display "Volumen de una Esfera")
(newline)
(display "Formula de Volumen de una Esfera: (4/3) * PI * r^3")
(newline)
(define PI 3.1415)
(display "Digite el radio: ")
(define r (read))
(display "El volumen de la esfera es: ")
(* 4/3 PI (* r r r)) ; si el radio es = 3 la el volumen es 113.094
;-------- Volumen de un cilindro--------
(display "Volumen del Cilindro")
(newline)
(display "Formula de Volumen del Cilindro: PI * r^2 * h")
(newline)
(define PI 3.1415)
(display "Digite el radio: ")
(define r (read))
(display "Digite la altura: ")
(define h (read))
(display "El volumen del Cilindro es: ")
(* PI (* r r) h) ; con r = 4 y h = 5 , el volumen es 251.3200
;-------Volumen de Un cono------
(display "Volumen de un Cono")
(newline)
(display "Formula de Volumen de un Cono: (1/3) * PI * r^2 * h")
(newline)
(define PI 3.1415)
(display "Digite el radio: ")
(define r (read))
(display "Digite la altura: ")
(define h (read))
(display "El volumen del Cono es: ")
(* 1/3 PI (* r r) h) ; con r = 4 y h = 5 , el volumen es 83.77
;-------Volumen de Cono truncado-----
(display "Volumen de un Cono Truncado")
(newline)
(display "Formula de Volumen de un Cono Truncado: (1/3) * PI * h * (r1^2 + r2^2 + r1 * r2)")
(newline)
(define PI 3.1415)
(display "Digite el radio de la base mayor: ")
(define r1 (read))
(display "Digite el radio de la base menor: ")
(define r2 (read))
(display "Digite la altura: ")
(define h (read))
(display "El volumen del Cono Truncado es: ")
(* 1/3 PI h (+ (* r1 r1) (* r2 r2) (* r1 r2)));r1=4 , r2=5 volumen es 255.5086
;------Conversion de Farenheit a Celcius------

(display "Conversión de Farenheit a Celsius")
(newline)
(display "Formula de Conversión: (F - 32) * (5/9)")
(newline)
(display "Digite la temperatura en grados Farenheit: ")
(define F (read))
(display "La temperatura en grados Celsius es: ")
(* (/ (- F 32) (* 5 9))); Farenheith 100, temperatura en grados celsius es 1(23/45)
;------Distancia entre dos puntos------
(display "Distancia entre dos puntos en un plano cartesiano")
(newline)
(display "Formula de Distancia: √((x2 - x1)^2 + (y2 - y1)^2)")
(newline)
(display "Digite la coordenada x1: ")
(define x1 (read))
(display "Digite la coordenada y1: ")
(define y1 (read))
(display "Digite la coordenada x2: ")
(define x2 (read))
(display "Digite la coordenada y2: ")
(define y2 (read))
(display "La distancia entre los puntos es: ")
(sqrt (+ (* (- x2 x1) (- x2 x1)) (* (- y2 y1) (- y2 y1)))); x1 = 2, y1 = 2,x2 = 4, y2 = 4, distancia = 2.8284271247461903
;------Pendiente de una recta-----
(display "Calculo de la Pendiente de una Recta")
(newline)
(display "Formula de Pendiente: (y2 - y1) / (x2 - x1)")
(newline)
(display "Digite la coordenada x1: ")
(define x1 (read))
(display "Digite la coordenada y1: ")
(define y1 (read))
(display "Digite la coordenada x2: ")
(define x2 (read))
(display "Digite la coordenada y2: ")
(define y2 (read))
(display "La pendiente de la recta es: ")
(/ (- y2 y1) (- x2 x1)) ; x1 = 2, y1 = 4, x2 = -5, y2 = 7, m=-3/7
;---Calculo de la hipotenusa teniendo los catetos ---
(display "Calculo de la Hipotenusa de un Triángulo Rectángulo")
(newline)
(display "Formula de Hipotenusa: √(cateto1^2 + cateto2^2)")
(newline)
(display "Digite el valor del primer cateto: ")
(define cateto1 (read))
(display "Digite el valor del segundo cateto: ")
(define cateto2 (read))
(display "El valor de la hipotenusa es: ")
(sqrt (+ (* cateto1 cateto1) (* cateto2 cateto2))) ; cateto1 = 4 , cateto2 = 3, hipotenusa = 5



