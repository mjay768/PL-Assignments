#lang racket
(define (my_union list1 list2)
  (cond
     ((null? list2) list1)
     ((member (car list2) list1)
      (my_union list1 (cdr list2)))
    (else (my_union (cons list1 (car list2)) (cdr list2)))
    ))


(my_union '(A B C) '(D E F))