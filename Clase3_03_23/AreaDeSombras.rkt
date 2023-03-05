#lang racket
;; definimos la funcion multiplicacion
(define (multiplicacion a b)
  (* a b)
  )
;; definimos la funcion suma
(define (suma a b)
  (+ a b)
  )
;; definimos la funcion resta
(define (resta a b)
  (- a b)
  )
;; definimos la funcion division
(define (division a b)
  (/ a b)
  )
;;-------a----------
;;Figura1, Area de un cuadrado menos el area de un triangulo

;; definimos la funcion area de un cuadrado
(define (area-cuadrado a)
  (multiplicacion a a)
  )
;; definimos la funcion area de un triangulo
(define (area-triangulo b h) ;; h es la altura
  (division (multiplicacion b h) 2)
  )
;; definimos la funcion area de la figura
(define (area-figura a b h)
  (resta (area-cuadrado a) (area-triangulo b h))
  )
;; Probamos la funcion con los valores dados
(area-figura 4 3 2)
;;-------b----------
;;Figura2, Area de un cuadrado menos el area de un cuadrado menor con un circulo dentro


;; definimos la funcion area de un circulo
(define (area-circulo1 R)
  (multiplicacion 3.1416 (multiplicacion R R))
  )

(define (area-circulo2 r)
  (multiplicacion 3.1416 (multiplicacion r r))
  )
;; area cuadrado menor
(define (area-cuadrado-menor a)
   (area-cuadrado a) 
  )
;:  definimos la funcion area de la figura, anillo cuadrado
(define (area-AnilloCuadrado a b)
  (resta (area-cuadrado a) (area-cuadrado-menor b))
  )
;; el area del anillo 
(define (area-Anillo R r)
  (resta (area-circulo1 R) (area-circulo2 r))
  )

;; Area de la figura 2
(define (area-figura2 a b R r)
  (suma (area-AnilloCuadrado a b) (area-Anillo R r))
  )

;; llamamos a la funcion
(area-figura2 4 3 2 1);16.4248

;;-------c----------
;;Figura3, area de un trapecio menos el area de un trapecio menor

;; definimos la funcion area de un trapecio
(define (area-trapecio b B h)
  (division (multiplicacion (suma b B) h) 2)
  )
;; definimos la funcion area de un trapecio menor
(define (area-trapecio-menor b1 B2 h2)
  (area-trapecio b1 B2 h2)
  )
;; definimos la funcion area de la figura
(define (area-figura3 b B h b1 B2 h3)
  (resta (area-trapecio b B h) (area-trapecio-menor b1 B2 h3))
  )
;; llamamos a la funcion
(area-figura3 4 3 2  2 1 0.5);6.25

;;-------d----------
;;Figura4, area de dos anillos circulares

;; definimos la funcion area de un anillo circular
(define (area-anillo-circular R r)
  (resta (area-circulo1 R) (area-circulo2 r))
  )

;; definimos la funcion de un nuevo circulo
(define (area-circulo3 R)
  (area-circulo1 R)
  )
;; definimos la funcion area de la figura
(define (area-figura4 R r R1 )
  (suma (area-anillo-circular R r) (area-circulo3 R1))
  )
;; llamamos a la funcion
(area-figura4 5 4 1);31.4159

;;-------e----------
;;Figura5, area de un triangulo grande menos uno pequeño + area de un triangulo menos un anillo circular

;; definimos la funcion area de un triangulo
(define (area-triangulo1 b h)
  (area-triangulo b h)
  )
;;definimos la funcion de un triangulo menor
(define (area-triangulo-menor b1 h1)
  (area-triangulo b1 h1)
  )
;; definimos la funcion area de un anillo circular
(define (area-anillo-circular1 R r)
  (area-anillo-circular R r)
  )

;; definimos la funcion de la mitad de la figura (triangulo grande - triangulo pequeño)

(define (area-mitad-figura b B h b1)
  (resta (area-triangulo1 b B) (area-triangulo-menor b1 h))
  )
;; definimos la funcion area de otra mitad de la figura (triangulo - anillo circular)
(define (area-mitad-figura2 b h R r)
  (resta (area-triangulo1 b h) (area-anillo-circular1 R r))
  )
;; definimos la funcion area de la figura
(define (area-figura5 b B h b1 h1 R r)
  (suma (area-mitad-figura b B h b1) (area-mitad-figura2 b h R r))
  )
;; llamamos a la funcion
(area-figura5 4 3 2 1 0.5 2 1);10.5 