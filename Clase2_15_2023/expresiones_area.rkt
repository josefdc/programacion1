#lang racket
#lang racket
;-----figura 1 ------
(displayln "figura 1")
(display "Calculo del perimetro de un cuadrado")
(newline)
(display "Formula del perimetro de un cuadrado P = 4 * L y del area es L*L ")
(newline)
(display "Digite el valor del lado ")
(define lado (read))
(display "El perimetro del cuadrado es : ")
(* 4 lado) ; 16 si toma el lado 4
(display "y el area es ")
(* lado lado) ;16 si se toma el lado 4
;------Figura 2-----
(displayln "figura 2")
(define b 4)
(define h 6)
(display "area de un rectangulo ")
(* b h) ;24
(display "perimetro de un rectangulo ")
(* 2 (+ b h)); 20
(display "la diagonal de un rectagulo es ")
(sqrt (+ (sqr h) (sqr b))) ; 7.2111
;-------Figura 3-------
(displayln "figura 3")
(define l 4)
(define D 3)
(define d 2)
(display "area de un rombo ")
(/ (* D d) 2) ;3
(display "perimetro de un rombo ")
(* 4 l);16
;------figura 4 -------
(displayln "figura 4")
(define b 4)
(define B 8)
(define h 3)
(display "area de un trapecio ")
(/ (* (+ B b) h) 2) ;18
;------figura 5 ------

(displayln "figura 5")
(define a 4)
(define b 4)
(define c 4)
(define h 3)
(display "area de un rectangulo ")
(/ (* b h) 2) ;6
(display "perimetro de un rectangulo ")
(+ (+ a b) c ); 12
;------ figura 6 -------
(displayln "figura 6")
(define T1 4)
(define T2 4)
(define T3 4)
(define T4 3)
(display "area de un poligono ")
(+ (+ T3 (+ T1 T2))T4) ;15
; -------- Figura 7-------
(displayln "figura 7")
(define l 3)
(define P (* 6 l))
(define a 3.5)
(display "area de un poligono regular ")
(/ (* P a) 2) ;31.5
(display "Perimetro de un poligono regular " )
(display P);18
;-------- FIgura 8 --------
(displayln "figura 8 ")
(define r 3)
(display "la circunferencia de un ciruculo es ")
(*( * 2 pi)r);18.84
;---------figura 9------
(display "Figura 9")
(define h 6)
(define a 5)
(define b 4)
(display "El perimetro del romboide es: ")
(* 2 (+ a b));18
(display "El area del romboide es: ")
(* b h);24
;------figura 10-----.
(displayln "Figura 10")
(define alpha 136)
(define r 5)
(display " el arco de circunferencia es ")
(/ (*(* (* 2 pi) r)alpha) 360) ;11.8682
;----figura 11-----
 (displayln "Figura 11")
(define r 5)
(display " el area de un circulo es ")
(* pi (sqr r)) ;78.53
;---figura 12----
(displayln "Figura 12")
(define r 5)
(define alpha 136)
(display " el sector circular es ")
(/ (*(* pi (sqr r) )alpha) 360) ;29.67059
;-------figura 13 -----
(displayln "Figura 13")
(define r 5)
(define R 8)
(display " La corona circular es ")
(* pi (- (sqr R) (sqr r))) ;122.5221
;-------Figura 14--------
(displayln "Figura 14")
(define r 5)
(define R 8)
(define alpha 136)
(display " La corona circular es ")
(/(*(* pi (- (sqr R) (sqr r))) alpha )360) ;46.2861
;------ FIgura 15------
(displayln "Figura 15")
;------Figura 16------
(displayln "Figura 16")
(define a 4)
(display "El area de un tetaedro ")
(* (sqrt 3) (sqr a));27.7128
(display "El volumen de un tetaedro ")
(/ (* (sqrt 2)(*(sqr a) a))12) ; 7.5424
;------- Figura 17-----
(displayln "Figura 17")
(define a 4)
(display "El area de un octaedro ")
(* 2 (sqrt 3) (sqr a));55.45
(display "El volumen de un octaedro ")
(/ (* (sqrt 2)(*(sqr a) a))3) ; 30.1669
;------ figura 18 ------
(displayln "Figura 18")
(define a 4)
(display "El area de un Icosaedro ")
(* 5 (sqrt 3) (sqr a));138.5640
(display "El volumen de un Icosaedro ")
(/ (*(* 5 (+ 3 (sqrt5)))(expt a 3))12) ; 139.6284
;-------figura 19-------
(displayln "Figura 19")
(define a 4)
(define ap 6)
(display "El area de un Dodeacaedro ")
(* 30 (* a ap);720
(display "El volumen de un Dodeacaedro ")
(/ (*(+ 15 (* 7 (sqrt 5))) (expt a 3)) 4) ; 490.4346
;------figura 20------
(displayln "Figura 20")
(define a 4)
(display "La diagonal del cubo es ")
(* (sqrt 3) a) ;6.9298
display "El area lateral de un Dodecaedro es ")
((* 4 (sqr a)) ;64
(display "El area total de un cubo es ")
(expt a 3) ; 64
