#lang racket
; Problemas No 9. En una Universidad existen tres programas académicos que son: 
;Licenciatura Matemáticas, Tecnología en Electrónica, y Tecnologia de Sistemas, los cuales tienen 
;un costo de 1.000.000 para Tecnología Electrónica, $1.200.000 para Matemáticas y $1.300.000 para
;Tecnología de Sistemas, además de esto los estudiantes tienen un descuento del 10% si pertenecen a
; estrato 2 y del 20% si pertenecen a estrato 1: Hacer un programa que dado el estrato al cual 
;pertenece el estudiante y la carrera que quiere estudiar determine el costo de su matricula


; Definir los costos de los programas académicos
(define COSTO_ELECTRONICA 1000000)
(define COSTO_MATEMATICAS 1200000)
(define COSTO_SISTEMAS 1300000)

; Función para calcular el costo de la matrícula con descuento
(define (calcular-costo estrato programa)
  ; Calcular el costo base de la matrícula según el programa
  (define costo-base
    (cond
      [(= programa 1) COSTO_ELECTRONICA]
      [(= programa 2) COSTO_MATEMATICAS]
      [(= programa 3) COSTO_SISTEMAS]
      [else (error "Programa no válido")]))
  
  ; Calcular el descuento según el estrato
  (define descuento
    (cond
      [(= estrato 1) (* 0.2 costo-base)]
      [(= estrato 2) (* 0.1 costo-base)]
      [else 0]))
  
  ; Calcular y devolver el costo final de la matrícula
  (- costo-base descuento))

; Función principal
(define (calcular-matricula-principal)
  (displayln "Por favor ingrese su estrato:")
  (define estrato (read))
  (displayln "Ingrese el número del programa que desea estudiar:")
  (displayln "1. Tecnologia en Electronica")
  (displayln "2. Licenciatura Matematicas")
  (displayln "3. Tecnologia de Sistemas")
  (define programa (read))
  (displayln (calcular-costo estrato programa)))

; Ejemplo de uso
(calcular-matricula-principal)

;-----------------------------

#lang racket

; Definir los costos de los programas académicos
(define COSTO_ELECTRONICA 1000000)
(define COSTO_MATEMATICAS 1200000)
(define COSTO_SISTEMAS 1300000)

; Función auxiliar para calcular el costo base de la matrícula según el programa
(define (costo-base programa)
  (cond
    [(= programa 1) COSTO_ELECTRONICA]
    [(= programa 2) COSTO_MATEMATICAS]
    [(= programa 3) COSTO_SISTEMAS]
    [else (error "Programa no válido")]))

; Función auxiliar para calcular el descuento según el estrato
(define (descuento estrato costo-base)
  (cond
    [(= estrato 1) (* 0.2 costo-base)]
    [(= estrato 2) (* 0.1 costo-base)]
    [else 0]))

; Función para calcular el costo de la matrícula con descuento
(define (calcular-costo estrato programa)
  (define base (costo-base programa))
  (define desc (descuento estrato base))
  (- base desc))

; Función principal
(define (calcular-matricula-principal)
  (displayln "Por favor ingrese su estrato:")
  (define estrato (read))
  (displayln "Ingrese el número del programa que desea estudiar:")
  (displayln "1. Tecnologia en Electronica")
  (displayln "2. Licenciatura Matematicas")
  (displayln "3. Tecnologia de Sistemas")
  (define programa (read))
  
  ; Calcular el costo de la matrícula con descuento
  (define costo (calcular-costo estrato programa))
  
  ; Mostrar el resultado
  (displayln (string-append "El costo de su matrícula es: " (number->string costo))))

; Ejecutar la función principal
(calcular-matricula-principal)
;----------------------------


#lang racket

; Definir los costos de los programas académicos
(define COSTO_ELECTRONICA 1000000)
(define COSTO_MATEMATICAS 1200000)
(define COSTO_SISTEMAS 1300000)

; Función auxiliar para calcular el costo base de la matrícula según el programa
(define (costo-base programa)
  (cond
    [(= programa 1) COSTO_ELECTRONICA]
    [(= programa 2) COSTO_MATEMATICAS]
    [(= programa 3) COSTO_SISTEMAS]
    [else (error "Programa no válido")]))

; Función auxiliar para calcular el descuento según el estrato
(define (descuento estrato costo-base)
  (cond
    [(= estrato 1) (* 0.2 costo-base)]
    [(= estrato 2) (* 0.1 costo-base)]
    [else 0]))

; Función para calcular el costo de la matrícula con descuento
(define (calcular-costo estrato programa)
  (define base (costo-base programa))
  (define desc (descuento estrato base))
  (- base desc))

; Función principal
(define (calcular-matricula-principal)
  (displayln "Por favor ingrese su estrato:")
  (define estrato (read))
  (displayln "Ingrese el número del programa que desea estudiar:")
  (displayln "1. Tecnologia en Electronica")
  (displayln "2. Licenciatura Matematicas")
  (displayln "3. Tecnologia de Sistemas")
  (define programa (read))
  
  ; Calcular el costo de la matrícula con descuento
  (define costo (calcular-costo estrato programa))
  
  ; Mostrar el resultado
  (displayln "el costo de su matricula es: ")
  (display costo ))

; Ejecutar la función principal
(calcular-matricula-principal)
