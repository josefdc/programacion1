#lang racket

; Define la función principal que realiza el cifrado César
(define (cesar-encrypt text shift)
  (if (string=? text "") ; Verifica si la cadena de texto está vacía
      "" ; Si está vacía, retorna una cadena vacía
      ; Si no está vacía, concatena el carácter cifrado con el resto de la cadena cifrada
      (string-append (cesar-shift (string-ref text 0) shift) ; Obtiene el primer carácter de la cadena y lo cifra
                     (cesar-encrypt (substring text 1) shift)))) ; Recursivamente cifra el resto de la cadena

; Define la función que realiza el cifrado César en un solo carácter
(define (cesar-shift char shift)
  (define base (if (char-upper-case? char) 65 97)) ; Define el código ASCII base dependiendo si el carácter es mayúscula o minúscula
  (if (char-alphabetic? char) ; Verifica si el carácter es alfabético
      ; Si es alfabético, realiza el cifrado César y retorna el carácter cifrado
      (string (integer->char (+ base (modulo (+ (- (char->integer char) base) shift) 26))))
      (string char))) ; Si no es alfabético, retorna el carácter sin cambiar

; Probar la función de cifrado
(displayln (cesar-encrypt "mundo" 13))

; La función cesar-encrypt se encarga de recorrer cada carácter de la cadena de entrada y aplicarle 
; el cifrado César. Esta función utiliza un enfoque recursivo. En cada paso de la recursión, se toma 
; el primer carácter de la cadena, se cifra y se concatena con el resultado de la encriptación del
;  resto de la cadena. Esto se repite hasta que todos los caracteres de la cadena se han cifrado.

; La función cesar-shift realiza el cifrado César para un solo carácter. En primer lugar, determina si 
; el carácter es una letra mayúscula o minúscula para establecer el código ASCII base (65 para mayúsculas 
; y 97 para minúsculas). Luego, si el carácter es una letra (alfabético), se le aplica el cifrado César; si no, se deja sin cambios.

; El cifrado César en sí se realiza sumando el desplazamiento al valor ASCII del carácter,
;  sustraído el valor base para mantener el valor dentro del rango alfabético. Luego, se aplica 
;  la operación de módulo por 26 (el número de letras en el alfabeto) para asegurar que el cifrado 
;  es cíclico, es decir, después de 'z' o 'Z', el cifrado sigue con 'a' o 'A'. Luego se agrega el valor 
;  base nuevamente y se convierte el valor numérico resultante de nuevo a un carácter.