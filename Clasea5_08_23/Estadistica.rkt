;; Calcular la mediana con vectores
 ;;Función principal para leer datos del usuario y mostrar resultados
(define (vector-media)
  (display "Ingrese el tamaño del vector: ")
  (newline)
  (define vec (make-vector (read)))
  (display "Ingrese cada uno de los datos")
  (newline)
  (llenar-vector vec 0)
  (newline)
  (define vec-ordenado (ordenar-vector vec 0))
  (display "Vector ordenado: ")
  (display vec-ordenado)
  (newline)
  (display "La media del vector es: ")
  (display (calcular-media vec-ordenado)))

; Función para llenar un vector con datos ingresados por el usuario
; Parámetros:
; - v: vector a llenar
; - pos: posición actual en el vector
(define (llenar-vector v pos)
  (if (< pos (vector-length v))
      (begin
        (vector-set! v pos (read))
        (llenar-vector v (+ pos 1)))))

; Función para ordenar un vector utilizando el algoritmo de selección (recursivo)
; Parámetros:
; - vec: vector a ordenar
; - i: índice actual
(define (ordenar-vector vec i)
  (if (< i (vector-length vec))
      (begin
        (ordenar-aux vec i (add1 i))
        (ordenar-vector vec (add1 i)))
      vec))  ; Devuelve el vector ordenado

; Función auxiliar para la ordenación (recursivo)
; Parámetros:
; - vec: vector a ordenar
; - i: índice actual
; - j: siguiente índice
(define (ordenar-aux vec i j)
  (if (< j (vector-length vec))
      (begin
        (if (> (vector-ref vec i) (vector-ref vec j))
            (swap vec i j))
        (ordenar-aux vec i (add1 j)))))

; Función para intercambiar dos elementos en un vector
; Parámetros:
; - vec: vector
; - i: primer índice
; - j: segundo índice
(define (swap vec i j)
  (define temp (vector-ref vec i)) ; Almacenar temporalmente el valor en la posición i
  (vector-set! vec i (vector-ref vec j)) ; Colocar el valor en la posición j en la posición i
  (vector-set! vec j temp)) ; Colocar el valor almacenado en temp (valor original de i) en la posición j

; Función para calcular la media de un vector ordenado
; Parámetros:
; - vec: vector ordenado
(define (calcular-media vec)
  (if (par? (vector-length vec))
      (calcular-media-par vec)
      (calcular-media-impar vec)))

; Función para determinar si un número es par
; Parámetros:
; - num: número a verificar
(define (par? num)
  (= (remainder num 2) 0))

; Función para calcular la media de un vector con longitud par
; Parámetros:
; - vec: vector ordenado con longitud par
(define (calcular-media-par vec)
  (/ (+ (vector-ref vec (/ (vector-length vec) 2))
         (vector-ref vec (- (/ (vector-length vec) 2) 1)))
     2))

; Función para calcular la media de un vector con longitud impar
; Parámetros:
; - vec: vector ordenado con longitud impar
(define (calcular-media-impar vec)
  (vector-ref vec (quotient (vector-length vec) 2)))

(vector-media)
;;------------------------------------------------------------------------------------------
;; Calcular la media con vectores
;; Función principal para leer datos del usuario y mostrar resultados
(define (vector-media)
  (display "Ingrese el tamaño del vector: ")
  (newline)
  (define vec (make-vector (read)))
  (display "Ingrese cada uno de los datos")
  (newline)
  (llenar-vector vec 0)
  (newline)
  (display "La media del vector es: ")
  (display (calcular-media vec)))

; Función para llenar un vector con datos ingresados por el usuario
; Parámetros:
; - v: vector a llenar
; - pos: posición actual en el vector
(define (llenar-vector v pos)
  (if (< pos (vector-length v))
      (begin
        (vector-set! v pos (read))
        (llenar-vector v (+ pos 1)))))

; Función para calcular la media de un vector
; Parámetros:
; - vec: vector
(define (calcular-media vec)
  (/ (sumar-elementos vec 0) (vector-length vec)))

; Función para sumar los elementos de un vector de manera recursiva
; Parámetros:
; - vec: vector
; - pos: posición actual en el vector
(define (sumar-elementos vec pos)
  (if (< pos (vector-length vec))
      (+ (vector-ref vec pos) (sumar-elementos vec (+ pos 1)))
      0))

(vector-media)
;;------------------------------------------------------------------------------------------
;; ;; Calcular la desviación respecto a la media con vectores
;; Función principal para leer datos del usuario y mostrar resultados
(define (vector-desviacion-media)
  (display "Ingrese el tamaño del vector: ")
  (newline)
  (define vec (make-vector (read)))
  (display "Ingrese cada uno de los datos")
  (newline)
  (llenar-vector vec 0)
  (newline)
  (define media (calcular-media vec))
  (display "La media del vector es: ")
  (display media)
  (newline)
  (display "La desviación respecto a la media del vector es: ")
  (display (calcular-desviacion-media vec media)))

; Función para llenar un vector con datos ingresados por el usuario
; Parámetros:
; - v: vector a llenar
; - pos: posición actual en el vector
(define (llenar-vector v pos)
  (if (< pos (vector-length v))
      (begin
        (vector-set! v pos (read))
        (llenar-vector v (+ pos 1)))))

; Función para calcular la media de un vector
; Parámetros:
; - vec: vector
(define (calcular-media vec)
  (/ (sumar-elementos vec 0) (vector-length vec)))

