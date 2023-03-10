;; una fuancion que calcule el mayor de tres numeros con display

(define (maximo x y z)
  (if (and (> x y) (> x z))
      (begin (display "El mayor es: ") 
             x)
            
     (if (and (> y x) (> y z))
          (begin (display "El mayor es: ") 
          y)

      (begin (display "El mayor es: ")
             z))
      )
  )

(maximo 5 6 3)
