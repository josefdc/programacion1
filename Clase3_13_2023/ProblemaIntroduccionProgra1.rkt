; Problema 5. En un curso de introduccién a la programacion se hacen cuatro pruebas de las cuales 
; el profesor obtiene 4 notas, cada una de las cuales esta entre 0 y 5. En vista de las muy buenas 
; notas que obtuvieron los estudiantes del grupo 35, el profesor decide que la nota final no sera 
; el promedio aritmético de las cuatro notas sino que hara lo siguiente con las notas de cada uno
; de sus estudiantes:

; - Eliminara la menor de las 4 notas
; - La mayor nota tendra un porcentaje del 50%
; - Cada una de las dos notas restantes tendra un porcentaje del 25%

; De esta forma, la nota final de un estudiante que obtuvo las notas 3.0, 2.0, 4,5 y 3,2, sera 3.8. Haga un programa que
; lea las 4 notas de un estudiante y calcule y escriba su nota definitiva.

;; entrada: 4 notas
;; salida: nota definitiva
;; proceso: calcular la nota definitiva

; definimos la funcion que elimine el menor de los 4 numeros con IF
(define (menor x y z w)
  (if (< x y)
      (if (< x z)
          (if (< x w) x (menor y z w))
          (if (< z w) z (menor x y w)))
      (if (< y z)
          (if (< y w) y (menor x z w))
          (if (< z w) z (menor x y w)))))
; definamos la funcion que la mayor nota dentro de las tres tendra un porcentaje del 50%






