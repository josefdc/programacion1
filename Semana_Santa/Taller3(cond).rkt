#lang racket
;-------1--------
;Leer un numero entero obtenido al lanzado de un dado de seis caras e imprimir el numero en letras
;De la cara opuesta. En las caras opuestas de un dado de seis caras se encuentran los numeros 1-6, 2-5 y 3-4.   
; si el numero es menor que 1 o mayor que 6, imprimir "Numero invalido"

(define (leer-numero)
  (read))

(define (imprimir-numero numero)
    (cond
        [(= numero 1) (display "Seis")]
        [(= numero 2) (display "Cinco")]
        [(= numero 3) (display "Cuatro")]
        [(= numero 4) (display "Tres")]
        [(= numero 5) (display "Dos")]
        [(= numero 6) (display "Uno")]
        [else (display "Numero invalido")])
    (newline))

(define (principal)
    (display "Ingrese un numero: ")
    (imprimir-numero (leer-numero)))

(principal)

;-------2--------
; Capturar una letra minuscula o mayuscula e imprimir la poscion que ocupa en el abecedario.
; ejemplo a=1 b=2 c=3 ... z=26

(define (leer-letra)
  (read-char))

(define (imprimir-posicion letra)
  (cond
    [(or (char=? letra #\a) (char=? letra #\A)) (display 1)]
    [(or (char=? letra #\b) (char=? letra #\B)) (display 2)]
    [(or (char=? letra #\c) (char=? letra #\C)) (display 3)]
    [(or (char=? letra #\d) (char=? letra #\D)) (display 4)]
    [(or (char=? letra #\e) (char=? letra #\E)) (display 5)]
    [(or (char=? letra #\f) (char=? letra #\F)) (display 6)]
    [(or (char=? letra #\g) (char=? letra #\G)) (display 7)]
    [(or (char=? letra #\h) (char=? letra #\H)) (display 8)]
    [(or (char=? letra #\i) (char=? letra #\I)) (display 9)]
    [(or (char=? letra #\j) (char=? letra #\J)) (display 10)]
    [(or (char=? letra #\k) (char=? letra #\K)) (display 11)]
    [(or (char=? letra #\l) (char=? letra #\L)) (display 12)]
    [(or (char=? letra #\m) (char=? letra #\M)) (display 13)]
    [(or (char=? letra #\n) (char=? letra #\N)) (display 14)]
    [(or (char=? letra #\o) (char=? letra #\O)) (display 15)]
    [(or (char=? letra #\p) (char=? letra #\P)) (display 16)]
    [(or (char=? letra #\q) (char=? letra #\Q)) (display 17)]
    [(or (char=? letra #\r) (char=? letra #\R)) (display 18)]
    [(or (char=? letra #\s) (char=? letra #\S)) (display 19)]
    [(or (char=? letra #\t) (char=? letra #\T)) (display 20)]
    [(or (char=? letra #\u) (char=? letra #\U)) (display 21)]
    [(or (char=? letra #\v) (char=? letra #\V)) (display 22)]
    [(or (char=? letra #\w) (char=? letra #\W)) (display 23)]
    [(or (char=? letra #\x) (char=? letra #\X)) (display 24)]
    [(or (char=? letra #\y) (char=? letra #\Y)) (display 25)]
    [(or (char=? letra #\z) (char=? letra #\Z)) (display 26)]
    [else (display "No es una letra")])
  (newline))

; usamos una funcion principal
(define (principal)
    (display "Ingrese una letra: ")
    (imprimir-posicion (leer-letra)))

(principal)

;------3------

; En un supermercado, se realizan descuentos por las compras a partir de unas bolitas de colores:
; Verde 20%, amarilla 25%, negra del 30%; la blanca no aplica ningún descuento. Leer el importe 
; de la compra y el color de la bolita e imprimir lo que debe pagar dicho cliente.


; Función para aplicar el descuento según el color de la bolita
(define (aplicar-descuento importe color)
  (cond
    [(equal? color 'verde) (* importe 0.8)]
    [(equal? color 'amarilla) (* importe 0.75)]
    [(equal? color 'negra) (* importe 0.7)]
    [(equal? color 'blanca) importe]
    [else (error "Color desconocido")]))


; Función principal
(define (calcular-pago)
  (display "Ingrese el importe de la compra: ")
  (define importe (read))
  (display "Ingrese el color de la bolita (verde, amarilla, negra, blanca): ")
  (define color (read))
  (display "El cliente debe pagar: ")
  (displayln (aplicar-descuento importe color)))

; Ejemplo de uso
(calcular-pago)

;------5------
; Leer una letra mayuscula e imprimir la letra  y si esta es recta (A,E,F,H,I,K,L,M,N,O,T,V,W,X,Y,Z), 
; es curva (C,O,S,U,Q), o curva y recta (B,D,G,J,P,R)

(define (leer-letra)
  (read))

; Función para determinar si una letra es recta
(define (char-recta letra)
      (or (char=? letra #\a) (char=? letra #\A)
          (char=? letra #\e) (char=? letra #\E)
          (char=? letra #\f) (char=? letra #\F)
          (char=? letra #\h) (char=? letra #\H)
          (char=? letra #\i) (char=? letra #\I)
          (char=? letra #\k) (char=? letra #\K)
          (char=? letra #\l) (char=? letra #\L)
          (char=? letra #\m) (char=? letra #\M)
          (char=? letra #\n) (char=? letra #\N)
          (char=? letra #\o) (char=? letra #\O)
          (char=? letra #\t) (char=? letra #\T)
          (char=? letra #\v) (char=? letra #\V)
          (char=? letra #\w) (char=? letra #\W)
          (char=? letra #\x) (char=? letra #\X)
          (char=? letra #\y) (char=? letra #\Y)
          (char=? letra #\z) (char=? letra #\Z)))

; Función para determinar si una letra es curva

(define (char-curva letra)
      (or (char=? letra #\c) (char=? letra #\C)
          (char=? letra #\o) (char=? letra #\O)
          (char=? letra #\s) (char=? letra #\S)
          (char=? letra #\u) (char=? letra #\U)
          (char=? letra #\q) (char=? letra #\Q)))
; Función para determinar si una letra es curva y recta
(define (char-curva-recta letra)
      (or (char=? letra #\b) (char=? letra #\B)
          (char=? letra #\d) (char=? letra #\D)
          (char=? letra #\g) (char=? letra #\G)
          (char=? letra #\j) (char=? letra #\J)
          (char=? letra #\p) (char=? letra #\P)
          (char=? letra #\r) (char=? letra #\R)))

; Función principal
(define (principal)
  (display "Ingrese una letra: ")
  (define letra (leer-letra))
  (display "La letra ingresada es: ")
  (display letra)
  (newline)
  (display "La letra ingresada es: ")
  (cond
    [(char-recta letra) (display "recta")]
    [(char-curva letra) (display "curva")]
    [(char-curva-recta letra) (display "curva y recta")]
    [else (display "desconocida")])
  (newline))
;------6------
;Leer un caracter y dos numeros enteros, si el caracter es un operaddr (+,-,*,/) realizar la operación
; si no mostrar un mensaje de error.

; Función para leer un caracter
(define (leer-caracter)
  (read))

; Función para leer un número entero
(define (leer-numero)
  (read))

; Función para realizar la operación
(define (operacion caracter numero1 numero2)
  (cond
    [(char=? caracter #\+) (+ numero1 numero2)]
    [(char=? caracter #\-) (- numero1 numero2)]
    [(char=? caracter #\*) (* numero1 numero2)]
    [(char=? caracter #\/) (/ numero1 numero2)]
    [else (error "Caracter desconocido")]))
; Función principal
(define (principal)
  (display "Ingrese un caracter: ")
  (define caracter (leer-caracter))
  (display "Ingrese un número: ")
  (define numero1 (leer-numero))
  (display "Ingrese otro número: ")
  (define numero2 (leer-numero))
  (display "El resultado de la operación es: ")
  (displayln (operacion caracter numero1 numero2)))

;------7------
; Elaborar un menu que calcule tres conversiones de tiempo
; 1. De segundos a minutos
; 2. De minutos a horas
; 3. De horas a dias

; Función para convertir segundos a minutos
(define (segundos-minutos segundos)
  (/ segundos 60))

; Función para convertir minutos a horas
(define (minutos-horas minutos)
  (/ minutos 60))

; Función para convertir horas a días
(define (horas-dias horas)
  (/ horas 24))

; Función principal
(define (principal)
  (display "Ingrese una opción: ")
  (displayln "1. De segundos a minutos")
  (displayln "2. De minutos a horas")
  (displayln "3. De horas a días")
  (define opcion (read))
  (cond
    [(= opcion 1)
     (display "Ingrese la cantidad de segundos: ")
     (define segundos (read))
     (display "La cantidad de minutos es: ")
     (displayln (segundos-minutos segundos))]
    [(= opcion 2)
     (display "Ingrese la cantidad de minutos: ")
     (define minutos (read))
     (display "La cantidad de horas es: ")
     (displayln (minutos-horas minutos))]
    [(= opcion 3)
     (display "Ingrese la cantidad de horas: ")
     (define horas (read))
     (display "La cantidad de días es: ")
     (displayln (horas-dias horas))]
    [else (error "Opción desconocida")]))

;------8------
; Elaborar un menu que calcule tres conversiones, del sistema ingles
; al decimal (unidades de longitud)
; 1. De yardas a metros
; 2. De pies a metros
; 3. De pulgadas a metros

; Función para convertir yardas a metros
(define (yardas-metros yardas)
  (* yardas 0.9144))

; Función para convertir pies a metros
(define (pies-metros pies)
  (* pies 0.3048))

; Función para convertir pulgadas a metros
(define (pulgadas-metros pulgadas)
  (* pulgadas 0.0254))

; Función principal
(define (principal)
  (display "Ingrese una opción: ")
  (displayln "1. De yardas a metros")
  (displayln "2. De pies a metros")
  (displayln "3. De pulgadas a metros")
  (define opcion (read))
  (cond
    [(= opcion 1)
     (display "Ingrese la cantidad de yardas: ")
     (define yardas (read))
     (display "La cantidad de metros es: ")
     (displayln (yardas-metros yardas))]
    [(= opcion 2)
     (display "Ingrese la cantidad de pies: ")
     (define pies (read))
     (display "La cantidad de metros es: ")
     (displayln (pies-metros pies))]
    [(= opcion 3)
     (display "Ingrese la cantidad de pulgadas: ")
     (define pulgadas (read))
     (display "La cantidad de metros es: ")
     (displayln (pulgadas-metros pulgadas))]
    [else (error "Opción desconocida")]))

;------9------
; Elaborar un menu que calcule conversion de divisas, pesos a dolares, pesos a euros,
; pesos a libras, libras a pesos, dolares a pesos, euros a pesos

; Función para convertir pesos a dólares
(define (pesos-dolares pesos)
  (/ pesos 4500))

; Función para convertir pesos a euros
(define (pesos-euros pesos)
  (/ pesos 5000))

; Función para convertir pesos a libras
(define (pesos-libras pesos)
  (/ pesos 6000))

; Función para convertir libras a pesos
(define (libras-pesos libras)
  (* libras 6000))

; Función para convertir dólares a pesos
(define (dolares-pesos dolares)
  (* dolares 4500))

; Función para convertir euros a pesos
(define (euros-pesos euros)
  (* euros 5000))

; Función principal
(define (principal)
  (display "Ingrese una opción: ")
  (displayln "1. De pesos a dólares")
  (displayln "2. De pesos a euros")
  (displayln "3. De pesos a libras")
  (displayln "4. De libras a pesos")
  (displayln "5. De dólares a pesos")
  (displayln "6. De euros a pesos")
  (define opcion (read))
  (cond
    [(= opcion 1)
     (display "Ingrese la cantidad de pesos: ")
     (define pesos (read))
     (display "La cantidad de dólares es: ")
     (displayln (pesos-dolares pesos))]
    [(= opcion 2)
     (display "Ingrese la cantidad de pesos: ")
     (define pesos (read))
     (display "La cantidad de euros es: ")
     (displayln (pesos-euros pesos))]
    [(= opcion 3)
     (display "Ingrese la cantidad de pesos: ")
     (define pesos (read))
     (display "La cantidad de libras es: ")
     (displayln (pesos-libras pesos))]
    [(= opcion 4)
     (display "Ingrese la cantidad de libras: ")
     (define libras (read))
     (display "La cantidad de pesos es: ")
     (displayln (libras-pesos libras))]
    [(= opcion 5)
     (display "Ingrese la cantidad de dólares: ")
     (define dolares (read))
     (display "La cantidad de pesos es: ")
     (displayln (dolares-pesos dolares))]
    [(= opcion 6)
     (display "Ingrese la cantidad de euros: ")
     (define euros (read))
     (display "La cantidad de pesos es: ")
     (displayln (euros-pesos euros))]
    [else (error "Opción desconocida")]))

;------10------
; imprimir la cantidad correspondiente a una cantidad de hasta cuatro digitos dada

; Función para imprimir los dígitos de un número

(define (unidades n)
  (cond
    [(= n 0) ""]
    [(= n 1) "uno"]
    [(= n 2) "dos"]
    [(= n 3) "tres"]
    [(= n 4) "cuatro"]
    [(= n 5) "cinco"]
    [(= n 6) "seis"]
    [(= n 7) "siete"]
    [(= n 8) "ocho"]
    [(= n 9) "nueve"]))

(define (decenas n)
  (cond
    [(= n 0) ""]
    [(= n 1) "diez"]
    [(= n 2) "veinte"]
    [(= n 3) "treinta"]
    [(= n 4) "cuarenta"]
    [(= n 5) "cincuenta"]
    [(= n 6) "sesenta"]
    [(= n 7) "setenta"]
    [(= n 8) "ochenta"]
    [(= n 9) "noventa"]))

(define (centenas n)
  (cond
    [(= n 0) ""]
    [(= n 1) "ciento"]
    [(= n 5) "quinientos"]
    [(= n 7) "setecientos"]
    [(= n 9) "novecientos"]
    [else (string-append (unidades n) "cientos")]))


(define (miles n)
  (cond
    [(= n 1) "mil"]
    [else (string-append (unidades n) " mil")]))

(define (describir-numero n)
  (cond
    [(< n 10) (unidades n)]
    [(< n 100) (string-append (decenas (quotient n 10)) " " (unidades (modulo n 10)))]
    [(< n 1000) (string-append (centenas (quotient n 100)) " " (describir-numero (modulo n 100)))]
    [else (string-append (miles (quotient n 1000)) " " (describir-numero (modulo n 1000)))]))

(define (main)
  (display "Ingrese un número de al menos 4 dígitos: ")
  (define numero (read))
  (if (< numero 1000)
      (displayln "El número debe tener al menos 4 dígitos.")
      (begin
        (display "El número es: ")
        (displayln (describir-numero numero)))))

(main)


;------11------
;Investigar el horoscopo chino y hacer el calculo correspondiente, cocnociendo 
; el mes y el año de nacimiento


(define (horoscopo-chino anio)
  (cond
    [(= (modulo (- anio 1900) 12) 0) "Rata"]
    [(= (modulo (- anio 1900) 12) 1) "Buey"]
    [(= (modulo (- anio 1900) 12) 2) "Tigre"]
    [(= (modulo (- anio 1900) 12) 3) "Conejo"]
    [(= (modulo (- anio 1900) 12) 4) "Dragón"]
    [(= (modulo (- anio 1900) 12) 5) "Serpiente"]
    [(= (modulo (- anio 1900) 12) 6) "Caballo"]
    [(= (modulo (- anio 1900) 12) 7) "Cabra"]
    [(= (modulo (- anio 1900) 12) 8) "Mono"]
    [(= (modulo (- anio 1900) 12) 9) "Gallo"]
    [(= (modulo (- anio 1900) 12) 10) "Perro"]
    [(= (modulo (- anio 1900) 12) 11) "Cerdo"]
    [else "Error"]))

(define (main)
  (display "Ingrese su año de nacimiento: ")
  (define anio (read))
  (display "Su signo del horóscopo chino es: ")
  (displayln (horoscopo-chino anio)))

(main)



;------12------
; Leer metros o centimetros y posteriormente seleccionar la opcion de conversion
; de longitud al sistema ingles: yardas, pies, pulgadas , al final mostrar el resultado

; Función para convertir metros a yardas
(define (metros-yardas metros)
  (/ metros 0.9144))

; Función para convertir metros a pies
(define (metros-pies metros)
  (/ metros 0.3048))

; Función para convertir metros a pulgadas
(define (metros-pulgadas metros)
  (/ metros 0.0254))

; Función para convertir centímetros a yardas
(define (centimetros-yardas centimetros)
  (/ centimetros 91.44))

; Función para convertir centímetros a pies
(define (centimetros-pies centimetros)
  (/ centimetros 30.48))

; Función para convertir centímetros a pulgadas
(define (centimetros-pulgadas centimetros)
  (/ centimetros 2.54))

; Función principal
(define (main)
(displayln "Ingresa la longitud:")
(define longitud (read))
(displayln "Selecciona la opción de conversión:")
(displayln "1. Metros a yardas")
(displayln "2. Metros a pies")
(displayln "3. Metros a pulgadas")
(displayln "4. Centímetros a yardas")
(displayln "5. Centímetros a pies")
(displayln "6. Centímetros a pulgadas")
(define opcion (read))
(cond ((= opcion 1) (displayln (metros-yardas longitud)))
((= opcion 2) (displayln (metros-pies longitud)))
((= opcion 3) (displayln (metros-pulgadas longitud)))
((= opcion 4) (displayln (centimetros-yardas longitud)))
((= opcion 5) (displayln (centimetros-pies longitud)))
((= opcion 6) (displayln (centimetros-pulgadas longitud)))
(else (displayln "Opción inválida."))
)
)