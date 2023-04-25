#lang racket

; Define una función llamada 'imprime' que toma tres argumentos: i, t y cadena.
(define (imprime i t cadena)
  ; Si el valor de i es menor o igual que t, entonces ejecuta el siguiente bloque de código.
  (if (<= i t)
      (begin
        ; Muestra la cadena en la pantalla sin un salto de línea.
        (display cadena)
        ; Llama a la función 'imprime' nuevamente con i incrementado en 1, t y la cadena.
        (imprime (+ i 1) t cadena))
      ; Si el valor de i no es menor o igual que t, crea un salto de línea en la pantalla.
      (newline)))

; Define una función llamada 'm' que toma un argumento: ciclos.
(define (m ciclos)
  ; Si el valor de ciclos es mayor o igual que 1, entonces ejecuta el siguiente bloque de código.
  (if (>= ciclos 1)
      (begin
        ; Llama a la función 'imprime' con i establecido en 1, t en ciclos + 1 y la cadena como "*".
        (imprime 1 (+ ciclos ) "*")
        ; Llama a la función 'm' nuevamente con ciclos disminuido en 1.
        (m (- ciclos 1)))
      ; Si el valor de ciclos no es mayor o igual que 1, crea un salto de línea en la pantalla.
      (newline)))

; Llama a la función 'm' con el valor inicial de ciclos establecido en 5.
(m 5)

;-----------------------------------------------------------------------------

