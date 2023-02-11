#lang racket
;Duplicate the elements of a list
(define duplicate-value (lambda (value [repeat 2])
    (make-list repeat value)
))
(define map-dupli(lambda (lst result)
    (if (empty? lst)
        result
        (map-dupli  (cdr lst) 
                    (append result (duplicate-value (car lst))))
    )
))
(define dupli (lambda (lst)
    (define result '())
    (map-dupli lst result)
))
(dupli '(a b c c d)) ;(A A B B C C C C D D)