; Función para sumar los elementos de un vector de manera recursiva
; Parámetros:
; - vec: vector
; - pos: posición actual en el vector
(define (sumar-elementos vec pos)
  (if (< pos (vector-length vec))
      (+ (vector-ref vec pos) (sumar-elementos vec (+ pos 1)))
      0))

; Función para calcular la desviación respecto a la media de un vector
; Parámetros:
; - vec: vector
; - media: la media del vector
(define (calcular-desviacion-media vec media)
  (/ (sumar-diferencias-absolutas vec media 0) (vector-length vec)))

; Función para sumar las diferencias absolutas entre los elementos de un vector y su media
; Parámetros:
; - vec: vector
; - media: la media del vector
; - pos: posición actual en el vector
(define (sumar-diferencias-absolutas vec media pos)
  (if (< pos (vector-length vec))
      (+ (abs (- (vector-ref vec pos) media))
         (sumar-diferencias-absolutas vec media (+ pos 1)))
      0))

(vector-desviacion-media)

;;-----------------------------------------------------------------------------

;; Calcular la varianza con vectores
;; Función principal para leer datos del usuario y mostrar resultados
(define (vector-varianza)
  (display "Ingrese el tamaño del vector: ")
  (newline)
  (define vec (make-vector (read)))
  (display "Ingrese cada uno de los datos")
  (newline)
  (llenar-vector vec 0)
  (newline)
  (define media (calcular-media vec))
  (display "La media del vector es: ")
  (display media)
  (newline)
  (display "La varianza del vector es: ")
  (display (calcular-varianza vec media)))

; Función para llenar un vector con datos ingresados por el usuario
; Parámetros:
; - v: vector a llenar
; - pos: posición actual en el vector
(define (llenar-vector v pos)
  (if (< pos (vector-length v))
      (begin
        (vector-set! v pos (read))
        (llenar-vector v (+ pos 1)))))

; Función para calcular la media de un vector
; Parámetros:
; - vec: vector
(define (calcular-media vec)
  (/ (sumar-elementos vec 0) (vector-length vec)))

; Función para sumar los elementos de un vector de manera recursiva
; Parámetros:
; - vec: vector
; - pos: posición actual en el vector
(define (sumar-elementos vec pos)
  (if (< pos (vector-length vec))
      (+ (vector-ref vec pos) (sumar-elementos vec (+ pos 1)))
      0))


; Función para calcular la varianza de un vector
; Parámetros:
; - vec: vector
; - media: la media del vector
(define (calcular-varianza vec media)
  (/ (sumar-diferencias-cuadradas vec media 0) (vector-length vec)))

; Función para sumar las diferencias cuadradas entre los elementos de un vector y su media
; Parámetros:
; - vec: vector
; - media: la media del vector
; - pos: posición actual en el vector
(define (sumar-diferencias-cuadradas vec media pos)
  (if (< pos (vector-length vec))
      (+ (expt (- (vector-ref vec pos) media) 2)
         (sumar-diferencias-cuadradas vec media (+ pos 1)))
      0))

(vector-varianza)
;; ---------------------------------------------------------------------

;; Calcular la desviación estándar con vectores
;; Función principal para leer datos del usuario y mostrar resultados
(define (vector-desviacion-estandar)
  (display "Ingrese el tamaño del vector: ")
  (newline)
  (define vec (make-vector (read)))
  (display "Ingrese cada uno de los datos")
  (newline)
  (llenar-vector vec 0)
  (newline)
  (define media (calcular-media vec))
  (display "La media del vector es: ")
  (display media)
  (newline)
  (display "La desviación estándar del vector es: ")
  (display (calcular-desviacion-estandar vec media)))

; Función para llenar un vector con datos ingresados por el usuario
; Parámetros:
; - v: vector a llenar
; - pos: posición actual en el vector
(define (llenar-vector v pos)
  (if (< pos (vector-length v))
      (begin
        (vector-set! v pos (read))
        (llenar-vector v (+ pos 1)))))

; Función para calcular la media de un vector
; Parámetros:
; - vec: vector
(define (calcular-media vec)
  (/ (sumar-elementos vec 0) (vector-length vec)))

; Función para sumar los elementos de un vector de manera recursiva
; Parámetros:
; - vec: vector
; - pos: posición actual en el vector
(define (sumar-elementos vec pos)
  (if (< pos (vector-length vec))
      (+ (vector-ref vec pos) (sumar-elementos vec (+ pos 1)))
      0))


; Función para calcular la varianza de un vector
; Parámetros:
; - vec: vector
; - media: la media del vector
(define (calcular-varianza vec media)
  (/ (sumar-diferencias-cuadradas vec media 0) (vector-length vec)))

; Función para sumar las diferencias cuadradas entre los elementos de un vector y su media
; Parámetros:
; - vec: vector
; - media: la media del vector
; - pos: posición actual en el vector
(define (sumar-diferencias-cuadradas vec media pos)
  (if (< pos (vector-length vec))
      (+ (expt (- (vector-ref vec pos) media) 2)
         (sumar-diferencias-cuadradas vec media (+ pos 1)))
      0))
; Función para calcular la desviación estándar de un vector
; Parámetros:
; - vec: vector
; - media: la media del vector
(define (calcular-desviacion-estandar vec media)
  (sqrt (calcular-varianza vec media)))

(vector-desviacion-estandar)

