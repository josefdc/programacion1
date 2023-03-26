#lang racket

;; definamos la funcion para saber si es numero primo a traves de condicionales if


; Problema 1
; un programa que reciba cuatro números y diga cuáles son primos
;  y cuáles no lo son, los que son primos los suma y los que no lo son los multiplique

;  Ejemplo-5 7 6 9
; 	5 es primo
; 	7 es primo
; 	6 no es primo
; 	9 no es primo
; 	5 + 7 = 12
; 	6 * 9 = 54

; Ejemplo-2 7 8 9 5
;            7 es primo
;            8 no es primo
;            9 no es primo
;            5 es primo
;            7 + 5 =12
;            8 * 9= 72

;; solucion

;; definamos la funcion para saber si es numero primo a traves de condicionales if



; Función para verificar si un número con un dígito es primo
(define (es-primo? n)
  (if (or (= n 2) (= n 3) (= n 5) (= n 7))
      #t
      #f))

; Función para obtener el dígito en la posición pos del número n
(define (obtener-digito n pos)
  (remainder (quotient n (expt 10 pos)) 10))

; Funciones auxiliares para calcular la suma y el producto
(define (calcular-suma-primos a b c d)
  (+ (if (es-primo? a) a 0)
     (if (es-primo? b) b 0)
     (if (es-primo? c) c 0)
     (if (es-primo? d) d 0)))

(define (calcular-producto-no-primos a b c d)
  (* (if (not (es-primo? a)) a 1)
     (if (not (es-primo? b)) b 1)
     (if (not (es-primo? c)) c 1)
     (if (not (es-primo? d)) d 1)))

; Función principal que pide el número al usuario
(define (main)
  (display "Ingrese un número de cuatro dígitos: ")
  (define numero (read))
  
  ; Obtener los dígitos
  (define millares (obtener-digito numero 3))
  (define centenas (obtener-digito numero 2))
  (define decenas (obtener-digito numero 1))
  (define unidades (obtener-digito numero 0))
  
  ; Calcular la suma de primos y el producto de no primos
  (define suma-primos (calcular-suma-primos millares centenas decenas unidades))
  (define producto-no-primos (calcular-producto-no-primos millares centenas decenas unidades))

  ; Mostrar el resultado
  (display "Suma de primos: ")
  (displayln suma-primos)
  (display "Producto de no primos: ")
  (displayln producto-no-primos))

(main)



;;Problema 2
;;Comprueba si el punto {x, y} está situado dentro del rectángulo {x1, y1} {x2, y2}. 
;;Los datos de entrada se leen de la consola y constan de 6 líneas: los números decimales
;; x1, y1, x2, y2, x e y (ya que se garantiza que x1 < x2 e y1 < y2).

;; creamos la funcion que determina si un punto esta dentro de un rectangulo
   (define (esta-dentro? x1 y1 x2 y2 x y)
   (if (and (>= x x1) (<= x x2) (>= y y1) (<= y y2))
         #t
         #f))

   (define (main)
      (display "Ingrese los valores de x1, y1, x2, y2, x e y: ")
   (define x1 (read))
   (define y1 (read))
      (define x2 (read))
      (define y2 (read))
      (define x (read))
      (define y (read))
      (if (esta-dentro? x1 y1 x2 y2 x y)
            (display "El punto esta dentro del rectangulo")
            (display "El punto no esta dentro del rectangulo")))


(main)

; Problema 1. 
; En una empresa de fabricación de prendas se compra la tela al por mayor de la siguiente manera: se tiene la base mayor, base menor y la altura(trapecio), entre más metros 
; cuadrados de tela compre, más descuento le harán, por ejemplo: si compran menos de 100 metros cuadrados no se hará descuento, si compran menos de 300 metros cuadrados 15%, si compran menos de 500 metros cuadrados 20% y si compran mas de 700 metros cuadrados 30%, teniendo en cuenta que el metro cuadrado de tela es a 2000 pesos, hacer un programa que calcule el descuento de la compra.
; Ejemplo: 
; B= 10 b= 5 h=8  A= (B+b)/2*h
; A= 60 metros cuadrados, y se multiplica por 2000 (precio de tela por metro cuadrado)
; R= 120000, sin descuento


;#6 Ej 1
(define precio 2000)
(define (areaTrap a b c)
  (*(/(+ a b)2)c)
  )
(define (descuento a)
  [if (<= a 100)
      a
      [if (and (> a 100)(<= a 300))
          (* (* a 0.85) precio)
          [if (and(> a 300)(<= a 700))
              (( a 0.80) precio)
              [if (> a 700)
                  (( a 0.70) precio)
                  ]
              ]
          ]
      ]
  )
(define (principal)
  (display "Ingrese la base mayor de la figura")
  (define B (read))
  (display "Ingrese la base menor de la figura")
  (define b (read))
  (display "Ingrese la altura de la figura")
  (define h (read))
  (display "El valor a pagar con descuento es")
  (descuento (areaTrap B b h))
  )
(principal)
; Problema 2. 
; Un programa que reciba 5 números, elimine los dos números más pequeños, eleve el más grande a la 2, sume los dos restantes y luego los multiplique.
; Ejemplo 1: 
; -1 2 3 4 5
; -3 4 5
; -(3+4)(25)
; -175
; Ejemplo 2:
; Ingresa: 9 10 29 5 18
; Quedan: 10 29 18
; Operaciones: (10+18)(841)
; Resultado: 23548

;#6 Ej2
(define (menor_5 a b c d e)
  (if (and (< a b)(< a c)(< a d)(< a e))
      (menor_4 b c d e)
      (if (and(< b a)(< b c)(< b d)(< b e))
          (menor_4 a c d e)
          (if (and(< c a)(< c b)(< c d)(< c e))
              (menor_4 a b d e)
              (if (and(< d a)(< d b)(< d c)(< d e))
                  (menor_4 a b c e)
                  (menor_4 a b c d)
                  )
              )
          )
      )
  )
(define (menor_4 a b c d)
  [if (and (< a b)(< a c)(< a d))
      (mayor_3 b c d)
      [if (and(< b a)(< b c)(< b d))
          (mayor_3 a c d)
          [if (and (< c a)(< c b)(< c d))
              (mayor_3 a b d)
              (mayor_3 a b c)
              ]
          ]
      ]
  )
(define (mayor_3 a b c)
  (if (and (> a b)(> a c))
      (* (sqr a)(+ b c))
      [if (and(> b a)(> b c))
          (* (sqr b)(+ a c))
          (* (sqr c)(+ a b))
          ]
      )
  )
(define (principal)
  (displayln "Ingrese 5 numeros diferentes separados por espacios")
  (define N1 (read))
  (define N2 (read))
  (define N3 (read))
  (define N4 (read))
  (define N5 (read))
  (displayln "El resultado es ")
  (menor_5 N1 N2 N3 N4 N5)
  )
(principal)

; Problema 1. En un grupo de programación se hacen 5 pruebas las cuales el profesor obtiene 5 notas. En vista de las muy buenas notas que obtuvieron los estudiantes el profesor decide que la nota se calculará así:
; 1: Eliminar la menor de las 5 notas.

; 2. La mayor nota tendrá un porcentaje del 30%.

; 3: Las 2 notas intermedias tendrán un porcentaje del 20%

; 4: La última nota tendrá un porcentaje del 30%.

; 5: Además se pedirá el rendimiento del estudiante en comportamiento si este es excelente o bueno se le sumarán 3 décimas en la nota menor si no se le restaron 3 décimas en la nota mayor

; Ejm: Si las notas son 1.0-2.2-3.5-4.7-5.0(no importa el orden en que se ingresen las notas)
; Entonces
; Paso 1 Eliminar la menor
; 2.2  3.5  4.7  5.0

; Paso 2: Pedir el rendimiento del estudiante (1= Excelente , 2= Bueno, 3= Regular, 4= Malo)
; Supongamos que para este caso se ingresa 4 entonces se le restaron 3 décimas a la nota mayor:
; 2.2  3,5  4.7  (5.0 - 0,3)
; 2.2  3.5  4.7  4.7

; Paso 3 imprimir la nota final, como en este caso hay 2 iguales cualquiera de las 2 podrá ser la mayor
;     4.7 (30%)  ->1.41 
;     4.7 (20%)  ->0.94
;     3.5 (20%)  ->0.7
;     2.2 (30%)  ->0.66
; La nota final es = 3.71


;#7 Ej 1
(define (menor_5 a b c d e R)
  (if (and (< a b)(< a c)(< a d)(< a e))
      (if (or (= R 1)(= R 2))
          (menor_4 b c d e)
          (if (or (= R 3)(= R 4)(= R 5))
              (mayor_4 b c d e)
              )
          )
      (if (and(< b a)(< b c)(< b d)(< b e))
          (if (or (= R 1)(= R 2))
              (menor_4 a c d e)
              (if (or(= R 3)(= R 4)(= R 5))
                  (mayor_4 a c d e)
                  )
              )
          (if (and(< c a)(< c b)(< c d)(< c e))
              (if (or (= R 1)(= R 2))
                  (menor_4 a b d e)
                  (if (or (= R 3)(= R 4)(= R 5))
                      (mayor_4 a b d e)
                      )
                  )
              (if (and(< d a)(< d b)(< d c)(< d e))
                  (if (or(= R 1)(= R 2))
                      (menor_4 a b c e)
                      (if (or (= R 3)(= R 4)(= R 5))
                          (mayor_4 a b c e)
                          )
                      )
                  (if (or(= R 1)(= R 2))
                      (menor_4 a b c d)
                      (if (or (= R 3)(= R 4)(= R 5))
                          (mayor_4 a b c d)
                          )
                      )
                  )
              )
          )
      )
  )
(define (menor_4 a b c d)
  (if (and (< a b)(< a c)(< a d))
      (+ (*(+ a 0.3)0.30)(mayor_3 b c d))
      (if (and(< b a)(< b c)(< b d))
          (+ (*(+ b 0.3)0.30)(mayor_3 a c d))
          (if (and(< c a)(< c b)(< c d))
              (+ (*(+ c 0.3)0.30)(mayor_3 a b d))
              (+ (*(+ d 0.3)0.30)(mayor_3 a b c))
              )
          )
      )
  )
(define(mayor_3 a b c)
  (if (and(> a b)(> a c))
      (+ (* a 0.30)(* b 0.20)(* b 0.20))
      (if (and (> b a)(> b c))
          (+ (* b 0.30)(* a 0.20)(* c 0.20))
          (+ (* c 0.30)(* a 0.20)(* b 0.20))
          )
      )
  )
(define (mayor_4 a b c d)
  (if (and (> a b)(> a c)(> a d))
      (+ (* (- a 0.3)0.30)(menor_3 b c d))
      (if (and(> b a)(> b c)(> b d))
          (+ (* (- b 0.3)0.30)(menor_3 a c d))
          (if (and(< c a)(< c b)(< c d))
              (+ (* (- c 0.3) 0.30)(menor_3 a b d))
              (+ (* (- d 0.3) 0.30)(menor_3 a b c))
              )
          )
      )
  )
(define (menor_3 a b c)
  (if (and(< a b)(< a c))
      (+ (* a 0.30)(* b 0.20)(* c 0.20))
      (if (and (< b a)(< b c))
          (+ (* b 0.30)(* a 0.20)(* c 0.20))
          (+ (* c 0.30)(* a 0.20)(* b 0.20))
          )
      )
  )
(define (principal)
  (displayln "Ingrese 5 notas separadas por espacios ")
  (define n1 (read))
  (define n2 (read))
  (define n3 (read))
  (define n4 (read))
  (define n5 (read))
  (displayln "Ingrese el rendimiento, siendo 1=Excelente, 2=Bueno, 3=Regular, 4=Malo")
  (define R (read))
  (displayln "El promedio total es ")
  (menor_5 n1 n2 n3 n4 n5 R)
  )
(principal)

; Problema 2: Hacer un programa que reciba 10 números, primero elimine el numero mayor, despues elimine el numero menor y divide entre 5 los 8 resultantes, luego muestra las operaciones aritméticas entre estos: suma resta multiplicación y división
; Ejm:
; 1 2 3 4 5 6 7 8 9 10 (no importa el orden en que se ingresen los números)
; 1 2 3 4 5 6 7 8 9
; 2 3 4 5 6 7 8 9
; 2 /5  3 / 5  4 /5 1  6/5  7/5  8/5  9/5

; (Suma entre ellos de mayor a menor) =8.8
; (resta entre ellos) = -6.8
; (división entre ellos) = 1.0764577822
; (multiplicación entre ellos de mayor a menor)= 0.9289728

;#7 Ej 2
 (define (mayor a b c d e f g h i j)
   (if (and (> a b) (> a c) (> a d) (> a e) (> a f) (> a g) (> a h) (> a i) (> a j))
       (menor b c d e f g h i j)
       (if (and (> b a) (> b c) (> b d) (> b e) (> b f) (> b g) (> b h) (> b i) (> b j))
           (menor a c d e f g h i j)
           (if (and (> c a) (> c b) (> c d) (> c e) (> c f) (> c g) (> c h) (> c i) (> c j))
               (menor a b d e f g h i j)
               (if (and (> d a) (> d b) (> d c) (> d e) (> d f) (> d g) (> d h) (> d i) (> d j))
                   (menor a b c e f g h i j)
                   (if (and (> e a) (> e b) (> e c) (> e d) (> e f) (> e g) (> e h) (> e i) (> e j))
                       (menor a b c d f g h i j)
                       (if (and (> f a) (> f b) (> f c) (> f d) (> f e) (> f g) (> f h) (> f i) (> f j))
                           (menor a b c d e g h i j)
                           (if (and (> g a) (> g b) (> g c) (> g d) (> g e) (> g f) (> g h) (> g i) (> g j))
                               (menor a b c d e f h i j)
                               (if (and (> h a) (> h b) (> h c) (> h d) (> h e) (> h f) (> h g) (> h i) (> h j))
                                   (menor a b c d e f g i j)
                                   (if (and (> i a) (> i b) (> i c) (> i d) (> i e) (> i f) (> i g) (> i h) (> i j))
                                       (menor a b c d e f g h j)
                                       (menor a b c d e f g h i)
                                    )
                                )
                            )
                        )
                    )
                )
            )
        )
    )
 )
                                                                                 
 
 (define (menor a b c d e f g h i)
   (if (and (< a b) (< a c) (< a d) (< a e) (< a f) (< a g) (< a h) (< a i))
         (suma b c d e f g h i)
       (if (and (< b a) (< b c) (< b d) (< b e) (< b f) (< b g) (< b h) (< b i))
             (suma a c d e f g h i)
           (if (and (< c a) (< c b) (< c d) (< c e) (< c f) (< c g) (< c h) (< c i))
               (suma a b d e f g h i)
               (if (and (< d a) (< d b) (< d c) (< d e) (< d f) (< d g) (< d h) (< d i))
                   (suma a b c e f g h i)
                   (if (and (< e a) (< e b) (< e c) (< e d) (< e f) (< e g) (< e h) (< e i))
                       (suma a b c d f g h i)
                       (if (and (< f a) (< f b) (< f c) (< f d) (< f e) (< f g) (< f h) (< f i))
                           (suma a b c d e g h i)
                           (if (and (< g a) (< g b) (< g c) (< g d) (< g e) (< g f) (< g h) (< g i))
                               (suma a b c d e f h i)
                               (if (and (< h a) (< h b) (< h c) (< h d) (< h e) (< h f) (< h g) (< h i))
                                   (suma a b c d e f g i)
                                   (suma a b c d e f g h)
                                )
                            )
                        )
                    )
                )
            )
        )
    )
 )
 
 (define (suma a b c d e f g h)
   (display "La suma es: ")(displayln (+ (/ a 5) (/ b 5) (/ c 5) (/ d 5) (/ e 5) (/ f 5) (/ g 5.) (/ h 5)))
   (display "La multiplicacion es: ")(displayln (* (/ a 5) (/ b 5) (/ c 5) (/ d 5) (/ e 5) (/ f 5) (/ g 5.) (/ h 5)))
   (display "La resta es: ")(displayln (- (/ a 5) (/ b 5) (/ c 5) (/ d 5) (/ e 5) (/ f 5) (/ g 5.) (/ h 5)))
   (display "La division es: ")(display (/ (/ a 5) (/ b 5) (/ c 5) (/ d 5) (/ e 5) (/ f 5) (/ g 5.) (/ h 5)))
 )
 
 (define (principal)
   (display "Por favor ingrese el primer numero: ")
   (define N1 (read))
   (display "Por favor ingrese el segundo numero: ")
   (define N2 (read))
   (display "Por favor ingrese el tercer numero: ")
   (define N3 (read))
   (display "Por favor ingrese el cuarto numero: ")
   (define N4 (read))
   (display "Por favor ingrese el quinto numero: ")
   (define N5 (read))
   (display "Por favor ingrese el sexto numero: ")
   (define N6 (read))
   (display "Por favor ingrese el septimo numero: ")
   (define N7 (read))
   (display "Por favor ingrese el octavo numero: ")
   (define N8 (read))
   (display "Por favor ingrese el noveno numero: ")
   (define N9 (read))
   (display "Por favor ingrese el decimo numero: ")
   (define N10 (read))
   (mayor N1 N2 N3 N4 N5 N6 N7 N8 N9 N10)
 )
 (principal)

; Problema 1 
; Calculadora de impuestos
; Escribe un programa que le pida al usuario ingresar su salario anual y determine la cantidad de impuestos que debe pagar en función de la siguiente tabla:
; Si el salario es menor o igual a 10,000 dólares, la tasa impositiva es del 10%.
; Si el salario es mayor a 10,000 dólares y menor o igual a 50,000 dólares, la tasa impositiva es del 20%.
; Si el salario es mayor a 50,000 dólares, la tasa impositiva es del 30%.


;#8 Ej 1
(define (impuestos a)
  (if (<= a 10000)
      (* a 0.10)
      (if (and(> a 10000)(<= a 50000))
          (* a 0.20)
          (* a 0.30)
          )
      )
  )
(define (principal)
  (displayln "Ingrese su salario anual para saber cuanto debe pagar de impuesto ")
  (define I (read))
  (displayln "La cantidad de impuesto a pagar es ")
  (impuestos I)
  )
(principal)

; Problema 2:

; Crea una función que calcule el índice de masa corporal (IMC) de una persona. 
; El IMC se calcula dividiendo el peso de una persona en kilogramos por el cuadrado
;  de su altura en metros. La función deberá devolver un mensaje que indique si
;   la persona tiene un peso saludable, está por encima del peso saludable o está
;    por debajo del peso saludable


;#8 Ej 2
(define (IMC a b)
  (/ a (sqr b))
  )
(define (saludable a)
  [if (and(> a 18.5)(< a 24.9))
      "Su peso es saludable"
      [if (and(> a 25.0)(< a 29.9))
          "Usted está en sobrepeso"
          "Usted está en el rango de obesidad"
          ]
      ]
  )
(define (principal)
  (display "Ingrese su peso en Kilogramos")
  (define Kg (read))
  (display "Ingrese su altura en metros")
  (define M (read))
  (display "Su IMC es ")
  (display (IMC Kg M))
  (display ", esto quiere decir que ")
  (saludable (IMC Kg M))
  )
(principal)

; Problema 1

; El ejercicio consiste en crear una función llamada "calcular-impuesto" que tome como parámetros el precio de un producto y la ciudad donde se está comprando. La función debe devolver el valor del impuesto correspondiente.
; Sin embargo, el valor del impuesto depende de una serie de condiciones complejas. En particular,
; las reglas son las siguientes:
; Si el precio del producto es menor o igual a 100, el impuesto es del 5%.
; Si el precio del producto está entre 100 y 500, el impuesto es del 10%.
; Si el precio del producto es mayor a 500, el impuesto es del 15%.

; Si la ciudad donde se está comprando es "Bogotá", se debe sumar un impuesto adicional del 2%.
; Si la ciudad donde se está comprando es "Medellín", se debe sumar un impuesto adicional del 3%.
; Si la ciudad donde se está comprando es "Cali", se debe sumar un impuesto adicional del 4%.

; ejemplo
; Para implementar esta función, utilizamos la estructura "if" para evaluar 
;las condiciones del precio y la ciudad, y la estructura "and" para evaluar múltiples condiciones dentro de cada caso.

;#9 Ej 1
(define (impuesto a b)
  [if (<= a 100)
      [if (= b 1)
          (+ a (* a 0.07))
          [if (= b 2)
              (+ a (* a 0.08))
              [if (= b 3)
                  (+ a (* a 0.09))
                  ]
              ]
          ]
      [if (and(> a 100)(<= a 500))
          [if (= b 1)
              (+ a (* a 0.12))
              [if (= b 2)
                  (+ a (* a 0.13))
                  [if (= b 3)
                      (+ a (* a 0.14))
                      ]
                  ]
              ]
          [if (> a 500)
              [if (= b 1)
                  (+ a (* a 0.17))
                  [if (= b 2)
                      (+ a (* a 0.18))
                      [if (= b 3)
                          (+ a (* a 0.19))
                          ]
                      ]
                  ]
              ]
          ]
      ]
  )
(define (principal)
  (display "Ingrese el precio del producto")
  (define Precio (read))
  (display "Ingrese la ciudad desde la cual está comprando donde 1=Bogotá, 2=Medellin y 3=Cali")
  (define Ciudad (read))
  (display "El impuesto que debe pagar de acuerdo con el precio del producto y la ciudad es ")
  (impuesto Precio Ciudad)
  )
(principal)

; Una empresa quiere hacer una compra de varias piezas de la misma clase a una fábrica 
; de refacciones. La empresa, dependiendo del monto total de la compra, decidirá qué hacer
;  para pagar al fabricante. Si el monto total de la compra excede de $500 000 
;  la empresa tendrá la capacidad de hacer un descuento del 15% del monto de la compra,
;   pedir prestado al banco un 30% y el resto lo pagará solicitando un crédito al fabricante. 
;   Si el monto total de la compra no excede de $500 000 la empresa tendrá capacidad de invertir de 
;   su propio dinero un 70% y el restante 30% lo pagará solicitando crédito al fabricante.
;    El fabricante cobra por concepto de intereses un 20% sobre la cantidad que se le pague a crédito.

;#9 Ej 2

; Función para calcular el descuento
(define (calcular-descuento monto)
  (* monto 0.15))

; Función para calcular el monto a pedir prestado al banco
(define (calcular-prestamo monto)
  (* monto 0.30))

; Función para calcular el monto a pagar con dinero propio
(define (calcular-dinero-propio monto)
  (* monto 0.70))

; Función para calcular el monto a pagar a crédito al fabricante
(define (calcular-credito monto)
  (* monto 0.30))

; Función para calcular el monto total a pagar incluyendo intereses
(define (calcular-monto-total monto-credito)
  (* monto-credito 1.20))

; Función principal que pide el monto de la compra al usuario
(define (main)
  (display "Ingrese el monto total de la compra: ")
  (define monto (read))
  
  (if (> monto 500000)
      (begin
        (define descuento (calcular-descuento monto))
        (define monto-descuento (- monto descuento))
        (define prestamo (calcular-prestamo monto-descuento))
        (define credito (calcular-credito (- monto-descuento prestamo)))
        (define total-pagar (calcular-monto-total credito))
        (display "Descuento: ") (displayln descuento)
        (display "Prestamo al banco: ") (displayln prestamo)
        (display "Crédito al fabricante: ") (displayln credito)
        (display "Total a pagar con intereses: ") (displayln total-pagar))
      (begin
        (define dinero-propio (calcular-dinero-propio monto))
        (define credito (calcular-credito monto))
        (define total-pagar (calcular-monto-total credito))
        (display "Dinero propio: ") (displayln dinero-propio)
        (display "Crédito al fabricante: ") (displayln credito)
        (display "Total a pagar con intereses: ") (displayln total-pagar))))

(main)




;#12 Ej 1
(define T1L1 20)(define T1L2 12)(define T1L3 13)
(define T2L1 22)(define T2L2 28)(define T2L3 15)
(define T3L1 12)(define T3L2 7)(define T3L3 21)
(define T4L1 27)(define T4L2 18)(define T4L3 14)
(define Precio 1000)

(define (semiperimetro a b c)
  (/(+ a b c)2)
  )
(define (Area_valor a b c Precio)
  ((sqrt ( (semiperimetro a b c)(- (semiperimetro a b c) a)(- (semiperimetro a b c) b)(- (semiperimetro a b c) c))) Precio)
  )
(define (menor_4 a b c d)
  (if (and (< a b)(< a c)(< a d))
      (+ (* a 0.90)(menor_3 b c d))
      (if (and (< b a)(< b c)(< b d))
          (+ (* b 0.90)(menor_3 a c d))
          (if (and(< c a)(< c b)(< c d))
              (+ (* c 0.90)(menor_3 a b d))
              (+ (* d 0.90)(menor_3 a b c))
              )
          )
      )
  )
(define (menor_3 a b c)
  (if (and(< a b)(< a c))
      (+ (* a 0.80)(menor_2 b c))
      (if(and(< b a)(< b c))
         (+ (* b 0.80)(menor_2 a c))
         (+ (* c 0.80)(menor_2 a b))
         )
      )
  )
(define (menor_2 a b)
  (if (< a b)
      (+ (* a 0.70)(* b 0.50))
      (+ (* b 0.70)(* a 0.50))
      )
  )
(define (principal)
  (display "El precio total de los 4 lotes con su respectivo descuento es")
  (menor_4 (Area_valor T1L1 T1L2 T1L3 Precio)(Area_valor T2L1 T2L2 T2L3 Precio)(Area_valor T3L1 T3L2 T3L3 Precio)(Area_valor T4L1 T4L2 T4L3 Precio))
  )
(principal)

;#13 Ej 1
(define precio 1000)
(define BaseT 60)(define AlturaT 90)
(define LadoC 80)
(define BaseR 120)(define AlturaR 30)
(define (A_triangulo b h)
  (/ (* b h)2)
  )
(define (A_cuadrado a)
  (* a a)
  )
(define (A_rectangulo b h)
  (* b h)
  )
(define (descuento a)
  (if (and(>= a 425)(< a 675))
      (* (* a precio) 0.85)
      (if (and(>= a 675)(< a 1200))
          (* (* a precio) 0.70)
          (if (> a 1200)
              (( a precio) 0.60)
              )
          )
      )
  )
(define (menor_3 a b c)
  (if (and(< a b)(< a c))
      (begin (displayln a)(displayln (menor_2 b c)))
      (if (and(< b a)(< b c))
          (begin (displayln b)(displayln (menor_2 a c)))
          (begin (displayln c)(displayln (menor_2 a b)))
          )
      )
  )
(define (menor_2 a b)
  (if (< a b)
      (begin (displayln a)(displayln b))
      (begin (displayln b)(displayln a))
      )
  )
(define (principal)
  (displayln "Los precios con descuento de los lotes de menor a mayor son ")
  (menor_3 (descuento (A_triangulo BaseT AlturaT))(descuento (A_cuadrado LadoC))(descuento (A_rectangulo BaseR AlturaR)))
  )
(principal)

;#14 Ej 1
(define (total a b)
  (* a b)
  )
(define(descuentos p a b c d f)
(if(= p 5)
     (if(and(and(> a b)(> a c))(and(> a d)(> a f)))
        (if(and(and(< b a)(< b c))(and(< b d)(< b f)))
                 (+ (- a(* a 0.5))(- c (* c 0.06))(- d (* d 0.06))(- f (* f 0.06))(- b (* b 0)))
                 
         (if(and(and(< c a)(< c b))(and(< c d)(< c f)))
             (+ (- a(* a 0.5))(- b (* b 0.06))(- d (* d 0.06))(- f (* f 0.06))(- c (* c 0)))
             
             (if(and(and(< d a)(< d b))(and(< d c)(< d f)))
                 (+ (- a(* a 0.5))(- b (* b 0.06))(- c (* c 0.06))(- f (* f 0.06))(- d (* d 0)))

                  (if(and(and(< f a)(< f b))(and(< f c)(< f d)))
                     (+ (- a(* a 0.5))(- b (* b 0.06))(- c (* c 0.06))(- d (* d 0.06))(- f (* f 0)))
                     )
                  )
             )
         )
        
     
      (if(and(and(> b a)(> b c))(and(> b d)(> b f)))
         (if(and(and(< a b)(< a c))(and(< a d)(< a f)))
            (+ (- b(* b 0.5))(- c (* c 0.06))(- d (* d 0.06))(- f (* f 0.06))(- a (* a 0)))

            (if(and(and(< c a)(< c b))(and(< c d)(< c f)))
                (+ (- b(* b 0.5))(- a (* a 0.06))(- d (* d 0.06))(- f (* f 0.06))(- c (* c 0)))

                (if(and(and(< d a)(< d b))(and(< d c)(< d f)))
                   (+ (- b(* b 0.5))(- a (* a 0.06))(- c (* c 0.06))(- f (* f 0.06))(- d (* d 0)))

                   (if(and(and(< f a)(< f b))(and(< f c)(< f d)))
                      (+ (- b(* b 0.5))(- a (* a 0.06))(- c (* c 0.06))(- d (* d 0.06))(- f (* f 0)))
                      )
                   )
                )
            )

         (if(and(and(> c a)(> c b))(and(> c d)(> c f)))
            (if(and(and(< a b)(< a c))(and(< a d)(< a f)))
                (+ (- c(* c 0.5))(- b (* b 0.06))(- d (* d 0.06))(- f (* f 0.06))(- a (* a 0)))

                (if(and(and(< b a)(< b c))(and(< b d)(< b f)))
                 (+ (- c(* c 0.5))(- a (* a 0.06))(- d (* d 0.06))(- f (* f 0.06))(- b (* b 0)))

                 (if(and(and(< d a)(< d b))(and(< d c)(< d f)))
                   (+ (- c(* c 0.5))(- a (* a 0.06))(- b (* b 0.06))(- f (* f 0.06))(- d (* d 0)))

                   (if(and(and(< f a)(< f b))(and(< f c)(< f d)))
                      (+ (- c(* c 0.5))(- a (* a 0.06))(- b (* b 0.06))(- d (* d 0.06))(- f (* f 0)))
                    )
                   )
                 )
                )

             (if(and(and(> d a)(> d b))(and(> d c)(> d f)))
                (if(and(and(< a b)(< a c))(and(< a d)(< a f)))
                (+ (- d(* d 0.5))(- b (* b 0.06))(- c (* c 0.06))(- f (* f 0.06))(- a (* a 0)))

                (if(and(and(< b a)(< b c))(and(< b d)(< b f)))
                 (+ (- d(* d 0.5))(- a (* a 0.06))(- c (* c 0.06))(- f (* f 0.06))(- b (* b 0)))

                 (if(and(and(< c a)(< c b))(and(< c d)(< c f)))
                (+ (- d(* d 0.5))(- a (* a 0.06))(- b (* b 0.06))(- f (* f 0.06))(- c (* c 0)))

                (if(and(and(< f a)(< f b))(and(< f c)(< f d)))
                      (+ (- d(* d 0.5))(- a (* a 0.06))(- b (* b 0.06))(- c (* c 0.06))(- f (* f 0)))
                    )
                )
                 )
                )

                (if(and(and(> f a)(> f b))(and(> f c)(> f d)))
                    (if(and(and(< a b)(< a c))(and(< a d)(< a f)))
                (+ (- f(* f 0.5))(- b (* b 0.06))(- c (* c 0.06))(- d (* d 0.06))(- a (* a 0)))

                (if(and(and(< b a)(< b c))(and(< b d)(< b f)))
                 (+ (- f(* f 0.5))(- a (* a 0.06))(- c (* c 0.06))(- d (* d 0.06))(- b (* b 0)))
                 
                  (if(and(and(< c a)(< c b))(and(< c d)(< c f)))
                (+ (- f(* f 0.5))(- a (* a 0.06))(- b (* b 0.06))(- d (* d 0.06))(- c (* c 0)))

                (if(and(and(< d a)(< d b))(and(< d c)(< d f)))
                   (+ (- f(* f 0.5))(- a (* a 0.06))(- b (* b 0.06))(- c (* c 0.06))(- d (* d 0)))

                )
                )
                  )
                )
                    )
                )
             )
         )
      )

     (if(< p 5)
        (+ a b c d f)
        )
     )
  )
     
(define(principal)
(display "cuantos productos va llevar? ")
(define productos (read))
(display "ingrese la cantidad de pantalones que va a llevar, si no marque 0 ")
(define pantalones (read))
(display "ingrese el precio de cada pantalon, si no lleva marque 0")
(define precio_p (read))
(display "el valor total de los pantalones es: ")
(display (total pantalones precio_p))
(newline)
(display "ingrese la cantidad de camisas que va a llevar, si no marque 0 ")
(define camisas (read))
(display "ingrese el precio por camisa, si no lleva marque 0")
(define precio_c (read))
(display "el valor total de las camisas es: ")
(display (total camisas precio_c))
(newline)
(display "ingrese la cantidad de correas que va a llevar, si no marque 0 ")
(define correas (read))
(display "ingrese el precio por correa, si no lleva marque 0 ")
(define precio_c (read))
(display "el valor total de las correas es: ")
(display (total correas precio_c))
(newline)
(display "ingrese la cantidad de sudaderas que va a llevar, si no marque 0 ")
(define sudaderas (read))
(display "ingrese el precio por sudadera, si no va llevar marque 0 ")
(define precio_s (read))
(display "el valor total de las sudaderas es: ")
(display (total sudaderas precio_s))
(newline)
(display "ingrese la cantidad de buzos que va a llevar, si no marque 0 ")
(define buzos (read))
(display "ingrese el precio por buzo, si no va llevar marque 0 ")
(define precio_b (read))
(display "el valor total de los buzos es: ")
(display (total buzos precio_b))
(newline)
(display "el precio total de la compra es: ")
(descuentos productos (total pantalones precio_p) (total camisas precio_c) (total correas precio_c)(total sudaderas precio_s)  (total buzos precio_b))
  )
(principal)
;#14 Ej 2
(define(matricula s e t)
  (if(and(or(= s 1)(= s 2))(and(>= e 1)(<= e 3))(equal? t "no"))
     (- 1200000(* 1200000 0.5))

     (if(and(or(= s 1)(= s 2))(and(>= e 1)(<= e 3))(equal? t "si"))
          (- 1200000(* 1200000 0.25))

            (if(and(or(= s 0)(> s 2))(and(> e 3)(equal? t "si")))
               (- 1200000(* 1200000 0))

                (if(and(or(= s 0)(> s 2))(and(> e 3)(equal? t "no")))
                   (- 1200000(* 1200000 0))

                  (if(and(or(= s 1)(= s 2))(and(> e 3)(equal? t "no")))
                     (- 1200000(* 1200000 0))

                      (if(and(or(= s 1)(= s 2))(and(> e 3)(equal? t "si")))
                              (- 1200000(* 1200000 0))

                        (if(and(or(= s 0)(> s 2))(and(>= e 1)(<= e 3))(equal? t "no"))
                             (- 1200000(* 1200000 0))

                               (if(and(or(= s 0)(> s 2))(and(>= e 1)(<= e 3))(equal? t "si"))
                                  (- 1200000(* 1200000 0))

                                  )
                               )
                        )
                      )
                  )
                )
            )
     )
  )
                                  
  
    

(define (principal)
(display "ingrese su nombre: ")
(define n (read))
(display "ingrese su primer apellido: ")
(define 1a (read))
(display "ingrese su segundo apellido: ")
(define 2a (read))
(display "ingrese su tipo de sisben (si no tiene marque 0) ")
(define s (read))
(display "ingrese su estrato ")
(define e (read))
(display "¿se encuentra trabajando? marque si o no entre comillas ")
(define t (read))
(newline)
(display " ______")
(newline)
(display "| ")(display n)(display" ")(display 1a)(display" ")(display 2a)(display "\t\t\t\t  |")
(newline)
(display "|_______|")
(newline)
(display "| el valor de la matricula es: ")(display(matricula s e t))(display "\t\t  |")
(newline)
(display "|_______|")
  
  )
(principal)

;#16 Ej 1
(define (descuento a b p)
  (if (and(>= a 30)(< a 35))
      (if (= b 1)
          (begin (displayln "Se hizo un 20% de descuento por ser adidas y debe pagar ") (* p 0.80))
          (if (= b 2)
              (begin (displayln "Se hizo un 22% de descuento por ser nike y debe pagar ") (* p 0.78))
              (if (= b 3)
                  (begin (displayln "Se hizo un 24% de descuento por ser new balance y debe pagar ") (* p 0.76))
                  )
              )
          )
      (if (and(>= a 35)(< a 40))
          (if (= b 1)
              (begin (displayln "Se hizo un 25% de descuento por ser adidas y debe pagar ") (* p 0.75))
              (if (= b 2)
                  (begin (displayln "Se hizo un 27% de descuento por ser nike y debe pagar ") (* p 0.73))
                  (if (= b 3)
                      (begin (displayln "Se hizo un 29% de descuento por ser new balance y debe pagar ") (* p 0.71))
                      )
                  )
              )
          (if (and(>= a 40)(<= a 43))
              (if (= b 1)
                  (begin (displayln "Se hizo un 30% de descuento por ser adidas y debe pagar ") (* p 0.70))
                  (if (= b 2)
                      (begin (displayln "Se hizo un 32% de descuento por ser nike y debe pagar ") (* p 0.68))
                      (if (= b 3)
                          (begin (displayln "Se hizo un 34% de descuento por ser new balance y debe pagar ") (* p 0.66))
                          )
                      )
                  )
              )
          )
      )
  )
(define (principal)
  (displayln "Ingrese la talla de los zapatos que compro")
  (define T (read))
  (displayln "Ingrese la marca de los zapatos sabiendo que, 1=adidas, 2=nike, 3=new balance")
  (define M (read))
  (displayln "Ingrese el valor total de la compra")
  (define V (read))
  (descuento T M V)
  )
(principal)

;#21 Ej 1
(define (descomposicion n)
  (mayor_5 (quotient n 10000)(quotient (modulo n 10000) 1000)(quotient (modulo (modulo n 10000) 1000) 100)(quotient (modulo (modulo (modulo 69374 10000) 1000) 100) 10)(modulo (modulo (modulo (modulo 69374 10000) 1000) 100) 10)) 
  )
(define (mayor_5 a b c d e)
  (if (and (> a b)(> a c)(> a d)(> a e))
      (begin (displayln (* a 10000))(+ (* a 10000) (mayor_4 b c d e)))
      (if (and (> b a)(> b c)(> b d)(> b e))
          (begin (displayln (* b 10000))(+ (* b 10000) (mayor_4 a c d e)))
          (if (and(> c a)(> c b)(> c d)(> c e))
              (begin (displayln (* c 10000))(+ (* c 10000) (mayor_4 a b d e)))
              (if (and (> d a)(> d b)(> d c)(> d e))
                  (begin (displayln (* d 10000))(+ (* d 10000) (mayor_4 a b c e)))
                  (begin (displayln (* e 10000))(+ (* e 10000)(mayor_4 a b c d)))
                  )
              )
          )
      )
  )
(define (mayor_4 a b c d)
  (if (and (> a b)(> a c)(> a d))
      (begin (displayln (* a 1000))(+ (* a 1000)(mayor_3 b c d)))
      (if (and (> b a)(> b c)(> b d))
          (begin (displayln (* b 1000))(+ (* b 1000)(mayor_3 a c d)))
          (if (and (> c a)(> c b)(> c d))
              (begin (displayln (* c 1000))(+ (* c 1000)(mayor_3 a b d)))
              (begin (displayln (* d 1000))(+(* d 1000)(mayor_3 a b c)))
              )
          )
      )
  )
(define (mayor_3 a b c)
  (if (and(> a b)(> a c))
      (begin (displayln (* a 100))(+ (* a 100)(mayor_2 b c)))
      (if (and(> b a)(> b c))
          (begin (displayln (* b 100))(+ (* b 100)(mayor_2 a c)))
          (begin (displayln (* c 100))(+(* c 100)(mayor_2 a b)))
          )
      )
  )
(define (mayor_2 a b)
  (if (> a b)
      (begin (displayln (* a 10))(displayln b)(+ (* a 10)b))
      (begin (displayln (* b 10))(displayln a)(+(* b 10)a))
      )
  )
(define (principal)
  (display "Ingrese un numero de 5 cifras ")
  (define n (read))
  (displayln "A continuacion aparecerá las diferentes cifras que contiene el numero que ingresó y al final el resultado ")
  (descomposicion n)
  )
(principal)