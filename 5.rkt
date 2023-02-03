#lang racket
;Reverse a list.
(define reverse_lst (lambda (lst [new_lst '()]) 
    (if (empty? lst)
        new_lst
        (reverse_lst (take lst (- (length lst) 1)) (append new_lst (list (last lst)) ))
    )
))


(reverse_lst '(1 4 5 63 23 "value"))
(reverse_lst '())