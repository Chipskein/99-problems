#lang racket

;(*) Find the K'th element of a list.

(define getNelementOf (lambda (lst n)
    (if (empty? lst)
        ;then
        "Empty List"
        ;else
        (if (> n (length lst))
            ;then 
            "N out of range"
            ;else 
            (if   (eq? n 1)
                ;then
                (car lst)
                ;else
                (getNelementOf (cdr lst) (- n 1))
            )
        )
    )
))

(getNelementOf '(1 2) 99)
(getNelementOf '(1 "jong" "foe" (1 2) 3) 3)
