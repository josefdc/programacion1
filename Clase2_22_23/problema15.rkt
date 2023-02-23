#lang racket

(displayln "Presupuesto anual del hospital")
(displayln "================================")
(display "Ingrese el presupuesto total: ")
(define presupuesto (read))

(define presupuesto-ginecologia (* presupuesto 0.4))
(define presupuesto-traumatologia (* presupuesto 0.3))
(define presupuesto-pediatria (* presupuesto 0.3))

(define costo-ginecologia (/ presupuesto-ginecologia 200))
(define costo-traumatologia (/ presupuesto-traumatologia 300))
(define costo-pediatria (/ presupuesto-pediatria 150))

(display "| Area           | Presupuesto | Costo por paciente |\n")
(display "|----------------|------------|--------------------|\n")
(display (string-append "| Ginecología    | " (number->string presupuesto-ginecologia) " | " (number->string costo-ginecologia) " |\n"))
(display "|----------------|------------|--------------------|\n")
(display (string-append "| Traumatología  | " (number->string presupuesto-traumatologia) " | " (number->string costo-traumatologia) " |\n"))
(display "|----------------|------------|--------------------|\n")
(display (string-append "| Pediatría      | " (number->string presupuesto-pediatria) " | " (number->string costo-pediatria) " |\n"))
(display "|----------------|------------|--------------------|\n")
