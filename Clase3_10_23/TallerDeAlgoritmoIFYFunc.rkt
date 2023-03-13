;; crea un algoritmo que lea dos numeros y muestre el mayor

(define (mayor a b)
    (if (> a b)
        a
        b))
(mayor 5 6)

;; crea un algoritmo que lea dos numeros y los muestre de forma 
;; ascendente
(define (ascendente a b)
    (if (> a b)
        (begin (displayln b) 
        (display a))
        (begin (displayln a)
        (display b))))


(ascendente 5 6);

;; Leer un numero , si es mayor que 0, guardelo llamada en una 
;; variable llamada POSITIVO, de lo contralio multipliquelo por el mismo
;; y muestre el resultado

(define (positivo a)
    (if (> a 0)
        (define POSITIVO a)
        (* a a)))

;; En un almacen se hace un 20% de descuento a los clientes cuya
;; compra supere los $100000, Cual sera la cantidad que pagara una 
;; persona por su compra?

(define (descuento a)
    (if (> a 100000)
        (* a 0.8)
        a))

;; Hacer un algoritmo que calcule el total a pagar por la compra de
;; camisas. Si se compran tres camisas o mas se aplica un descuento
;; del 20% sobre el total de la compra y si son menos de tres camisas
;; un descuento del 10%

(define (camisas a)
    (if (> a 3)
        (* a 0.8)
        (* a 0.9)))

;; Calcular el total que una persona debe pagar en un almacen de llantas
;; si el precio de cada llanta es de $80000