#lang racket
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


; Se requiere de una función que permita leer: Nombre, la cédula, salario básico y año de vinculación 
; de un empleado y que permita calcular su salario neto
; sabiendo que:
; • Si gana más de $1500000 y entró a trabajar después de 1990 se le
; debe descontar un 8% al salario.
; • Si gana entre $1000000 y $1500000, se le debe descontar un 5% del salario
; • Si gana menos de $1000000 ó entró a trabajar antes o en 1990 se le descuenta
; 2% al salario.
; • Si el trabajador lleva más de 15 años en la empresa tendrá una bonificación del 10% acorde a su salario.
; • Pero si el trabajador lleva menos de 10 años no tendrá ninguna bonificación.

; Ejemplo: 

; Nombre: Juan Hernandez 
; Cedula: 70.513.621
; Salario: $1.200.000
; Año de vinculación: 2015
; Años en la empresa: 8 
; Respuestas del programa:
; Como usted gana $1.200.000 se le descontará de su salario el 5%
; Salario con el descuento: $1.140.000
; Su bonificación es del 0% 
; Bonificación: Sin bonificación 

; Ejemplo 2:

; Nombre: Mauricio Hoyos 
; Cedula: 1.020.399.469
; Salario: $1.600.000
; Año de vinculación: 1992
; Años en la empresa: 31
; Respuestas del programa:
; Como usted gana $1.600.000 se le descontará de su salario el 8%
; Salario con el descuento: $1.472.000
; Su bonificación es del 10% 
; Bonificación: $1.619.200

; Problema 1. 
; En una empresa de fabricación de prendas se compra la tela al por mayor de la siguiente manera: se tiene la base mayor, base menor y la altura(trapecio), entre más metros 
; cuadrados de tela compre, más descuento le harán, por ejemplo: si compran menos de 100 metros cuadrados no se hará descuento, si compran menos de 300 metros cuadrados 15%, si compran menos de 500 metros cuadrados 20% y si compran mas de 700 metros cuadrados 30%, teniendo en cuenta que el metro cuadrado de tela es a 2000 pesos, hacer un programa que calcule el descuento de la compra.
; Ejemplo: 
; B= 10 b= 5 h=8  A= (B+b)/2*h
; A= 60 metros cuadrados, y se multiplica por 2000 (precio de tela por metro cuadrado)
; R= 120000, sin descuento

;ejercicio 3a 
(define (descuento salario vinculacion)
  (if (> salario 1500000)
      (if (> vinculacion 1990)
          (* salario 0.08)
          0)
      (if (and (<= salario 1500000) (>= salario 1000000))
          (* salario 0.05)
          (* salario 0.02))))

(define (bonificacion salario vinculacion)
  (define años-trabajados (- 2023 vinculacion))
  (if (> años-trabajados 15)
      (* salario 0.1)
      (if (< años-trabajados 10)
          0
          0)))

(define (main)
  (display "Ingrese el nombre: ")
  (define nombre (read-line))
  (display "Ingrese la cédula: ")
  (define cedula (read-line))
  (display "Ingrese el salario básico: $")
  (define salario (read))
  (display "Ingrese el año de vinculación: ")
  (define vinculacion (read))
  (newline)
  (display "Nombre: ")
  (display nombre)
  (newline)
  (display "Cedula: ")
  (display cedula)
  (newline)
  (display "Salario: $")
  (display salario)
  (newline)
  (display "Año de vinculación: ")
  (display vinculacion)
  (newline)
  (display "Salario con el descuento: $")
  (display (- salario (descuento salario vinculacion)))
  (newline)
  (display "Bonificación: $")
  (display (bonificacion salario vinculacion))
  (newline)
  (display "Salario neto: $")
  (display (+ salario (- (descuento salario vinculacion)) (bonificacion salario vinculacion)))
  (newline))

;; Ejemplo de uso
(main)

