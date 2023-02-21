(displayln "Realizar un programa que calcule la longitud y el area total de tres circunferencias sabiendo que la primera
tiene radio R que sera introducido por teclado, la 2da tiene radio 2R y la 3ra tiene radio 3R.")

;La longitud de la circunferencia: 2*pi*r
;Donde: r es el radio, y pi=3.141592
;Area de la circunferencia: R^2*pi
(newline)


(displayln"Ingrese el radio r de la circunferencia:")
(define r (read))
(newline)
(displayln"La Longitud de la Primera circunferencia es:")
;L.C
(define pi. 3.1415)
(round (* 2(* pi. r )))
(newline)
(displayln"El Area de la primera circunferencia es:")
;A.C
(round(* pi.(sqr r)))


(newline)
(newline)


(displayln"La Longitud de la 2da circunferencia es:")
;L.C
(define pi. 3.1415)
(round (* 2(* pi. (* r  2))))
(newline)
(displayln"El Area de la 2da circunferencia es:")
;A.C
(round(* pi.(sqr r)))


(newline)
(newline)


(displayln"La Longitud de la 3ra circunferencia es:")
;L.C
(define pi. 3.1415)
(round (* 2(* pi. (* r  3))))
(newline)
(displayln"El Area de la 3ra circunferencia es:")
;A.C
(round(* pi.(sqr r)))