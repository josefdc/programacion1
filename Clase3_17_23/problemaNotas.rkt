#lang racket

;;Un alumno desea saber cuál será su promedio general en las tres materias más dificiles que cursa y 
;;cuál será el promedio que obtendrá en cada una de ellas. Estas materias se evalúan como se muestra a continuación:

;;La calificación de matemáticas se obtiene de la siguiente manera:

;;Examen 90%. Promedio de las tares 10%; En esta materia se pidió un total de tres tareas.

;;La calificación de fisica se obtiene de la siguiente manera:

;;Examen 80%. Promedio de tares 20%; En esta materia se pidió un total de dos tareas.

;;La calificación de química se obtiene de la siguiente manera:

;;Examen 85%. Promedio de tareas 15%; En esta materia se pidió un total de tres tareas.

;;Además se debe visualizar las materias con la nota de mayor y menor.

;;El promedio general de la carrera donde a la mayor se le aplica un 50%, a la menor un 20% y a la intermedio un 30%


#lang racket

(define (calificacion-materia examen t1 t2 t3)
  (+ (* 0.9 examen) (* 0.1 (/ (+ t1 t2 t3) 3))))

(define (calificacion-matematicas examen t1 t2 t3)
  (calificacion-materia examen t1 t2 t3))

(define (calificacion-fisica examen t1 t2)
  (calificacion-materia examen t1 t2 0))

(define (calificacion-quimica examen t1 t2 t3)
  (calificacion-materia examen t1 t2 t3))

(define (mayor x y)
  (if (> x y) x y))

(define (menor x y)
  (if (< x y) x y))

(define (promedio-general matematicas fisica quimica)
  (define prom-matematicas (calificacion-matematicas matematicas 0 0 0))
  (define prom-fisica (calificacion-fisica fisica 0 0))
  (define prom-quimica (calificacion-quimica quimica 0 0 0))
  (define mayor-prom (mayor prom-matematicas prom-fisica))
  (define menor-prom (menor prom-matematicas prom_fisica))
  (+ (* 0.5 mayor-prom) (* 0.3 (- (+ mayor-prom prom-fisica prom-quimica) mayor-prom prom-fisica)) (* 0.2 menor-prom)))

(define (promedio-matematicas examen t1 t2 t3)
  (calificacion-matematicas examen t1 t2 t3))

(define (promedio-fisica examen t1 t2)
  (calificacion-fisica examen t1 t2))

(define (promedio-quimica examen t1 t2 t3)
  (calificacion-quimica examen t1 t2 t3))

(define (main matematicas fisica quimica)
  (displayln "Calificaciones:")
  (displayln (string-append "Matematicas: " (number->string (calificacion-matematicas matematicas 0 0 0))))
  (displayln (string-append "Fisica: " (number->string (calificacion-fisica fisica 0 0))))
  (displayln (string-append "Quimica: " (number->string (calificacion-quimica quimica 0 0 0))))
  (displayln "")
  (displayln (string-append "Mayor: " (number->string (mayor (mayor matematicas fisica) quimica)))))
  (displayln (string-append "Menor: " (number->string (menor (menor matematicas fisica) quimica)))))
  (displayln "")
  (displayln (string-append "Promedio General: " (number->string (promedio-general matematicas fisica quimica)))))

(main 90 10 10 10 80 20 0 85 15 15 15)
