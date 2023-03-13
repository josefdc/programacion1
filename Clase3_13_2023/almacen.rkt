;; Un almacén que vende camisas y pantalones,  uno con un precio de venta P1 y P2 respectivamente,cada
;;Esto tiene el siguiente esquema de descuento: para compras por debajo de $ 70,000 no hay descuento para las compras a
;;$ 150,000 por descuento del 6% y para compras de más de $ 150,000 por 12% de descuento.
;;Factura de una compra realizada por un cliente, que debe contener: el ntimero de unidades que venden camisas y
;;pantalones, el valor bruto de la venta por camisas y pantalones, el valor bruto de la compra total, el valor del
;;Descuentos, el valor de compra neto, la cantidad de IVA y el valor a pagar. Suponiendo que el IVA aplicado sea del 16%
;;Sobre el patrimonio neto.

(define (descuentos a)
(if (a < 70000)
  (a
  (if (a < 150000))
    (a - (a * 0.06))
    (a - (a * 0.12)))))

(define (principal)
 (define P1 100000)
 (define P2 50000)
 (display "Ingrese el numero de camisas: ")
 (define camisas (read))
(display "Ingrese el numero de pantalones: ")
    (define pantalones (read))
    (define valorCamisas (* camisas P1))
    (define valorPantalones (* pantalones P2))
    (define valorBruto (+ valorCamisas valorPantalones))
    (define valorDescuento (descuentos valorBruto))
    (define valorNeto (- valorBruto valorDescuento))
    (define iva (* valorNeto 0.16))
    (define total (+ valorNeto iva))
    (display "Valor bruto de la compra: ")
    (display valorBruto)
    (display "Valor del descuento: ")
    (display valorDescuento)
    (display "Valor de compra neto: ")
    (display valorNeto)
    (display "Cantidad de IVA: ")
    (display iva)
    (display "Valor a pagar: ")
    (display total))
