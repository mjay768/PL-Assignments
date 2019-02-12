#lang racket
(define (my_union list1 list2)
  (cond
     ((null? list2) list1)
     ((eqv? (car list2) list1)
      (my_union list1 (cdr list2)))
     (else (my_union (cons list1 (car list2)) (cdr list2)))
    ))

(define (membership atm a_list)
  (cond
       ((null? a_list) #f)
       ((eq? atm (car a_list)) #t)
       (else (membership atm (cdr a_list)))
 ))

(my_union '(A B C) '(D E F))