; En una empresa de fabricación de prendas se compra la tela al por mayor de la siguiente manera: 
; se tiene la base mayor, base menor y la altura(trapecio), entre más metros cuadrados 
; de tela compre, más descuento le harán, por ejemplo: si compran menos de 100 metros cuadrados no se hará descuento, si compran menos de 300 metros cuadrados 15%, si compran menos de 500 metros cuadrados 20% y si compran mas de 700 metros cuadrados 30%, teniendo en cuenta que el metro cuadrado de tela es a 2000 pesos, hacer un programa que calcule el descuento de la compra.
; Ejemplo: 
; B= 10 b= 5 h=8  A= (B+b)/2*h
; A= 60 metros cuadrados, y se multiplica por 2000 (precio de tela por metro cuadrado)
; R= 120000, sin descuento


;#6 Ej 1
(define precio 2000)

(define (Area-trapecio a b c)
  (* (/ (+ a b) 2) c))

(define (descuento a)
  (if (<= a 100)
      a
      (if (and (> a 100) (<= a 300))
          (* (* a 0.85) precio)
          (if (and (> a 300) (<= a 700))
              ((a 0.80) precio)
              (if (> a 700)
                  ((a 0.70) precio))))))
  
(define (principal)
  (display "Ingrese la base mayor de la figura")
  (define B (read))
  (display "Ingrese la base menor de la figura")
  (define b (read))
  (display "Ingrese la altura de la figura")
  (define h (read))
  (display "El valor a pagar con descuento es")
  (descuento (Area-trapecio B b h)))
  
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
  (if (and (< a b) (< a c) (< a d) (< a e))
      (menor_4 b c d e)
      (if (and (< b a) (< b c) (< b d) (< b e))
          (menor_4 a c d e)
          (if (and (< c a) (< c b) (< c d) (< c e))
              (menor_4 a b d e)
              (if (and (< d a) (< d b) (< d c) (< d e))
                  (menor_4 a b c e)
                  (menor_4 a b c d)
                  )
              )
          )
      )
  )

(define (menor_4 a b c d)
  (if (and (< a b) (< a c) (< a d))
      (mayor_3 b c d)
      (if (and (< b a) (< b c) (< b d))
          (mayor_3 a c d)
          (if (and (< c a) (< c b) (< c d))
              (mayor_3 a b d)
              (mayor_3 a b c)
              )
          )
      )
  )

(define (mayor_3 a b c)
  (if (and (> a b) (> a c))
      (* (sqr a) (+ b c))
      (if (and (> b a) (> b c))
          (* (sqr b) (+ a c))
          (* (sqr c) (+ a b))
          )
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
  (displayln (menor_5 N1 N2 N3 N4 N5))
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
  (if (> a 18.5)
      (if (< a 24.9)
          "Su peso es saludable"
          (if (< a 29.9)
              "Usted está en sobrepeso"
              "Usted está en el rango de obesidad"
              )
          )
      "Usted está en el rango de infrapeso"
      )
  )

(define (principal)
  (display "Ingrese su peso en Kilogramos")
  (define Kg (read))
  (display "Ingrese su altura en metros")
  (define M (read))
  (display "Su IMC es ")
  (display (IMC Kg M))
  (display ", esto quiere decir que ")
  (display (saludable (IMC Kg M)))
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
  (if (<= a 100)
      (if (= b 1)
          (+ a (* a 0.07))
          (if (= b 2)
              (+ a (* a 0.08))
              (if (= b 3)
                  (+ a (* a 0.09))
                  )
              )
          )
      (if (and (> a 100) (<= a 500))
          (if (= b 1)
              (+ a (* a 0.12))
              (if (= b 2)
                  (+ a (* a 0.13))
                  (if (= b 3)
                      (+ a (* a 0.14))
                      )
                  )
              )
          (if (> a 500)
              (if (= b 1)
                  (+ a (* a 0.17))
                  (if (= b 2)
                      (+ a (* a 0.18))
                      (if (= b 3)
                          (+ a (* a 0.19))
                          )
                      )
                  )
              )
          )
      )
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
        (display "Descuento: ") (displayln (calcular-descuento monto))
        (display "Prestamo al banco: ") (displayln (calcular-prestamo (- monto (calcular-descuento monto))))
        (display "Crédito al fabricante: ") (displayln (calcular-credito (- monto (calcular-descuento monto) 
        (calcular-prestamo (- monto (calcular-descuento monto))))))
        (display "Total a pagar con intereses: ") (displayln (calcular-monto-total
         (calcular-credito (- monto (calcular-descuento monto) (calcular-prestamo (- monto (calcular-descuento monto))))))))
      (begin
        (display "Dinero propio: ") (displayln (calcular-dinero-propio monto))
        (display "Crédito al fabricante: ") (displayln (calcular-credito monto))
        (display "Total a pagar con intereses: ") (displayln (calcular-monto-total (calcular-credito monto))))))

