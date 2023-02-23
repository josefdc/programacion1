#lang racket

;; Pedir calificaciones de matemáticas
(display "Ingrese la calificación del examen de matemáticas: ")
(define examen-matematicas (read))
(display "Ingrese la calificación de la tarea 1 de matemáticas: ")
(define tarea1-matematicas (read))
(display "Ingrese la calificación de la tarea 2 de matemáticas: ")
(define tarea2-matematicas (read))
(display "Ingrese la calificación de la tarea 3 de matemáticas: ")
(define tarea3-matematicas (read))

;; Calcular promedio de matemáticas
(define promedio-tareas-matematicas (/ (+ tarea1-matematicas tarea2-matematicas tarea3-matematicas) 3))
(define promedio-matematicas (+ (* examen-matematicas 0.9) (* promedio-tareas-matematicas 0.1)))

;; Pedir calificaciones de física
(display "Ingrese la calificación del examen de física: ")
(define examen-fisica (read))
(display "Ingrese la calificación de la tarea 1 de física: ")
(define tarea1-fisica (read))
(display "Ingrese la calificación de la tarea 2 de física: ")
(define tarea2-fisica (read))

;; Calcular promedio de física
(define promedio-tareas-fisica (/ (+ tarea1-fisica tarea2-fisica) 2))
(define promedio-fisica (+ (* examen-fisica 0.8) (* promedio-tareas-fisica 0.2)))

;; Pedir calificaciones de química
(display "Ingrese la calificación del examen de química: ")
(define examen-quimica (read))
(display "Ingrese la calificación de la tarea 1 de química: ")
(define tarea1-quimica (read))
(display "Ingrese la calificación de la tarea 2 de química: ")
(define tarea2-quimica (read))
(display "Ingrese la calificación de la tarea 3 de química: ")
(define tarea3-quimica (read))

;; Calcular promedio de química
(define promedio-tareas-quimica (/ (+ tarea1-quimica tarea2-quimica tarea3-quimica) 3))
(define promedio-quimica (+ (* examen-quimica 0.85) (* promedio-tareas-quimica 0.15)))

;; Calcular promedio general
(define promedio-general (/ (+ promedio-matematicas promedio-fisica promedio-quimica) 3))

;; Imprimir resultados
(display "El promedio general es: ")
(display promedio-general)
(newline)
(display "El promedio de matemáticas es: ")
(display promedio-matematicas)
(newline)
(display "El promedio de física es: ")
(display promedio-fisica)
(newline)
(display "El promedio de química es: ")
(display promedio-quimica)
(newline)
