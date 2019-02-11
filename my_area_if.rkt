#lang racket
(define pi 3.1416)

(define (my_area x y)
    (if (= x 1)
       (* pi y y) (if (= x 2) (* (/ 4 3) pi (* y y y)) #f))
         
 )

(my_area 1 2)
(my_area 2 2)
(my_area 3 2)