(main)

; Problema 1
; Un negocio vende hamburguesas, y para calcular el precio final se tiene en cuenta 
;el tipo de hamburguesa, el tamaño, y los ingredientes adicionales que el cliente quiera agregar. 
;La empresa ha establecido las siguientes reglas:
; El precio base de una hamburguesa sencilla es de $5.
; Si el cliente quiere una hamburguesa doble, se cobra un adicional de $2.
; Si el cliente quiere una hamburguesa triple, se cobra un adicional de $3.
; Si el cliente quiere papas fritas, se cobra un adicional de $1.5.
; Si el cliente quiere refresco, se cobra un adicional de $1.
; Si el cliente quiere ambos, se cobra un adicional de $2.
; Si el cliente quiere agregar queso, se cobra un adicional de $0.5.
; Si el cliente quiere agregar tocino, se cobra un adicional de $1.
; Además, se aplican los siguientes descuentos:
; Si el cliente ordena más de 3 hamburguesas, se aplica un descuento del 10% al total.
; Si el cliente gasta más de $20 en su orden, se aplica un descuento del 5% al total.

; ejecicio 11 a
; Funciones auxiliares
(define (calcular-precio-hamburguesa tipo)
  (+ 5 (if (equal? tipo "doble") 2 (if (equal? tipo "triple") 3 0))))

(define (calcular-precio-adicionales papas refresco queso tocino)
  (+ (if papas (if refresco 2 1.5) (if refresco 1 0))
     (if queso 0.5 0)
     (if tocino 1 0)))

(define (calcular-descuento cantidad total)
  (* total (if (> cantidad 3) 0.10 (if (> total 20) 0.05 0))))

; Función principal
(define (main)
  (display "Ingrese el tipo de hamburguesa (sencilla, doble, triple): ")
  (define tipo (read-line))
  (display "¿Desea papas fritas? (si o no): ")
  (define papas (equal? (read-line) "si"))
  (display "¿Desea refresco? (si o no): ")
  (define refresco (equal? (read-line) "si"))
  (display "¿Desea agregar queso? (si o no): ")
  (define queso (equal? (read-line) "si"))
  (display "¿Desea agregar tocino? (si o no): ")
  (define tocino (equal? (read-line) "si"))
  (display "Ingrese la cantidad de hamburguesas: ")
  (define cantidad (read))

  (define precio-base (calcular-precio-hamburguesa tipo))
  (define precio-adicionales (calcular-precio-adicionales papas refresco queso tocino))
  (define subtotal (* (+ precio-base precio-adicionales) cantidad))
  (define descuento (calcular-descuento cantidad subtotal))
  (define total (- subtotal descuento))

  (display "Precio base: ") (displayln precio-base)
  (display "Precio adicionales: ") (displayln precio-adicionales)
  (display "Subtotal: ") (displayln subtotal)
  (display "Descuento: ") (displayln descuento)
  (display "Total: ") (displayln total))

(main)



;  El IMSS requiere clasificar a las personas que se jubilaron en el año de 1997. 
;  Existen tres tipos de jubilaciones: por edad, por antigüedad joven,por 
;  antigüedad adulta y por sexo. Las mujeres adscritas a la jubilación por edad deben
;   tener 50 años o más y una antigüedad en su empleo de menos de 25 años y los
;    hombres deben tener  entre 60 y 70 años y una antigüedad de menos de 30 años. 
;    Las personas adscritas a la jubilación por antigüedad joven deben tener menos de
;     60 años y una antigüedad en su empleo de 25 años o más. Las mujeres adscritas 
;     a la jubilación por antigüedad adulta deben tener 60 años o más y una antigüedad
;      en su empleo de 25 años o más y los hombres deben ser mayores a 65 años y una
;       antigüedad de más de 30 años. Determinar en qué tipo de jubilación, quedará adscrita
;        una persona.Realizar este programa con una sola función

