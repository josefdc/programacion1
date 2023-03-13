;; Problema 2. Calcule el precio de un terreno rectangular que tiene: la longitud, el ancho 
;; y el precio por metro cuadrado. Si el terreno tiene más de 400 metros cuadrados, se hace un descuento 
;;  del 10% si tiene mas de 500 metros cuadrado. El descuento es del 17% y si tiene más de 1000 metros cuadrados, 
;; el descuento es del 25% 

;; Entradas: longitud, ancho, precio por metro cuadrado
;; Salidas: precio del terreno

;; Restricciones: longitud y ancho deben ser números positivos
;; precio por metro cuadrado debe ser un número positivo

;; definamos la funcion del area
(define (area longitud ancho)
  (* longitud ancho))

;; definamos la funcion del  descuento con IF
(define (descuento area)
  (if (> area 1000)
      (* 0.75 area)
      (if (> area 500)
          (* 0.83 area)
          (if (> area 400) ;; si no cumple ninguna de las condiciones anteriores, no hay descuento
              (* 0.90 area);; si no cumple ninguna de las condiciones anteriores, no hay descuento
              area)))) ;; si no cumple ninguna de las condiciones anteriores, no hay descuento

;; definamos la funcion del precio del terreno
(define (precio-terreno longitud ancho precio)
  (* (descuento (area longitud ancho)) precio))

;; definamos la funcion principal
(define (main)
  (display "Ingrese la longitud del terreno: ")
  (newline)
  (define longitud (read))
  (display "Ingrese el ancho del terreno: ")
  (newline)
  (define ancho (read))
  (display "Ingrese el precio por metro cuadrado: ")
  (newline)
  (define precio (read))
  (display "El precio del terreno es: ")
  (display (precio-terreno longitud ancho precio))
  (newline))

(main)

