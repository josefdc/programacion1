;; ejercicio 1
;; Hacer una funcion que reciba un numero y. Si el numero es mayor o igual a 10,
;; que muestre un mensaje que diga "El numero es mayor que 10", si no, que muestre
;; un mensaje que diga "El numero es menor que 10"

(define (mayor_10 a)
 (if (>= a 10)
     (begin  "El numero es mayor que 10") ;Si el numero es mayor o igual a 10
     (begin "El numero es menor que 10") ;Si el numero es menor a 10
     
  )
  )

(mayor_10 9) ;; llamamos la funcion

;;---------------------
;; Ejercicio 2
;; Hacer una funcion que reciba un numero y. Si el numero esta entre 10 y 20,
;; la funcion debe de multiplicar  el numero por 10, si no, debe de mostrar un
;; mensaje que diga "No sirve su numero"

(define (problema_2 a)
  (if (and(>= a 10)(<= a 20))
      (begin (* a 10))
      (begin "no sirve su numero")
      )
  )
(problema_2 9) ;; llamamos la funcion

;;---------------------
;;Problema 3
;; Hacer una funcion que reciba un numero y. Si el numero es mayor que 5,
;; la funcion debe de mostrar un mensaje que diga "El numero es mayor que 5",
;; y un mensaje abajo que diga "Eres el mejor", si no, debe de mostrar un mensaje
;; que diga "No es mayor que 5"
(define (problema_3 a)
  (if (> a 5)
      (begin (displayln "el numero es mayor que 5")
             (displayln"eres el mejor"))
      (begin "no es mayor que 5")
      )
  )

(problema_3 2) ; llamamos la funcion

;;---------------------
;;Ejercicio 4
;; Hacer una funcion que reciba un numero, si el numero esta en el intervalo
;; [1,3] o [9,11], la funcion debe de mostrar un mensaje que diga "esta en el intervalo",
;; si no, debe de mostrar un mensaje que diga "no esta en el intervalo"
(define (problema_4 a)
  (if (or (and (>= a 1)(<= a 3))(and (>= a 9)(<= a 11)))
      (begin "esta en el intervalo")
      (begin "no esta en el intervalo")
      )
  )

(problema_4 2) ; llamamos la funcion

;;---------------------
;; Ejercicio 5
;; Un computador tiene fallas . Haz un programa que reciba un numero y
;; muestres  los siguientes mensajes que podrian ser las fallas del computador
;; 1. El computador no enciende revise conexion
;; 2. El computador se bloquea despues de 10 minutos, Vacunar equipo
;; 3. El computador se bloquea cuando abro varias aplicaciones. Aumentar capacidad de memoria
(define (problema_5 a)
  (if (= a 1)
      (begin "El computador no enciende revise conexion")
     
      (if (= a 2)
          (begin "El computador se bloquea despues de 10 minutos, Vacunar equipo")
     
          (if (= a 3)
              (begin "El computador se bloquea cuando abro varias aplicaciones. Aumentar capacidad de memoria")
              )))
 
  )
(problema_5 3) ; llamamos la funcion
(problema_5 2); llamamos la funcion
(problema_5 1); llamamos la funcion


;;---------------------
;;Ejercicio 6
;; Hacer una funcion que reciba dos numeros y muestre un mensaje que diga
;; si son iguales, si el primero es mayor que el segundo o si el primero es
;; menor que el segundo

(define (problema_6 a b)
  (if (= a b)
      (begin "son iguales")
     
 
      (if (> a b )
          (begin "el primero es mayor que el segundo")
     
          (if (< a b)
              (begin "el primero es menor que el segundo")
              ) ))
  )
(problema_6 2 3) ;  llamamos la funcion

(problema_6 2 2) ;  llamamos la funcion

;;---------------------
;Ejercicio 7
;; un almacen de venta de harian opera bajo el siguiente esquema:
;; si le compran hasta  kg de hariana vende la cantidad exacta
;; si le compran mas de 10 kg y menos de 100 kg le regala 3 kg mas
;; si le compran mas de 100 kg y menos de 500 kg le regala 10 kg
;; si le compran mas de 500 kg le regala el 10% de la cantidad
;; construir un programa que reciba la cantidad de harina y muestre
(define (problema_7 a)
  (if (<= a 10)
      (begin "se le vende exacto")
     
      (if (and (> a 10)(< a 100))
          (begin "se le regalan 3 kg mas")
     
          (if (and (> a 100)(< a 500))
              (begin "se le regalan 10 kg")
     
              (if  (> a 500)
                   (begin (display(* a 0.10)) " kg se le regalan ")
                   )
              )
          )
      )
  )

(problema_7 110) ; llamamos la funcion