; Ejercicio 11 b

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


; Diseñe un algoritmo que lea tres longitudes y determine si forman o no un triángulo. 
; Si es un triángulo determine de que tipo de triángulo se trata entre: equilátero
;  (si tiene tres lados iguales), isósceles (si tiene dos lados iguales) o escaleno 
;  (si tiene tres lados desiguales). Considere que para formar un triángulo se requiere 
;  que: "el lado mayor sea menor que la suma de los otros dos lados".
; Y calcular el Área mediante heron 


;#12 Ej 2
(define (mayor_3 a b c)
  (if (and(> a b)(> a c))
      a
      (if (and (> b a)(> b c))
          b
          c
          )
      )
  )
(define (dos_menores a b c)
  (if (and (> a b)(> a c))
      (+ b c)
      (if (and(> b a)(> b c))
          (+ a c)
          (+ a b)
          )
      )
  )
(define (es_triangulo a b c)
  (if (> (dos_menores a b c)(mayor_3 a b c))
      (tipo_triangulo a b c)
      "No es un triangulo"
      )
  )
(define (tipo_triangulo a b c)
  (if (= a b c)
      "El triangulo es equilatero"
      (if (or(= a b)(= a c)(= b c))
          "El triangulo es isoleces"
          "El triangulo es escaleno"
          )
      )
  )
(define (principal)
  (displayln "Ingrese la primera longitud")
  (define L1 (read))
  (displayln "Ingrese la segunda longitud")
  (define L2 (read))
  (displayln "Ingrese la tercera longiutd")
  (define L3 (read))
  (es_triangulo L1 L2 L3)
  )
(principal)

; Problema 1: 
; Calcular el precio de un terreno triangular, uno cuadrado y otro rectangular se
;  tiene la base y la altura de esas figuras, y el precio del metro cuadrado, 
;  si el terreno tiene mas de 425 metros cuadrados  se le hará un descuento del 15%,
;   si tiene mas de 675 metros cuadrados se le podrá hacer un descuento del 30 % y su tiene mas de
;    1200 metros cuadrados se la hara un descuento del 40%
; Que le muestre al usuario de menor a mayor precio
; (formula del area del triangulo es base por altura partido por 2)
; (El área del cuadrado es igual a lado por lado.)
; (Para calcular el área de un rectángulo multiplicamos el largo por el ancho.)


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

; Problema 2: 
; La política de cobro de una compañía telefónica es:
; Cuando se realiza una llamada, el cobro es por el tiempo que esta dura, de tal forma que los
; primeros cinco minutos cuestan 1 euro, los siguientes tres, 80 céntimos, los siguientes dos minutos a 70 céntimos y a partir del décimo minuto, 50 céntimos.
; Además, se carga un impuesto de 3% cuando es domingo, y si es otro día, en turno de mañana 15%
; y en turno de tarde 10%.
; Realiza un algoritmo para determinar cuánto debe pagar por cada concepto una persona que realiza 
;una llamada.

; Ejemplo: Supongamos que Juan realizó una llamada telefónica el martes a las 11:30 am que apareció
; 15 minutos. El costo de la llamada se calcularía de la siguiente manera:
; Los primeros 5 minutos: 5 minutos x 1 euro por minuto = 5 euros
; Los siguientes 3 minutos: 3 minutos x 0,80 euros por minuto = 2,40 euros


; Los siguientes 2 minutos: 2 minutos x 0,70 euros por minuto = 1,40 euros
; Los siguientes 5 minutos: 5 minutos x 0,50 euros por minuto = 2,50 euros
; El costo total de la llamada sin impuestos sería de: 5 euros + 2,40 euros + 1,40 euros + 2,50 euros 
;= 11,30 euros.
; Sin embargo, como la llamada se realizó un martes en la mañana, se aplicaría un impuesto del 15%,
; por lo que el costo total de la llamada sería de: 11,30 euros + (11,30 euros x 0,15) = 12.995 euros.


