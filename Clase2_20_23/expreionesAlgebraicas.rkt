;;Pasar las siguientes expresiones de notacion inorden a preorden
;-2x^3+3x^2+10
(define x 2)
((+ (* -2 (expt x 3)) (+(* 3 (expt x 2)) 10)) ; 6
;5x^3y^2+3x^2y-2x^3y^2-3x^3y^2-4
(define x 2)
(define y 3)
(+ (* 5 (expt x 3)(expt y 2))(*(* 3 (expt x 2)) y)(* -2 (expt x 3) (expt y 2))(* -3 (expt x 3)(expt y 2))-4);32
;x^3-4x^2+2x^4-11
(define x 2)
(+(+ (expt x 3) (* -4 (expt x 2))) (* 2 (expt x 4)) -11) ;13
;5s^3t - 4t^5+7st^3
(define t 2)
(define s 1)
(+ (*( * -5 (expt s 3))t) (* -4 (expt t 5))(* 7 s (expt t 3))) ;82
;10x^2-7x+9
(define x 2)
(+ (* 10 (expt x 2)) (* -7 x) 9);35
;2x +38
(define x 2)
(+ (* 2 x) 38);42