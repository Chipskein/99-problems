#lang racket
;Decode a run-length encoded list.
(define handle-sub-lst (lambda (lst)
    (make-list (car lst) (car (cdr lst)))
))

(define map-decode (lambda (lst result)
    (if (empty? lst)
        result
        (if (list? (car lst))
            (map-decode (cdr lst) (append result (handle-sub-lst (car lst))))
            (map-decode (cdr lst) (append result (list (car lst))))
        )
    )
))
(define decode (lambda (encoded-lst)
    (define result '())
    (map-decode encoded-lst result)
))
(decode '((4 A) B (2 C) (2 A) D (4 E)))

