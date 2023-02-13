
;; PROGRAMACION 1
;; Jose Felipe Daurte Coronado 1003661694
;; Programa #1
;; PUNTO (a) PASAR EN NOTACION PREFIJA EN DR RACKET
;P_1(2*3)+5 
;P_2((2*3)+5 )
;P_3(+ (* 2 3) 5)-> 11
;-----d------
;8/((2*3)/6)
;(8/((2*3)/6))
;(/ 8 (/ (* 2 3)6))->8
;-----g------
;5+(3*8)+1
;(5+(3*8)+1)
;(+ 5(* 3 8) 1)-> 30
;-----b-----
;(5+2)*3
;((5+2)*3)
;(*(+ 5 2) 3)->21
;----e-----
;(6*3)/(8 * 2)
;((6*3)/(8 * 2))
;( / (* 6 3) (* 8 2)) ->1.125
;-----i-----
;((3+4)*8)+2
;(((3+4)*8)+2)
;(+ (* (+ 3 4) 8)2)->58
;----c-----
;(1+4)*(4+6)
;((1+4)*(4+6))
;(* (+ 1 4) (+ 4 6)) -> 50
;-----f-----
;5+(6/2) +3
;(5+(6/2) +3)
;(+ 5 (/ 6 2) 3) ->11


;; PUNTO (b)
;;PASAR EN NOTACION PREFIJA EN DR RACKET
; (3 + ((8-2)-4))/6
; ((3 + ((8-2)-4))/6)
; (/ (+  (-  (- 8 2)4)3)6) ->5/6
; ------b------
; (5*(75/15))+(4*(4-1))+(2*(7+4))
; ((5*(75/15))+(4*(4-1))+(2*(7+4)))
; (+ (+(* 5 (/ 75 15)) (* 4 (- 4 1))) (* 2 (+ 7 4))) ->59
;------c--------
; ((15/(8-3))+ (4*(6+2))) * 2
; (((15/(8-3))+ (4*(6+2))) * 2)
; (* (+ (/ 15 (- 8 3))(* (+ 6 2)4))2) ;->70
;-----d-------
; (8+3)*(40-(7*4))
; ((8+3)*(40-(7*4)))
; (* (+ 8 3)(- 40 (* 7 4)))->132
;---------------------------------------------------------------------------------------------
;;PROGRAMA 2
;; (a) Evaluar las expresiones numéricas para los valores indicados de las diferentes 
;; variables y pasar a notación prefija (utilizar define, newline, display etc)
; (define a  6)
; (define b 8)
; (define PVP 7)
;((a + b) / PVP) + 2
;(((a + b) / PVP) + 2)
; (+ (/ (+ a b)PVP)2) -> 4
; -------b-------
; (define PVP  2)
; (define TASA 3)
; (define IVA 16)
; IVA * (IVA – 4) * Tasa * PVP
; (IVA * (IVA – 4) * Tasa * PVP)
; (* IVA (- IVA 4) TASA PVP) -> 1152
; ------c-------
; (define a  3)
; (define b 6)
; (define c 4)
; ((a + 7) * c) / (b + 2 - a) + (2 * b) 
; (/ (*(+ a 7) c)(+ (-(+ b 2)a)(* 2 b)) -> 40/17
; -------d--------
;  (define a 3 )
;  (define b 6 )
;  ( (a + 5) * 3) / ((2 * b) – b) 
;  ( ( (a + 5) * 3) / ((2 * b) – b) )
;  (/(*(+ a 5)3)(-(* 2 b)b)) -> 4

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
-------c---------
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
-------d---------
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
(/ (+ m (/ n p ))(- q (/ r s)))
