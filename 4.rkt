#lang racket
;Find the number of elements of a list.
(define getLength (lambda (lst [counter 0]) 
    (if (empty? lst)
        counter
        (getLength (cdr lst) (+ counter 1))
    )
))
(getLength  '(1 2 3 4))
(getLength  '())
(getLength  '(1 2))
(getLength  '(1 2 3 4 5 6 '(1 3)))
                


