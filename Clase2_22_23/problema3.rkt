#lang racket
(displayln "Ingresa la cantidad de monedas de $20:")
(define num-monedas-20 (read))
  
(displayln "Ingresa la cantidad de monedas de $50:")
(define num-monedas-50 (read))
  
(displayln "Ingresa la cantidad de monedas de $100:")
(define num-monedas-100 (read))
  
(displayln "Ingresa la cantidad de monedas de $200:")
(define num-monedas-200 (read))
  
(displayln "Ingresa la cantidad de monedas de $500:")
(define num-monedas-500 (read))
  
  (+ (* num-monedas-20 20)
     (* num-monedas-50 50)
     (* num-monedas-100 100)
     (* num-monedas-200 200)
     (* num-monedas-500 500)) 