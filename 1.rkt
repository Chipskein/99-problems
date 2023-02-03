#lang racket
#|
    1)Find Last Element of list
|#
(define getLastElement (lambda (lst)
    (print "List:")
    (println lst)
    (if(empty? lst)
     '()
     (car (reverse lst))
    ) 
))
(getLastElement '(1 2 3 4 5))

