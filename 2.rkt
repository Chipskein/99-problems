#lang racket

;2)Find the last but one element of a list. 
(define getLastButOneElement (lambda (lst)
    
    (if (empty? lst)
      '()
      (car (cdr (reverse lst)))
        )
))

(getLastButOneElement '(1 2 3 4 5 6))

