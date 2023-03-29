#lang racket

; Hacer un algoritmo que lea dos numeros y los
; los muestre de fonda ascendente

;definimos una funcion que ordene dos numeros
(define (orden a b)
(cond ((< a b) (display a) (display " ") (display b)) 
        ( ( < b a ) (display b) (display " ") (display a))
        (else (display a) (display " ") (display b))
        ))

(define (principal)
(display "Ingrese el primer numero: ")
(define a (read))
(display "Ingrese el segundo numero: ")
(define b (read))
(orden a b)
)

(principal)

;------------2-------------

; En un almacen se hace un 20% de descuento a los clientes cuya compra supere los $100.000
; ¿Cual sera la cantidad que pagara una persona por su compra?

;definimos una funcion que calcule el descuento
(define (descuento a)
(cond ((> a 100000) (display "El descuento es: ") (display (* a 0.2)) (display " y el total a pagar es: ") (display (- a (* a 0.2))))
        (else (display "El total a pagar es: ") (display a))
        ))

(define (principal)
(display "Ingrese el valor de la compra: ")
(define a (read))
(descuento a)
)

(principal)

;------------3-------------

; Calcular el total que una persona debe pagar en una tienda de llantas, si el precio
; de cada llanta es de $80.000 si se compran menos de 5 llantas y de $70.000 si se compran 5 o mas

;definimos una funcion que calcule el descuento
(define (descuento a)
(cond ((> a 5) (display "El total a pagar es: ") (display (* a 70000)))
        (else (display "El total a pagar es: ") (display (* a 80000)))
        ))

(define (principal)
(display "Ingrese la cantidad de llantas: ")
(define a (read))
(descuento a)
)
;------------4-------------
; Hacer un algoritmo que lea tres numeros y muestre el mayor de ellos

;definimos una funcion que ordene tres numeros
(define (orden a b c)
(cond ((and (> a b) (> a c)) (display a))
        ((and (> b a) (> b c)) (display b))
        ((and (> c a) (> c b)) (display c))
        (else (display "Los numeros son iguales"))
        ))

(define (principal)
(display "Ingrese el primer numero: ")
(define a (read))
(display "Ingrese el segundo numero: ")
(define b (read))
(display "Ingrese el tercer numero: ")
(define c (read))
(orden a b c)
)

(principal)

;------------5-------------
;Muestre en pantalla el nombre y la edad de una persona, si es mujer 
; mayor de edad y casada, si es hombre solo muestre el nombre.

; definamos la funcion que muestre el nombre y la edad

(define (nombreedad a b c d)
  (cond ((and (equal? a "mujer") (> b 18) (equal? c "casada")) 
         (begin 
           (display "Nombre: ") 
           (display d) 
           (display " Edad: ") 
           (display b)))
        ((and (equal? a "hombre")) 
         (begin 
           (display "Nombre: ") 
           (display d)))
        (else 
         (display "No cumple con los requisitos"))))

(define (principal)
  (display "Ingrese el genero (mujer / hombre): ")
  (define a (read))
  (display "Ingrese la edad: ")
  (define b (read))
  (display "Ingrese el estado civil (casada / soltera): ")
  (define c (read))
  (display "Ingrese el nombre: ")
  (define d (read))
  (nombreedad a b c d))

(principal)


;------------6-------------
; una campaña de seguros esta abriendo un departamento de mercadeo
; y estalecio un programa para captar clientes, que consiste en lo siguiente:
; Si el monto por el que se efectura el seguro es menor a $500000 la cuota a pagar
; sera por el 3% del monto, y si el monto es mayor o igual a $500000 la cuota a pagar
; sera el 2% del monto. La afianzadora desea determinar cual sera la cuota que debe
; pagar un cliente.

;definimos una funcion que calcule el descuento
(define (descuento a)
(cond ((> a 500000) (display "La cuota a pagar es: ") (display (* a 0.02)) (display " y el total a pagar es: ") (display (- a (* a 0.02))))
        (else (display "La cuota a pagar es: ") (display (* a 0.03)) (display " y el total a pagar es: ") (display (- a (* a 0.03))))
        ))

(define (principal)
(display "Ingrese el valor del seguro: ")
(define a (read))
(descuento a)
)


;------------7-------------










