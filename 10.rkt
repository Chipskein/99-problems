#lang racket
(require "./9.rkt")
 ;Run-length encoding of a list.

(define create-encoded-sub-list (lambda (sub-list)
    (list (length sub-list) (car sub-list) )
))
(define map-encode (lambda (lst result_array)
    (if (empty? lst)
        result_array
        (if (list? (car lst))
            (map-encode (cdr lst) (append result_array (list (create-encoded-sub-list (car lst)))))
            (map-encode (cdr lst) result_array)
        )
    )
))
(define encode (lambda (lst)
    (define result_array '())
    (define packed_list (pack lst))
    (map-encode packed_list result_array)
))

(encode '("a" "a" "a" "a" "b" "c" "c" "a" "a" "d" "e" "e" "e" "e")) ;((4 A) (1 B) (2 C) (2 A) (1 D)(4 E))