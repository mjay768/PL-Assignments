#lang racket
(define (my_delete atm alist)
  (cond
    ((null? alist) '())
    ((eqv? atm (car alist))
      (my_delete atm (cdr alist)))
    ((list? (car alist)) (cons (my_delete atm (car alist)) (my_delete atm (cdr alist))))
     (else (cons (car alist) (my_delete atm (cdr alist)))))

   )


(my_delete 4 '(4 4 4 5 6 7 8 (9 4 10)))
(my_delete 3 '(1 2 (3 3) 4))
(my_delete 2 '(1 2 ((3 4 2)) 10 9 7))