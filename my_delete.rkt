#lang racket
(define (my_delete atm alist)
  (cond
    ((null? alist) '())
    ((eqv? atm (car alist))
     (cons '() (cdr alist)) (my_delete atm (cdr alist)))
     (else (cons (car alist) (my_delete atm (cdr alist))))

   )
  )

(my_delete 3 '(1 2 3 3 4))