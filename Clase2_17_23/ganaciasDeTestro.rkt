#lang racket

  (displayln "Ingresa el número de clientes:")
  (define num-clientes (read))
  (define ingreso-total (* num-clientes 10000))
  (define costo-aseo (* num-clientes 2000))
  (define costo-atencion 300000)
  (- ingreso-total (+ costo-atencion costo-aseo))