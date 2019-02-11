#lang racket

(define (rem_second a_list)
  (define l (length a_list))
  (if (> l 2) (cons (car a_list) (cdr(cdr a_list))) '())
)





(rem_second '(A B C D))

