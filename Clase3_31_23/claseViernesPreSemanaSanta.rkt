#lang racket

;; HACER UNA FUNCION QUE DE EL MENOR DE 5 NUMERO SIN AND
(define (menor a b c d e)
  (cond
    [(< a b) (cond
               [(< a c) (cond
                          [(< a d) (cond
                                     [(< a e) a]
                                     [else e])]
                          [else d])]
               [else c])]
    [else (cond
            [(< b c) (cond
                       [(< b d) (cond
                                  [(< b e) b]
                                  [else e])]
                       [else d])]
            [else (cond
                    [(< c d) (cond
                               [(< c e) c]
                               [else e])]
                    [else (cond
                            [(< d e) d]
                            [else e])])])]))

(displayln (menor 1 2 3 4 5 ))
(displayln (menor 5 4 3 2 1 ))
(displayln (menor 2 1 3 4 5 ))
(displayln (menor 2 3 4 1 5 ))
(displayln (menor 1 4 5 2 3 ))

; codigo explicado
; Define la función menor que toma cinco argumentos (a, b, c, d, e)
(define (menor a b c d e)
  (cond
    ; Compara a con b
    [(< a b)
     ; Si a < b, entonces anida otro cond para comparar a con c
     (cond
       [(< a c)
        ; Si a < c, entonces anida otro cond para comparar a con d
        (cond
          [(< a d)
           ; Si a < d, entonces anida otro cond para comparar a con e
           (cond
             [(< a e) a] ; Si a < e, entonces a es el menor
             [else e])] ; Si no, e es el menor
          [else d])] ; Si a no es menor que d, entonces d es el menor
       [else c])] ; Si a no es menor que c, entonces c es el menor
    [else
     ; Si a no es menor que b, se procede a comparar b, c, d y e
      (cond
        [(< b c)
          (cond
            [(< b d)
            (cond
              [(< b e) b]
              [else e])]
            [else d])]
        [else
          (cond
            [(< c d)
            (cond
              [(< c e) c]
              [else e])]
            [else
            (cond
              [(< d e) d]
              [else e])])])]))