;#13 Ej 2
; Funciones auxiliares
(define (calcular-costo-llamada duracion)
  (+ (if (> duracion 0) (* (if (> duracion 5) 5 duracion) 1) 0)
     (* (if (> duracion 5) (if (> duracion 8) 3 (- duracion 5)) 0) 0.8)
     (* (if (> duracion 8) (if (> duracion 10) 2 (- duracion 8)) 0) 0.7)
     (* (if (> duracion 10) (- duracion 10) 0) 0.5)))

(define (calcular-impuesto dia turno)
  (if (equal? dia "domingo")
      0.03
      (if (equal? turno "mañana")
          0.15
          (if (equal? turno "tarde") 0.10 0))))

; Función principal
(define (main)
  (display "Ingrese la duración de la llamada en minutos: ")
  (define duracion (read))
  (display "Ingrese el día de la semana (lunes, martes, ..., domingo): ")
  (define dia (read))
  (display "Ingrese el turno (mañana, tarde): ")
  (define turno (read))

  (define costo-sin-impuestos (calcular-costo-llamada duracion))
  (define impuesto (calcular-impuesto dia turno))
  (define total (+ costo-sin-impuestos (* costo-sin-impuestos impuesto)))

  (display "Costo sin impuestos: ") (displayln costo-sin-impuestos)
  (display "Impuesto: ") (display (* impuesto 100)) (displayln "%")
  (display "Total: ") (displayln total))

(main)

; Problema 1 ,
; en un concurso de una tienda de ropa, el total de la compra se calcula de la siguiente manera,
; si lleva los 5 productos (pantalones, camisas, correa, sudaderas, buzos)
; * el precio mayor del total de los productos de un artículo tendrá un descuento del 50%
; * el precio menor del total de los productos de un artículo no tendrá descuento
; * los tres valores restantes tendrán un descuento del 6%
; elabore un programa que pueda determinar el precio que deba pagar el cliente, teniendo en
; cuenta si lleva los 5 productos o no
; Ejemplo 1
; un cliente compró 6 pantalones, precio $100 cada uno, 7 camisas, $70 cada una, 5 correas,
; $30 cada uno, 8 sudaderas $150 cada uno, 7 buzos, $100 cada uno, en este caso el precio
; mayor sería las 8 sudaderas * 150 =1.200, a ese valor se le aplica un 50%de descuento, al
; precio menor que serían las correas, 5*30=150, a este valor no se le aplica ningún
; descuentos, y los tres valores restantes, que serían los pantalones (6*100)camisas(7*70),
; buzos (7*100), se les aplicaría un descuento del 6% a cada uno. El programa debe calcular la
; sumatoria de todo esto con los descuentos correspondientes. Que daría un total de $2432.6
; Ejemplo 2
; Un cliente compra 2 pantalones, precio $100 cada uno, 4 camisas $70 cada uno, 2
; sudaderas, $150 cada uno. En este caso no aplicaría ningún tipo de descuento porque no
; cumple con las condiciones dadas, de que debe llevar mínimo 5 productos. En este caso el
; programa debería solo sumar los valores de los totales de cada producto y determinar el
; precio total. Que vendría siendo $780. (primero se tendría que multiplicar la cantidad de
; artículos por el precio de cada producto, para determinar el valor total de cada producto,
; seguido de esto sumamos cada valor total para así generar el valor total de la compra).
; Ejemplo 2
; El estudiante Carlos Mario Marin cuenta con un sisben tipo 2, y un estrato 1, pero el se encuentra
; laborando en una empresa, como solo cumple con los dos primeros requisitos se le va hacer un descuento
;  del 25% al cargo fijo que son $1.200.000. El total que él debería pagar por la matrícula es de $900.000.  
;  El programa debería pedir el nombre de la estudiante, el sisben, el estrato y si está laborando o no
;   (donde el usuario diga “si” o “no”).

; Ejemplo 3
; Sofia Jaramillo, cuenta con un sisben tipo 2, un estrato 4, y no se encuentra laborando, a ella no
;  se le podría aplicar ningún tipo de descuento, debido a que no cumple con el requisito del estrato,
;   (solo hay una excepción cuando no se cumple uno de los tres requisitos, que es cuando se encuentra
;    laborando, como ella no cumple con el estrato no hay descuento)
;     Por lo tanto el valor de la matrícula es de 1.200.000.