; Define una función llamada 'figura' que toma dos argumentos: i y j.
(define (figura i j)
  ; Si el valor de i es menor que 6, entonces continúa con la siguiente condición.
  (if (< i 6)
      ; Si el valor de j es menor que i, entonces ejecuta el siguiente bloque de código.
      (if (< j i)
          (begin
            ; Muestra un asterisco en la pantalla sin un salto de línea.
            (display "*")
            ; Llama a la función 'figura' nuevamente con el mismo valor de i y j incrementado en 1.
            (figura i (+ j 1)))
          ; Si el valor de j no es menor que i, ejecuta el siguiente bloque de código.
          (begin
            ; Crea un salto de línea en la pantalla.
            (newline)
            ; Llama a la función 'figura' nuevamente con el valor de i incrementado en 1 y j establecido en 1.
            (figura (+ i 1) 1)))
      ; Si el valor de i no es menor que 6, devuelve una lista vacía.
      '()))

; Llama a la función 'figura' con los valores iniciales de i y j establecidos en 1.
(figura 1 1)

; -----------------------------------------------------------------------------
; Define una función llamada 'figura' que toma tres argumentos: i, j y k.
(define (figura i j k)
  ; Si el valor de i es menor o igual que k, entonces continúa con la siguiente condición.
  (if (<= i k)
      ; Si el valor de j es menor o igual que i, entonces ejecuta el siguiente bloque de código.
      (if (<= j i)
          (begin
            ; Muestra un asterisco en la pantalla sin un salto de línea.
            (display "*")
            ; Llama a la función 'figura' nuevamente con los mismos valores de i y k, pero j incrementado en 1.
            (figura i (+ j 1) k))
          ; Si el valor de j no es menor o igual que i, ejecuta el siguiente bloque de código.
          (begin
            ; Crea un salto de línea en la pantalla.
            (newline)
            ; Llama a la función 'figura' nuevamente con i incrementado en 1, j establecido en 1 y el mismo valor de k.
            (figura (+ i 1) 1 k)))))

; Llama a la función 'figura' con los valores iniciales de i y j establecidos en 1 y k siendo el valor ingresado por el usuario.
(figura 1 1 (read))

;-----------------------------------------------------------------------------

; Define una función llamada 'figura' que toma cuatro argumentos: i, j, k y contador.
(define (figura i j k contador)
  ; Si el valor de i es menor o igual que k, entonces continúa con la siguiente condición.
  (if (<= i k)
      ; Si el valor de j es menor o igual que i, entonces ejecuta el siguiente bloque de código.
      (if (<= j i)
          (begin
            ; Muestra el valor del contador en la pantalla seguido de un espacio.
            (display contador)
            (display " ")
            ; Llama a la función 'figura' nuevamente con los mismos valores de i y k, j incrementado en 1 y contador incrementado en 1.
            (figura i (+ j 1) k (+ contador 1)))
          ; Si el valor de j no es menor o igual que i, ejecuta el siguiente bloque de código.
          (begin
            ; Crea un salto de línea en la pantalla.
            (newline)
            ; Llama a la función 'figura' nuevamente con i incrementado en 1, j establecido en 1, el mismo valor de k y el contador sin cambios.
            (figura (+ i 1) 1 k contador))))
      
  ; Si el valor de i no es menor o igual que k, no hace nada.
  )

; Llama a la función 'figura' con los valores iniciales de i y j establecidos en 1, k siendo el valor ingresado por el usuario y contador establecido en 1.
(figura 1 1 (read) 1)

;-----------------------------------------------------------------------------

; Define una función llamada 'figura' que toma tres argumentos: i, j y k.
(define (figura i j k)
  ; Si el valor de i es menor o igual que k, entonces continúa con la siguiente condición.
  (if (<= i k)
      ; Si el valor de j es menor o igual que k, entonces ejecuta el siguiente bloque de código.
      (if (<= j k)
          (begin
            ; Muestra un asterisco en la pantalla sin un salto de línea.
            (display "*")
            ; Llama a la función 'figura' nuevamente con los mismos valores de i y k, pero j incrementado en 1.
            (figura i (+ j 1) k))
          ; Si el valor de j no es menor o igual que k, ejecuta el siguiente bloque de código.
          (begin
            ; Crea un salto de línea en la pantalla.
            (newline)
            ; Llama a la función 'figura' nuevamente con i incrementado en 1, j establecido en 1 y el mismo valor de k.
            (figura (+ i 1) 1 k))))
      
  ; Si el valor de i no es menor o igual que k, no hace nada.
  )

; Llama a la función 'figura' con los valores iniciales de i y j establecidos en 1 y k siendo el valor ingresado por el usuario.
(figura 1 1 (read))

;-----------------------------------------------------------------------------
; Define una función llamada 'imp' que toma tres argumentos: i, t y cad.
(define (imp i t cad)
  ; Si el valor de i es menor o igual que t, entonces ejecuta el siguiente bloque de código.
  (if (<= i t)
      (begin
        ; Muestra la cadena 'cad' en la pantalla sin un salto de línea.
        (display cad)
        ; Llama a la función 'imp' nuevamente con i incrementado en 1, y los valores de t y cad sin cambios.
        (imp (+ i 1) t cad))))

; Define una función llamada 'm' que toma un argumento: ciclos.
(define (m ciclos)
  ; Si el valor de ciclos es mayor o igual que 0, entonces ejecuta el siguiente bloque de código.
  (if (>= ciclos 0)
      (begin
        ; Llama a la función 'imp' con los valores iniciales de i establecido en 1, t calculado como (5 - ciclos * 2) y cad establecido en "*".
        (imp 1 (- 5 (* ciclos 2)) "*")
        ; Crea un salto de línea en la pantalla.
        (newline)
        ; Llama a la función 'm' nuevamente con ciclos decrementado en 1.
        (m (- ciclos 1))
        ; Llama a la función 'imp' nuevamente con los mismos valores que antes, pero esta vez cad está establecido en "+".
        (imp 1 (- 5 (* ciclos 2)) "+")
        ; Crea un salto de línea en la pantalla.
        (newline))))

; Llama a la función 'm' con el valor inicial de ciclos establecido en 2.
(m 2)

;-----------------------------------------------------------------------------
; Define una función llamada 'imp' que toma tres argumentos: i, t y cad.
(define (imp i t cad)
  ; Si el valor de i es menor o igual que t, entonces ejecuta el siguiente bloque de código.
  (if (<= i t)
      (begin
        ; Muestra la cadena 'cad' en la pantalla sin un salto de línea.
        (display cad)
        ; Llama a la función 'imp' nuevamente con i incrementado en 1, y los valores de t y cad sin cambios.
        (imp (+ i 1) t cad))))

; Define una función llamada 'm' que toma un argumento: ciclos.
(define (m ciclos)
  ; Si el valor de ciclos es mayor o igual que 0, entonces ejecuta el siguiente bloque de código.
  (if (>= ciclos 0)
      (begin
        ; Llama a la función 'imp' con los valores iniciales de i establecido en 1, t igual a (ciclos + 2) y cad establecido en "*".
        (imp 1 (+ ciclos 2) "*")
        ; Crea un salto de línea en la pantalla.
        (newline)
        ; Llama a la función 'm' nuevamente con ciclos decrementado en 1.
        (m (- ciclos 1))
        ; Llama a la función 'imp' nuevamente con los mismos valores que antes, pero esta vez cad está establecido en "+".
        (imp 1 (+ ciclos 2) "+")
        ; Crea un salto de línea en la pantalla.
        (newline))))

; Llama a la función 'm' con el valor inicial de ciclos establecido en 3.
(m 3)

;-----------------------------------------------------------------------------


(define (imprime-espacios n)
  (if (> n 0)
      (begin
        (display " ")
        (imprime-espacios (- n 1)))))

(define (imprime-asteriscos n)
  (if (> n 0)
      (begin
        (display "*")
        (imprime-asteriscos (- n 1)))))

(define (imprime-patron n i)
  (if (<= i n)
      (begin
        (imprime-espacios (- n i))
        (imprime-asteriscos i)
        (newline)
        (imprime-patron n (+ i 1)))))

(imprime-patron 4 1)

;----------------------------------------------------------------------------------------------------

(define (imprime-espacios n)
  (if (> n 0)
      (begin
        (display " ")
        (imprime-espacios (- n 1)))))

(define (imprime-asteriscos n)
  (if (> n 0)
      (begin
        (display "*")
        (imprime-asteriscos (- n 1)))))

(define (imprime-patron-ascendente n i)
  (if (<= i n)
      (begin
        (imprime-espacios (- n i))
        (imprime-asteriscos i)
        (newline)
        (imprime-patron-ascendente n (+ i 1)))))

(define (imprime-patron-descendente n i)
  (if (<= i n)
      (begin
        (imprime-espacios i)
        (imprime-asteriscos (- n i))
        (newline)
        (imprime-patron-descendente n (+ i 1)))))

(define (imprime-patron-completo n)
  (imprime-patron-ascendente n 1)
  (imprime-patron-descendente n 1))

(imprime-patron-completo 3)

