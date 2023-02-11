#lang racket

;Replicate N  elements of a list
(define replicate-n-value (lambda (value repeat)
    (make-list repeat value)
))
(define map-repli(lambda (lst result repeat)
    (if (empty? lst)
        result
        (map-repli  (cdr lst) 
                    (append result (replicate-n-value (car lst) repeat))
                    repeat)
    )
))
(define repli (lambda (lst repeat)
    (define result '())
    (map-repli lst result repeat)
))
(repli '(a b c) 3) ;(A A A B B B C C C)