; Ejemplo 4
; Luisa Rivera no tiene sisben(0), es estrato 4, y está trabajando, ella tampoco aplicaría descuento porque no cumple con ningún requisito, por lo tanto el valor de la matrícula es de $1.200.000.

;#14 Ej 1

; Función para calcular el total de una compra
(define (total a b)
  (* a b)
)

; Función para aplicar descuentos según la cantidad de productos y sus precios
(define (descuentos p a b c d f)
  (if (= p 5) ; Si lleva los 5 productos
      ; Comparamos los precios de cada artículo para determinar cuál es el mayor y cuál es el menor
      ; Aplicamos descuentos según las reglas dadas (50% al mayor, 0% al menor y 6% a los tres restantes)
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

      
      ; Si no lleva los 5 productos
      (if (< p 5)
          ; Retornamos la suma de los precios sin descuentos
          (+ a b c d f)
      )
  )
)
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

; Problema 2:  La asociación de vinicultores tiene como política fijar un precio inicial al
;  kilo de uva, la cual se clasifica en tipos (A y B), y además en tamaños (1 y 2). Cuando se realiza 
;  la venta del producto, ésta es de un sólo tipo y tamaño, se requiere determinar cuanto recibirá un
;   productor por la uva que entrega en un embarque considerando lo siguiente:
; * Si es de tipo A, se le cargan 20 céntimos al precio inicial cuando es de tamaño 1 y 30 céntimos si es de tamaño 2.
; * Si es de tipo B, se rebajan 30 céntimos cuando es de tamaño 1, y 50 céntimos cuando es de tamaño 2.

; ejercicios 15 b
(define KgUva 2.50)

(define (ganancia tipo tamaño kg)
  (if (equal? tipo "A")
      (if (= tamaño 1)
          (* kg (+ KgUva 0.20))
          (* kg (+ KgUva 0.30)))
      (if (= tamaño 1)
          (* kg (- KgUva 0.30))
          (* kg (- KgUva 0.50)))))

(define (principal)
  (display "Ingrese la cantidad de kilogramos: ")
  (define kg (read))
  (display "Ingrese el tipo de uva, A o B, entre comillas: ")
  (define tipo (read))
  (display "Ingrese el tamaño de la uva, 1 o 2: ")
  (define tamaño (read))
  (display "En total recibirá: ")
  (display (ganancia tipo tamaño kg)))

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

; 1.En una empresa de ventas, se necesita un programa en Racket que calcule la comisión que se le debe 
; pagar a un vendedor en función de sus ventas mensuales, pero la comisión no siempre
;  se calcula de la misma forma. Si las ventas del vendedor son menores a $10,000,
;   no se le otorgará ninguna comisión. Si las ventas están entre $10,000 y $20,000,
;    la comisión será del 5% de las ventas. Si las ventas son mayores a $20,000,
;     pero menores a $50,000, la comisión será del 10% de las ventas. 
;     Si las ventas son mayores a $50,000, la comisión será del 15% de las ventas. 
;     Sin embargo, si el vendedor ha vendido más de $100,000 en el último trimestre, 
;     se le otorgará una comisión adicional del 5% de sus ventas mensuales. Escribe una 
;     función en Racket que tome el monto de ventas mensuales del vendedor y el 
;     monto de sus ventas en el último trimestre como entrada y devuelva el monto 
;     de comisión que se le debe pagar. Si el vendedor no ha vendido nada en el 
;     último trimestre, se le otorgará una comisión normal según su nivel de ventas mensuales.


;#ekercicio 17 a

(define (comision V)
  (if (< V 10000)
      0
      (if (and(> V 10000)(< V 20000))
          (* V 0.05)
          (if (and (> V 20000)(< V 50000))
              (* V 0.10)
              (if (> V 50000)
                  (* V 0.15)
                  )
              )
          )
      )
  )
(define (trimestre T)
  (if (> T 100000)
      (* T 0.05)
      0
      )
  )
(define (total a b)
  (+ a b)
  )
