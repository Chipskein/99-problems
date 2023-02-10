#lang racket
;Run-length encoding of a list (direct solution).

(define count-duplicates (lambda (lst previus_value [counter 0])
    (if (empty? lst)
        counter
        (if (equal? (car lst) previus_value)
            (count-duplicates (cdr lst) (car lst) (+ counter 1))
            counter
        ))
))
(define create-sublist-result (lambda (number value)
    (if (equal? number 1)
        (list value)
        (list (list number value))
    )
))  
(define map-encode-direct (lambda (lst result)
    (if (empty? lst)
        result
        (map-encode-direct 
            (drop lst (count-duplicates lst (car lst)))
            (append 
                result 
                (create-sublist-result (count-duplicates lst (car lst)) (car lst))))
    )
))

(define encode-direct (lambda (lst)
  (define result '())
  (map-encode-direct lst result)
))
(encode-direct '(a a a a b c c a a d e e e e));((4 A) B (2 C) (2 A) D (4 E))
