#lang racket
(define (my_union list1 list2)
  (cond
     ((null? list1) list2)
     ((membership (car list1) list2)
      (my_union list1 (cdr list2)))
     (else (cons (car list1) (my_union (cdr list1) list2)))
    ))

(define (membership atm a_list)
  (cond
       ((null? a_list) #f)
       ((eq? atm (car a_list)) #t)
       (else (membership atm (cdr a_list)))
 ))

(my_union '(A B C) '(A E F G H I))
