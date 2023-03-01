#lang racket


;;Problema 13. Un almuno desea saber cual sera su promedio general en tres materias
;; estas materias se evaluan como se muestra a continuacion:

;; Materia matematicas: 90% examen, 10% promedio de tres tareas
;; Materia fisica: 80% examen, 20% promedio de dos  tareas
;; Materia quimica: 85% examen, 15% promedio de tres tarea 

;; funcion suma
(define (suma x y )
  (+ x y ))

;;funcion multiplicacion
(define (multiplicacion x y)
  (* x y ))

;;funcion division
(define (division x y)
  (/ x y ))


;;funcion promedio 2 tarea
(define (promedio2 x y)
  (division (suma x y) 2))

;;funcion promedio 3 tarea
(define (promedio3 x y z)
  (division (suma(suma x y) z) 3))

;;nota matematicas
(define (NotaMatemacas x y)
(suma(multiplicacion x 0.9) (multiplicacion y 0.1))
)

;;nota fisica
(define (NotaFisica x y)
(suma(multiplicacion x 0.8) (multiplicacion y 0.2))
)

;;nota quimica
(define (NotaQuimica x y)
(suma(multiplicacion x 0.85) (multiplicacion y 0.15))
)

;; funcion promedio general


;; funcion principal
(define (principal)
 (display "Digite su examen en mateaticas")
 (define NotaMatematiasExamen (read))
    (display "Digite la nota de su primera tarea de matematicas")
    (define NotaMatematiasTareas1 (read))
    (display "Digite la nota de su segunda tarea de matematicas")
    (define NotaMatematiasTareas2 (read))
    (display "Digite la nota de su tercera tarea de matematicas")
    (define NotaMatematiasTareas3 (read))
    (display "Su promedio de nota en tareas es")
    (display (promedio3 NotaMatematiasTareas1 NotaMatematiasTareas2 NotaMatematiasTareas3))
    (display "su nota en matematicas es")
    (display (NotaMatemacas NotaMatematiasExamen (promedio3 NotaMatematiasTareas1 NotaMatematiasTareas2 NotaMatematiasTareas3)))

    (display "Digite su examen en fisica")
    (define NotaFisicaExamen (read))
    (display "Digite la nota de su primera tarea de fisica")
    (define NotaFisicaTareas1 (read))
    (display "Digite la nota de su segunda tarea de fisica")
    (define NotaFisicaTareas2 (read))
    (display "Su promedio de nota en tareas es")
    (display (promedio2 NotaFisicaTareas1 NotaFisicaTareas2))
    (display "su nota en fisica es")
    (display (NotaFisica NotaFisicaExamen (promedio2 NotaFisicaTareas1 NotaFisicaTareas2)))

    (display "Digite su examen en quimica")
    (define NotaQuimicaExamen (read))
    (display "Digite la nota de su primera tarea de quimica")
    (define NotaQuimicaTareas1 (read))
    (display "Digite la nota de su segunda tarea de quimica")
    (define NotaQuimicaTareas2 (read))
    (display "Digite la nota de su tercera tarea de quimica")
    (define NotaQuimicaTareas3 (read))
    (display "Su promedio de nota en tareas es")
    (display (promedio3 NotaQuimicaTareas1 NotaQuimicaTareas2 NotaQuimicaTareas3))
    (display "su nota en quimica es")
    (display (NotaQuimica NotaQuimicaExamen (promedio3 NotaQuimicaTareas1 NotaQuimicaTareas2 NotaQuimicaTareas3)))


    (display "Su promedio general es")
    (display (promedio3 (NotaMatemacas NotaMatematiasExamen (promedio3 NotaMatematiasTareas1 NotaMatematiasTareas2 NotaMatematiasTareas3)) 
    (NotaFisica NotaFisicaExamen (promedio2 NotaFisicaTareas1 NotaFisicaTareas2)) 
    (NotaQuimica NotaQuimicaExamen (promedio3 NotaQuimicaTareas1 NotaQuimicaTareas2 NotaQuimicaTareas3))))

 )

(principal)
