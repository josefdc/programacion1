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
