#lang racket
;Flatten a nested list structure.

(define flatten(lambda (lst [correct-lst '()])
    (if (empty? lst)
        correct-lst
        (if (list? (car lst))
            (flatten (car lst) correct-lst)
            (flatten (cdr lst) (append correct-lst (list (car lst))))
        )
    )
))
(define test_lst '("a" ("b" ("c" "d") "e")));("a" "b" "c" "d" "e")
(flatten test_lst)
(flatten '(1 2 3 4 5 (1 2)))
(flatten '(1 2 3 4 5 (1 2 (1 2 ( 1 2 )))))
(flatten '(1 2 3 4 5 ( 1 )))