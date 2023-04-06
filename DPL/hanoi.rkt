#lang racket
; Define la función 'hanoi' que toma 4 argumentos: n (número de discos), origen, auxiliar, destino
(define (hanoi n origen auxiliar destino)
  (if (= n 1)
      ; Imprime el movimiento de un disco de la varilla origen a la varilla destino
      (printf "Mover disco desde ~a hacia ~a~%" origen destino)
      (begin
        ; Mover n-1 discos de la varilla origen a la varilla auxiliar
        (hanoi (- n 1) origen destino auxiliar)
        ; Imprimir el movimiento del disco más grande (disco n) desde la varilla origen a la varilla destino
        (printf "Mover disco desde ~a hacia ~a~%" origen destino)
        ; Mover n-1 discos de la varilla auxiliar a la varilla destino, usando la varilla origen como intermediaria
        (hanoi (- n 1) auxiliar origen destino))))

; Define la función principal 'main'
(define (main)
  ; Solicita al usuario ingresar el número de discos
  (printf "Ingrese el número de discos: ")
  ; Lee el número de discos como una cadena
  (define n-str (read-line))
  ; Convierte la cadena en un número entero
  (define n (string->number n-str))
  ; Llama a la función 'hanoi' con el número de discos ingresado y las varillas 'A', 'B', 'C'
  (hanoi n 'A 'B 'C))

; Ejecuta la función principal 'main'
(main)


Claro, te proporcionaré un ejemplo explicando cómo funciona la función hanoi con tres discos. Supongamos que los discos están etiquetados como D1, D2 y D3, donde D1 es el más pequeño y D3 es el más grande. Las varillas se denominan A, B y C.

Inicialmente, todos los discos están en la varilla A y queremos moverlos a la varilla C utilizando la varilla B como auxiliar. Aquí está la secuencia de pasos:

    Llamamos a la función hanoi con n = 3, origen = A, auxiliar = B y destino = C.

    Como n > 1, llamamos a hanoi de nuevo con n = 2, origen = A, auxiliar = C y destino = B (los dos discos más pequeños se moverán de A a B usando C como auxiliar).

    a. Como n > 1, llamamos a hanoi con n = 1, origen = A, auxiliar = B y destino = C (movemos el disco más pequeño D1 de A a C).

    i. Como n = 1, imprimimos las instrucciones para mover el disco D1 de A a C.

    b. Imprimimos las instrucciones para mover el disco D2 de A a B.

    c. Llamamos a hanoi con n = 1, origen = C, auxiliar = A y destino = B (movemos el disco más pequeño D1 de C a B).

    i. Como n = 1, imprimimos las instrucciones para mover el disco D1 de C a B.

    Imprimimos las instrucciones para mover el disco D3 de A a C.

    Llamamos a hanoi con n = 2, origen = B, auxiliar = A y destino = C (los dos discos más pequeños se moverán de B a C usando A como auxiliar).

    a. Como n > 1, llamamos a hanoi con n = 1, origen = B, auxiliar = C y destino = A (movemos el disco más pequeño D1 de B a A).

    i. Como n = 1, imprimimos las instrucciones para mover el disco D1 de B a A.

    b. Imprimimos las instrucciones para mover el disco D2 de B a C.

    c. Llamamos a hanoi con n = 1, origen = A, auxiliar = B y destino = C (movemos el disco más pequeño D1 de A a C).

    i. Como n = 1, imprimimos las instrucciones para mover el disco D1 de A a C.