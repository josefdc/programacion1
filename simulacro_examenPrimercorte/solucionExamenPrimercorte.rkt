#lang racket

;Problema 1. Un almacén que vende camisas y pantalones, cada uno con un precio de venta P1 y P2 
;respectivamente, tiene el siguiente esquema de descuentos: por compras inferiores a $70.000 no hay 
;descuento, para compras hasta $150.000 un 6% de descuento y para compras superiores a $150.000 un 12% 
;de descuento. Se desea generar la factura de una compra realizada por un cliente, 
;la cual debe contener: el numero de unidades vendidas de camisas y pantalones, el valor bruto de la 
;venta por camisas y por pantalones, el valor bruto de la compra total, el valor del descuento, el
;valor neto de la compra, el monto del IVA y el valor a pagar. Suponga que el IVA aplicado es del 16%
;sobre el valor neto.

; solución
;hagamos la condicion de descuentos
(define (descuento a)
    (if (< a  70000)
        a
    (if (and (>= a 70000)(< a  150000))
        (- a  (* a  0.06))
    (if (>= a  150000)
        (- a  (* a  0.12))
    0))))

;hagamos la condicion de IVA
(define (iva a)
    (* a  0.16))

;; definamos la funcion principal
(define (main)
    (display "ingrese el numero de camisas vendidas: ")
    (newline)
    (define camisas (read))
    (display "ingrese el numero de pantalones vendidos: ")
    (newline)
    (define pantalones (read))
    (display "ingrese el precio de venta de las camisas: ")
    (newline)
    (define pcamisas (read))
    (display "ingrese el precio de venta de los pantalones: ")
    (newline)
    (define ppantalones (read))
    (display "el valor bruto de la venta de camisas es: ")
    (newline)
    (display (* camisas pcamisas))
    (newline)
    (display "el valor bruto de la venta de pantalones es: ")
    (newline)
    (display (* pantalones ppantalones))
    (newline)
    (display "el valor bruto de la compra es: ")
    (newline)
    (display (+ (* camisas pcamisas) (* pantalones ppantalones)))
    (newline)
    (display "el valor del descuento es: ")
    (newline)
    (display (- (+ (* camisas pcamisas) (* pantalones ppantalones)) (descuento (+ (* camisas pcamisas) (* pantalones ppantalones)))))
    (newline)
    (display "el valor neto de la compra es: ")
    (newline)
    (display (descuento (+ (* camisas pcamisas) (* pantalones ppantalones))))
    (newline)
    (display "el monto del IVA es: ")
    (newline)
    (display (iva (descuento (+ (* camisas pcamisas) (* pantalones ppantalones)))))
    (newline)
    (display "el valor a pagar es: ")
    (newline)
    (display (+ (iva (descuento (+ (* camisas pcamisas) (* pantalones ppantalones)))) (descuento (+ (* camisas pcamisas) (* pantalones ppantalones)))))
    (newline)
    (display "fin del programa")
    (newline)
    (newline)

;; Problema #2
Problema 2. Calcular el precio de un terreno rectangular del cual se tiene: el largo, el ancho 
y el precio por metro cuadrado. Si el terreno tiene mas de 400 metros cuadrados se hace un descuento 
del 10%, si tiene mas de 500 metros cuadrados el descuento es del 17% y si tiene mas 1000 metros
cuadrados el descuento es del 25%.


; solución
;hagamos la condicion de descuentos del terreno  teniendo en cuenta el area

(define (descuento a)
    (if (< a  400)
        a
    (if (and (>= a 400)(< a  500))
        (- a  (* a  0.1))
    (if (and (>= a 500)(< a  1000))
        (- a  (* a  0.17))
    (if (>= a  1000)
        (- a  (* a  0.25))
    0)))))

;; definamos la funcion principal
(define (main)
    (display "ingrese el largo del terreno: ")
    (newline)
    (define largo (read))
    (display "ingrese el ancho del terreno: ")
    (newline)
    (define ancho (read))
    (display "ingrese el precio por metro cuadrado: ")
    (newline)
    (define precio (read))
    (display "el precio del terreno es: ")
    (newline)
    (display (descuento (* largo ancho precio)))
    (newline)
    (display "fin del programa")
    (newline)
    (newline))


;; problema #3
;Problema 3. Se necesita escribir un programa para calcular la cantidad a cobrar a un cliente por 
;el uso de un parqueadero. El programa debe solicitar al usuario el dia de la semana, la hora 
;(hora y minutos) de entrada, y la hora de salida del parqueadero. EI parqueadero tiene las 
;siguientes tarifas:

;   — de lunes a viernes cobra $2000 por hora o fraccién de parqueo. El valor maximo a cobrar es de $6000.
; — en fines de semana cobra una tarifa unica de $2000

; Solucion
;hagamos la condicion de dias de la semana
(define (dias a)
    (if (or (string=? a "lunes")(string=? a "martes")(string=? a "miercoles")(string=? a "jueves")(string=? a "viernes"))
        "laboral"
    (if (or (string=? a "sabado")(string=? a "domingo"))
        "fin de semana"
    "error")))
;hagamos la condicion de horas
(define (horas a)
    (if (and (>= a  0)(< a  24))
        a
    "error"))
;hagamos la condicion de minutos
(define (minutos a)
    (if (and (>= a  0)(< a  60))
        a
    "error"))
;hagamos la condicion de tarifas
(define (tarifa a)
    (if (string=? a "laboral")
        2000
    (if (string=? a "fin de semana")
        2000
    "error")))
;hagamos la condicion de valor maximo
(define (maximo a)
    (if (string=? a "laboral")
        6000
    (if (string=? a "fin de semana")
        2000
    "error")))
;hagamos la condicion de valor a pagar
(define (valor a b c d e f)
    (if (string=? a "laboral")
        (if (<= (* b c) 6000)
            (* b c)
        6000)
    (if (string=? a "fin de semana")
        2000
    "error")))
;hagamos la condicion de tiempo
(define (tiempo a b c d e f);a=hora de entrada, b=minutos de entrada, c=hora de salida, 
;d=minutos de salida, e=hora de entrada, f=minutos de entrada
    (if (string=? a "laboral")
        (if (<= (* b c) 6000)
            (* b c)
        6000)
    (if (string=? a "fin de semana")
        2000
    "error")))
;hagamos la funcion principal   
(define (main)
    (display "ingrese el dia de la semana: ")
    (newline)
    (define dia (read))
    (display "ingrese la hora de entrada: ")
    (newline)
    (define hora (read))
    (display "ingrese los minutos de entrada: ")
    (newline)
    (define minutos (read))
    (display "ingrese la hora de salida: ")
    (newline)
    (define hora (read))
    (display "ingrese los minutos de salida: ")
    (newline)
    (define minutos (read))
    (display "el valor a pagar es: ")
    (newline)
    (display (valor (dias dia) (tarifa (dias dia)) (horas hora) (minutos minutos) (horas hora) (minutos minutos)))
    (newline)
    (display "fin del programa")
    (newline)
    (newline))



