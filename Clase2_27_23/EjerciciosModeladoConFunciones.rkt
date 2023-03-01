#lang racket

;;- Los contadores siempre usan programas que calculan los impuestos basados en el pago de 
;;las personas. El impuesto que tienen que pagar es del 15 % del pago 
;;que hagan las personas. Hacer un programa que calcule dicho impuesto.

;Definimos la multiplicacion y el impuesto
(define (multiplicacion a b)
  (* a b))

(define (impuesto pago)
  (multiplicacion 0.15 pago))    

(define (principal)
  (display "Ingrese el pago: ")
  (newline)
  (define pago (read))
  (display "El impuesto es: ")
  (display (impuesto pago))
  (newline)
  (display "El pago es: ")
  (display (multiplicacion pago 0.85))
  (newline)
  (display "El pago total es: ")
  (display pago)
  (newline)
  (display "Gracias por su pago")
  (newline)
  (display "Vuelva pronto")
  (newline)
  (display "Fin del programa")
)
;; Llamamos a la funcion principal
(principal)
;------------------------2---------------------------
;;El supermercado "El Ahorrito" necesita un programa que calcule el valor de una bolsa de monedas. 
;;Defina un programa que reciba el número de monedas de:  $20, $50,  $100, $ 200$ y  500$ que hay 
;;en la bolsa y devolver la cantidad de dinero que hay en ella. 
;;(Asumir que el primer parámetro corresponde a la cantidad de monedas de  $20, el segundo a las de 50$, y así sucesivamente)

;Definimos la multiplicacion 
(define (multiplicacion a b)
  (* a b))

;; definamos la suma
(define (suma a b)
  (+ a b))

;; numero de monedas de 20
(define (moneda20 a)
  (multiplicacion 20 a)
  )

;; numero de monedas de 50
(define (moneda50 a)
  (multiplicacion 50 a)
  )
;; numero de monedas de 100
(define (moneda100 a)
  (multiplicacion 100 a)
  )
;; numero de monedas de 200
(define (moneda200 a)
  (multiplicacion 200 a)
  )
;; numero de monedas de 500
(define (moneda500 a)
  (multiplicacion 500 a)
  )

;; Definimos la funcion principal

(define (principal)
  (display "Ingrese el numero de monedas de 20: ")
  (newline)
  (define monedas20 (read))
  (display "Ingrese el numero de monedas de 50: ")
  (newline)
  (define monedas50 (read))
  (display "Ingrese el numero de monedas de 100: ")
  (newline)
  (define monedas100 (read))
  (display "Ingrese el numero de monedas de 200: ")
  (newline)
  (define monedas200 (read))
  (display "Ingrese el numero de monedas de 500: ")
  (newline)
  (define monedas500 (read))
  (display "El valor de la bolsa es: ")
  (display (suma (suma (suma (suma (moneda20 monedas20) (moneda50 monedas50)) 
  (moneda100 monedas100)) (moneda200 monedas200)) (moneda500 monedas500)))
  (newline)
  (display "Gracias por su compra")
  (newline)
  (display "Vuelva pronto")
  (newline)
  (display "Fin del programa")
)

;; Llamamos a la funcion principal
(principal)


;;------------------------3---------------------------
;;Se desea hacer un programa que calcule las ganancias de un teatro para una presentación.
;; Cada cliente paga $ 10.000$ por entrada y cada función le cuesta al teatro $ 300.000
;; por la atención prestada y por cada cliente que entre, el teatro debe pagar un costo de $ 2.000
;; por aseo. Desarrolle un programa que reciba el número de clientes de una función y devuelva 
;; el valor de las ganancias obtenidas.

;; Definimos la multiplicacion
(define (multiplicacion a b)
  (* a b))

;; Definimos la suma
(define (suma a b)
  (+ a b))

;; Definamos resta
(define (resta a b)
  (- a b))

;; funcion para calcular el costo de la funcion
(define (costoFuncion 300000))

;; funcion para calcular el costo de aseo
(define (costoAseo a)
  (multiplicacion 2000 a)
  )
;; funcion para calcular el costo total
(define (costoTotal a)
  (suma costoFuncion  (costoAseo a))
  )
;; funcion para calcular las ganancias
(define (ganancias a)
  (multiplicacion 10000 a)
  )
;; funcion para calcular el valor de las ganancias
(define (valorGanancias a)
  (resta (ganancias a) (costoTotal a))
  )

;; Definimos la funcion principal
(define (principal)
  (display "Ingrese el numero de clientes: ")
  (newline)
  (define clientes (read))
  (display "El valor de las ganancias es: ")
  (display (valorGanancias clientes))
  (newline)
  (display "Gracias por su compra")
  (newline)
  (display "Vuelva pronto")
  (newline)
  (display "Fin del programa")
)

;; Llamamos a la funcion principal
(principal)
