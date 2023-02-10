#lang racket
(require "./9.rkt")
;Modified run-length encoding.
(define create-encoded-sub-list-modified (lambda (sub-list)
    (if (equal? (length sub-list) 1)
        (car sub-list)
        (list (length sub-list) (car sub-list) )
    )
))
(define map-encode (lambda (lst result_array)
    (if (empty? lst)
        result_array
        (if (list? (car lst))
            (map-encode (cdr lst) (append result_array (list (create-encoded-sub-list-modified (car lst)))))
            (map-encode (cdr lst) result_array)
        )
    )
))

(define encode-modified (lambda (lst)
    (define result_array '())
    (define packed_list (pack lst))
    (map-encode packed_list result_array)
))

(encode-modified '(a a a a b c c a a d e e e e)) ;((4 A) B (2 C) (2 A) D (4 E))