#lang racket
;; programa 2
;; Realice el sigueinte programa en Racket
;;se ofrece 4 terreno (rectangular) del cual se tiene: el largo, el ancho y el precio por metro cuadrado
;; un cliente  desea comprar los 4 lotes de la sguiente manera de mayor a menor precio y se realizan
;; los siguientes descuentos: (lote 1 con un 10% de descuento < lote 2 con un 20% de descuento < lote 3 con un 30% de descuento y lote 4 con un 50% de descuento)
;; determinar el valor total de los 4 lotes.
;; realizar la mayor cantidad de funciones (minimo 4)

;; definimos la funcion que calcula el area de un terreno
(define (area_terreno largo ancho)
    (* largo ancho))


;; definimos la funcion menor que dos numeros
(define (menor_2 a b)
    (if (< a b) 
    a b))
;;definimos la funcion que menor que tres numeros
(define (menor_3 a b c)
    (menor_2 (menor_2 a b) c))
;; definimos la funcion que menor que cuatro numeros

(define (menor_4 a b c d)
    (menor_2 (menor_3 a b c) d))

;; definimos la funcion que calcula el valor de un terreno
(define (valor_terreno largo ancho precio)
    (* (area_terreno largo ancho) precio))

;; definimos la funcion que calcula el descuento de un terreno basado en el area
(define (descuento_terreno largo ancho precio)
    (if (equal? (menor_4 (area_terreno 5 4) (area_terreno 3 4) 
    (area_terreno 3 3) (area_terreno 2 2)) (area_terreno 5 4))
    (* (area_terreno largo ancho) (* precio 0.1))
    (if (equal? (menor_4 (area_terreno 5 4) (area_terreno 3 4) 
    (area_terreno 3 3) (area_terreno 2 2)) (area_terreno 3 4))
    (* (area_terreno largo ancho) (* precio 0.2))
    (if (equal? (menor_4 (area_terreno 5 4) (area_terreno 3 4) 
    (area_terreno 3 3) (area_terreno 2 2)) (area_terreno 3 3))
    (* (area_terreno largo ancho) (* precio 0.3))
    (* (area_terreno largo ancho) (* precio 0.5)))))


;; lote 1 = largo 5 ancho 4 precio 100
;; lote 2 = largo 3 ancho 4 precio 500
;; lote 3 = largo 3 ancho 3 precio 800

;; definiamos la funcion principal con los datos dados

(define (main)
    (display "El valor total de los 4 lotes es: ")
    (display (+ (valor_terreno 5 4 100) (valor_terreno 3 4 500) (valor_terreno 3 3 800) (valor_terreno 3 3 800)))
    (newline)
    (display "El valor total de los 4 lotes con descuento es: ")
    (display (- (+ (valor_terreno 5 4 100) (valor_terreno 3 4 500) (valor_terreno 3 3 800) 
    (valor_terreno 2 2 1000)) (+ (descuento_terreno 5 4 100) (descuento_terreno 3 4 500) 
    (descuento_terreno 3 3 800) (descuento_terreno 2 2 1000))))
    (newline)
    )


;; llamamos la funcion main
(main)

;; programa 3
;; Realice el sigueinte programa en Racket 
;; un programa que muestre el numero en lerasa de 1 a 999 a traves de composicion de funciones

;; definimos la funcion que convierte un numero en letras

;; definimos la unidades utilizando if

(define (unidades n)
    (if (equal? n 1) "uno"
    (if (equal? n 2) "dos"
    (if (equal? n 3) "tres"
    (if (equal? n 4) "cuatro"
    (if (equal? n 5) "cinco"
    (if (equal? n 6) "seis"
    (if (equal? n 7) "siete"
    (if (equal? n 8) "ocho"
    (if (equal? n 9) "nueve"
    "cero"))))))))))

;; definimos la funcion de decenas
(define (decenas n)
(if (equal? n 1) "diez"
    (if (equal? n 2) "veinte"
    (if (equal? n 3) "treinta"
    (if (equal? n 4) "cuarenta"
    (if (equal? n 5) "cincuenta"
    (if (equal? n 6) "sesenta"
    (if (equal? n 7) "setenta"
    (if (equal? n 8) "ochenta"
    (if (equal? n 9) "noventa"
    "cero"))))))))))

;; definimos centenas
(define (centenas n)
(if (equal? n 1) "cien"
    (if (equal? n 2) "doscientos"
    (if (equal? n 3) "trescientos"
    (if (equal? n 4) "cuatrocientos"
    (if (equal? n 5) "quinientos"
    (if (equal? n 6) "seiscientos"
    (if (equal? n 7) "setecientos"
    (if (equal? n 8) "ochocientos"
    (if (equal? n 9) "novecientos"
    "cero"))))))))))

;; definimos la funcion que determina las unidades decenas y centenas de un numero

(define (detector_digitos n) ; n es un numero entero
  (define cent (quotient n 100)) ; cent es el numero de centenas de n quotient 
  (define dec (quotient (remainder n 100) 10))
  (define uni (remainder n 10))
  (if (= n 0)
      "cero"
      (string-append
       (if (= n 100)
           (centenas cent)
           (if (< n 100)
               (unidades uni)
               (centenas cent)))
       (if (and (not (= dec 0)) (not (= dec 1)))
           (string-append " " (decenas dec))
           "")
       (if (and (not (= dec 1)) (not (= uni 0)))
           (string-append " " (unidades uni))
           (if (= dec 1)
               (string-append " " (decenas (+ 1 uni)))
               "")))))
            
;; definimos la funcion que convierte un numero en letras
(define (num_a_letras n)
  (detector_digitos n))

;; definimos la funcion principal que reciba un numero de 1 a 999 y lo muestre en letras
(define (main)
  (display "Ingrese un numero de 1 a 999: ")
  (define n (read))
  (display (num_a_letras n))
  (newline)
  )

;; llamamos la funcion main
(main)




