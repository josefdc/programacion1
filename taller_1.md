**UNIVERSIDAD TECNOLÓGICA DE PEREIRA PROGRAMACIÓN I** 

**TALLER EXPRESIONES** 

**Programa 1.** 

**a. Pasar a notación prefija en Dr**. **Raquet.** 

a.  (2 \* 3) + 5        b.  (5 + 2) \* 3                 c.     (1 + 4) \* (4 + 6) 

d.    8 / ((2 \* 3) / 6)      e.  (6 \* 3) / (8 \* 2)        f.      5 + (6 / 2) + 3 

g.  5 + (3 \* 8) + 1       i.          ((3 + 4) \* 8) + 2 

**b. Pasar a notación prefija en Dr**. **Raquet..** 

1. (3 + ((8 - 2) – 4)) / 6 
1. (5 \* (75 / 15)) + (4 \* (4 - 1)) + (2 \* (7 + 4)) 
1. ((15 / (8 - 3)) + (4 \* (6 + 2))) \* 2 
1. (8 + 3) \* (40 - (7 \* 4)) 

**Programa 2.** 

**a.  Evaluar las expresiones numéricas para los valores indicados de las diferentes variables y pasar a notación prefija (utilizar define, newline, display etc).** 

**Ejemplo (define Tasa 3)** 

1. ((a + b) / PVP) + 2   a=6, b=8, PVP=7 
1. IVA \* (IVA – 4) \* Tasa \* PVP   IVA=16, Tasa=3, PVP=2 
1. ((a + 7) \* c) / (b + 2 - a) + (2 \* b)    a=3, b=6, c=4 
1. ( (a + 5) \* 3) / ((2 \* b) – b)   a=3, b=6 

**b.  Escribir las siguientes expresiones matemáticas en forma de expresiones           prefijas  (utilizar define, newline, display etc).** 

**Ejemplo  (define n (read))** 

**a.**  m                      **b**.             n              **c.**           m + n                 -------  + 1                       m + ------                        ---------           n                                     p - q                         p - q 

**d**               n            **e.**                p          

`        `m  + ---                         (m + n) \* -----       

`                        `p                               q                                    -------------- 

`                           `r 

`                  `q   -  --- 

`                           `s         

**Programa 3 .**  En DrScheme que calcule lo siguiente:**.** 

- Multiplique 5 números 

`            `Ej: ((\* 1(\*(\* 2 3)(\* 4 5)))  

`                  `(\* 1 2 3 4 5)  ;Este no es válido tiene que ser entre paréntesis 

- Reste 2 números 
- Sume 5 números 
- Divida 3 números 
- Calcule el valor absoluto de un número 
- Reste 1 (uno) a un número 
- Calcule el denominador de un número racional 
- Elevar un número a una potencia dada. 
- Calcule la raíz cuadrada de un número 

`                  `Ej: (sqrt 9) 

- Calcule el residuo de una división entera 
- Calcule el logaritmo de un número 
- Calcule el número más grande entre 5 números 
- Calcule el número más pequeño entre 5 números 
- Genere un número aleatorio. 
- Redondee un número 
- Eleve al cuadrado un número 

**Programa 4.**  En DrScheme que calcule lo siguiente: 

2

1. VolumenDeUnCilindro**= pi \* r \* h** 

3

2. VolumenDeUnaEsfera **= 4/3 \* pi \* r**

2

3. VolumenDeUnCono**= 1/3 \* pi \* r \* h** 

2 2

4. VolumenDeUnConoTruma **= pi \* ( R + r + R \* r) \* (h/3)** 
4. Fahrenheit\_a\_Celcius **= (F - 32) \* (5/9)** 
4. DistanciaEntreDosPuntos**=**   (x2 -x1) 2 +(y2-y1)2![](Aspose.Words.ec4320b0-35b7-4a1a-806d-1190830e9594.001.png)
4. PendienteDeUnaRecta= (y2 - y1 ) / (x2 - x1) 
4. Teniendo los lados de un triángulo rectángulo, encontrar el valor de la Hipotenusa 

= C12 +C22![](Aspose.Words.ec4320b0-35b7-4a1a-806d-1190830e9594.002.png)

Ej:  

(display "Area del Circulo") ;Mensaje 

(newline)  ;Salto de línea 

(display "Formula de Área del Circulo PI \* r \* r") (newline) 

(define PI 3.1415) ;Constante en Mayúscula (display "Digite el radio: ") 

(define r (read))  ;lectura desde el teclado   (display "El Area del Circulo es: ")  

(\* PI(\* r r))  ;Expresión Aritmética

**Nota: La presentación y la documentación es muy importante para el usuario.**  