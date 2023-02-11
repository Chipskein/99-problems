#lang racket
;Drop every N'th element from a list.
(define map-drop-n (lambda (lst n result counter)
    (if (empty? lst)
        result
        (if (equal? counter n)
            (map-drop-n (cdr lst) n result (+ counter 1))
            (map-drop-n (cdr lst) n (append result (list (car lst))) (+ counter 1))
        )
    )
))
(define drop-n-ele (lambda (lst n)
    (define result '())
    (map-drop-n lst n result 1)
))
(drop-n-ele '(a b c d e f g h i k) 3) ;(A B D E G H K)
