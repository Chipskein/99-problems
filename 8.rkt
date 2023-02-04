#lang racket
; Eliminate consecutive duplicates of list elements.
(define compress (lambda (lst [correct_lst '()])
    (if (empty? lst)
        correct_lst
        (if (not (empty? (cdr lst)))
            (if (equal? (car lst) (car (cdr lst)))
                (compress (cdr lst) correct_lst)
                (compress (cdr lst) (append correct_lst (list (car lst))))
            )
            correct_lst
        )
    )
))

(compress '("a" "a" "a" "a" "b" "c" "c" "a" "a" "d" "e" "e" "e" "e")) ;(A B C A D E)