;; Problema 8
;; Definir la funcion "nota", que reciba un numero . Si es mayor o igual a 5, imprimea en pan-
;; -talla "Excelente" y devuelve el numero multiplicado por 50. Si es menor a 5 y mayor a 3, 
;; imprime en pantalla "Bueno" y devuelve el numero multiplicado por 20. Si es menor o igual a 3,
;; imprime en pantalla "Malo" y devuelve el numero multiplicado por 20.   
(define (nota a)
  (if (>=  a 5)
      (begin (display"Exelente\n")  (* a 50))
   
      (if (and (< a 5)(> a 3))
          (begin (display"Bueno\n")  (* a 20))
   
          (if  (<= a 3)
               (begin (display"malo\n")  (* a 20))
               )
          )
      )
  )
(nota 2)
;;---------------------
;; Problema 9
;; Se va a relizar un paseo en una escuela. Si van
;; menos de 10 niños, el valor por cada niño es de 3000 pesos.
;; si van mas de 10 niños y menos de 50, el valor por cada niño es de 2500 pesos.
;; si van mas de 50 niños, pero menos de 200, el valor por cada niño es de 2000 pesos.
;; si van mas de 200 niños, el valor por cada niño es de 1800 pesos.
;; construir una funcion que permita calcular el dinero qu se va  recolectar para el paseo
;; dependiendo de la cantidad de niños que van a ir.

(define (problema_9 a)
    (if (< a 10)
        (* a 3000)
   
        (if (and (>= a 10)(< a 50))
            (* a 2500)
   
            (if (and (>= a 50)(< a 200))
                (* a 2000)
   
                (if  (>= a 200)
                     (* a 1800)
                     )
                )
            )
        )
    )

(problema_9 8) ; llamamos la funcion
(problema_9 20) ; llamamos la funcion
(problema_9 100) ; llamamos la funcion
(problema_9 300) ; llamamos la funcion
;;---------------------
;;Problema 10
;; Tenemos una aplicación que nos lee libros.
;; Haz un programa que dependiendo el número que se
;; ingrese, muestre en pantalla las siguientes órdenes:
;; Si el número es 1: "reproducir EL CAPITAL"
;; Si el número es 2: "reproducir EL CODIGO DA VINCI"
;; Si el número es 3: "reproducir HARRY POTTER AND
;; THE HALF BLOOD PRINCE "
;; Si el número es 4: "reproducir CIEN AÑOS DE 
;; SOLEDAD"
;; Si el número es 5: "reproducir LA ODISEA"

(define (problema_10 a)
    (if (= a 1)
     (begin "El Capital")
   
        (if (= a 2)
            (begin "El Codigo Da Vinci")
   
            (if (= a 3)
                (begin "Harry Potter and the Half Blood Prince")
   
                (if  (= a 4)
                     (begin "Cien años de soledad")
   
                     (if  (= a 5)
                          (begin "La Odisea")
                          )
                     )
                )
            )
        )
    )

(problema_9 1)

;;---------------------
;;Problema 11
;; Desarrolle la funcion interes, que reciba un numero y devuelva el interes que se genera
;; EL banco paga un interes del 3% para depositos menores a $30,000, un interes de 5% para 
;; depositos menores a $60,000 y del 7% para depositos mayores a $100,000

(define (problema_11 a)
    (if (< a 30000)
        (* a 0.03)
   
        (if (and (>= a 30000)(< a 60000))
            (* a 0.05)
   
            (if (>= a 60000)
                (* a 0.07)
                )
            )
        )
    )

(problema_11 20000) ; llamamos la funcion
;;-----------------------
;;Problema 12
;; una tienda de videos tiene el siguiente plan de ventas : Si alquilan
;; menos de 5 peliculas cobra a 3000 el alquiler de cada una. Si alquilan
;; mas de 5 peliculas y menos de 10 cobra a 2500 el alquiler de cada una.
;; y encima una pelicula de mas. Si alquilan mas de 10 peliculas pero menos
;; de 15, entonces el valor de alquiler de cada pelicual es de 2000 y encima
;; dos peliculas de mas. Si alquilan mas de 15 peliculas, entonces el valor
;; de cada pelicula es de 1800 y encima tres peliculas de mas. Construir una funcion
;; que permita saber el precio a cobrar y la cantidad de peliculas a encimar

(define (problema_12 a)
    (if (< a 5)
        (* a 3000)
   
        (if (and (>= a 5)(< a 10))
            (* a 2500)
   
            (if (and (>= a 10)(< a 15))
                (* a 2000)
   
                (if  (>= a 15)
                     (* a 1800)
                     )
                )
            )
        ) ; Fin del if
    ) ; Fin de la funcion