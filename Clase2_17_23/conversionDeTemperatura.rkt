#lang racket
;; Pedir datos de temperatura al usuario
;; Función para convertir Celsius a Fahrenheit
(define (celsius->fahrenheit celsius)
  (+ (* celsius 1.8) 32))

;; Función para convertir Fahrenheit a Celsius
(define (fahrenheit->celsius fahrenheit)
  (/ (- fahrenheit 32) 1.8))

;; Función para convertir Celsius a Kelvin
(define (celsius->kelvin celsius)
  (+ celsius 273.15))

;; Función para convertir Kelvin a Celsius
(define (kelvin->celsius kelvin)
  (- kelvin 273.15))

;; Función para convertir Fahrenheit a Kelvin
(define (fahrenheit->kelvin fahrenheit)
  (celsius->kelvin (fahrenheit->celsius fahrenheit)))

;; Función para convertir Kelvin a Fahrenheit
(define (kelvin->fahrenheit kelvin)
  (celsius->fahrenheit (kelvin->celsius kelvin)))
(display "Ingrese una temperatura en grados Celsius: ")
(define celsius (read))
(define fahrenheit (celsius->fahrenheit celsius))
(define kelvin (celsius->kelvin celsius))

;; Imprimir tabla de temperatura
(display "+---------+-----------+---------+\n")
(display "| Celsius | Fahrenheit|  Kelvin |\n")
(display "+---------+-----------+---------+\n")
(format "|   ~a   |    ~a   |   ~a   |\n" celsius fahrenheit kelvin)
(display "+---------+-----------+---------+\n")

;; Pedir datos de temperatura al usuario
(display "Ingrese una temperatura en grados Fahrenheit: ")
(define fah_temp (read))
(define cel_temp (fahrenheit->celsius fah_temp))
(define kel_temp (celsius->kelvin cel_temp))

;; Imprimir tabla de temperatura
(display "+-----------+---------+-----------+\n")
(display "| Fahrenheit| Celsius |   Kelvin  |\n")
(display "+-----------+---------+-----------+\n")
(format "|    ~a    |   ~a    |   ~a   |    |\n " fah_temp cel_temp kel_temp )
(display "+-----------+---------+-----------+-----------+-----------+-----------+\n")

;; Pedir datos de temperatura al usuario
(display "Ingrese una temperatura en grados Kelvin: ")
(define kel_temp1 (read))
(define cel_temp1 (kelvin->celsius kel_temp))
(define fah_temp1 (celsius->fahrenheit cel_temp))

;; Imprimir tabla de temperatura
(display "+-----------+-----------+-----------+\n")
(display "|   Kelvin  | Celsius   | Fahrenheit|\n")
(display "+-----------+-----------+---------+--\n")
(format "|   ~a   |   ~a    |    ~a   |  \n" kel_temp1 cel_temp1 fah_temp1 )
(display "+-----------+-----------+---------+")