(define (principal)
  (displayln "Ingrese las ventas del ultimo mes")
  (define V (read))
  (displayln "Ingrese sus ventas trimestrales")
  (define T (read))
  (displayln "En total gano la siguiente cantidad de dolares por comisiones")
  (total (comision V)(trimestre T))
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


; .En una empresa de logística, se necesita un programa en Racket que calcule el costo de envío de 
; un paquete en función de su peso y su destino. Si el peso del paquete es menor a 1 kg, el costo será 
; de $5. Si el peso está entre 1 kg y 5 kg, el costo será de $10. Si el peso está entre
;  5 kg y 20 kg, el costo será de $20. Si el peso es mayor a 20 kg, se debe aplicar 
;  un costo adicional de $2 por cada kg extra. Además, si el destino del
;   paquete es una ciudad en el extranjero, se debe agregar un costo adicional del 50% al costo total.
;    Escribe una función en Racket que tome el peso del paquete y su destino como entrada y devuelva el costo total de envío.

;ejercicio 17 b
(define (calcular-costo-base peso)
  (if (< peso 1)
      5
      (if (and (>= peso 1) (< peso 5))
          10
          (if (and (>= peso 5) (< peso 20))
              20
              (* 2 (- peso 20))))))

(define (calcular-costo-adicional peso)
  (if (> peso 20)
      (* 2 (- peso 20))
      0))

(define (calcular-costo-envio peso destino)
  (if (equal? destino "extranjero")
      (+ (calcular-costo-base peso) (calcular-costo-adicional peso) (* 0.5 (+ (calcular-costo-base peso) (calcular-costo-adicional peso))))
      (+ (calcular-costo-base peso) (calcular-costo-adicional peso))))

(define (main)
  (display "Ingrese el peso del paquete (en kg): ")
  (define peso (read))
  (display "Ingrese el destino (local o extranjero): ")
  (define destino (read))
  (display "El costo total de envío es: $")
  (display (calcular-costo-envio peso destino)))

(main)


; Problema 1: Una compañía dedicada al alquiler de automóviles cobra un monto fijo de $300000 para los 
; primeros 300 km de recorrido. Para más de 300 km y hasta 1000 km, cobra un monto adicional de $15.000
;  por cada kilómetro en exceso sobre 300. Para más de 1000 km cobra un monto adicional de $10.000 por 
;  cada kilómetro en exceso sobre 1000. Los precios ya incluyen el 20% del impuesto general a las ventas,
;   IVA. Diseñe un algoritmo que determine el monto a pagar por el alquiler de un vehículo y el monto 
;   incluido del impuesto.
; Ejemplo: Un automóvil recorrió 780 km. Se sabe que se tiene un monto fijo de $300000
;  y que si el automóvil recorre entre 300 km y 1000 km, el cual es el caso, se hace
;   un cobro adicional de $15000 por cada km en exceso sobre 300. Para conocer
;    los km en exceso, restamos los km recorridos y los km base, entonces serían
;     $300000 sumado los km en exceso multiplicados los $15000 de monto 
;     adicional. $300000+($15000*480 km), los que nos dan un total de $7500000. 
;     Ahora para conocer el valor del impuesto, tendremos que sacar el 20% del total,
;      lo que sería $7500000*0,2, es igual a $1500000. Y por último, para el monto incluido 
;      del impuesto, sumaremos el total dado anteriormente con el valor del impuesto,
;       por lo tanto $7500000+1500000, nos da un monto total de $9000000.

;#22 Ej 1

(define (calcular-monto km)
  (if (<= km 300)
      300000
      (if (<= km 1000)
          (+ 300000 (* 15000 (- km 300)))
          (+ 300000 (* 15000 (- 1000 300)) (* 10000 (- km 1000))))))

(define (calcular-impuesto monto)
  (* monto 0.2))

(define (calcular-monto-con-impuesto monto impuesto)
  (+ monto impuesto))

(define (main)
  (display "Ingrese la cantidad de kilómetros recorridos: ")
  (define km (read))
  (define monto (calcular-monto km))
  (define impuesto (calcular-impuesto monto))
  (define monto-con-impuesto (calcular-monto-con-impuesto monto impuesto))
  (display "Monto a pagar: ")
  (displayln monto)
  (display "Impuesto incluido: ")
  (displayln impuesto)
  (display "Monto total a pagar (incluido impuesto): ")
  (displayln monto-con-impuesto))

(main)

