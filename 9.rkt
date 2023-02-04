#lang racket
;Pack consecutive duplicates of list elements into sublists.
(define map-pack (lambda (lst correct-lst sub-list)
    (if (empty? lst)
        correct-lst
        (if (empty? (cdr lst))
            (append correct-lst (list (append sub-list (list (car lst)))))
            (if (equal? (car lst) (car (cdr lst)))
                (map-pack (cdr lst) correct-lst (append sub-list (list (car lst))))    
                (map-pack (cdr lst) (append correct-lst (list (append sub-list (list (car lst))))) '())
            )
         )
)))


(define pack (lambda (lst )
    (define sub-list '())
    (define correct-lst '())
    (map-pack lst correct-lst sub-list)
))
;(pack '("a" "a" "a" "a" "b" "c" "c" "a" "a" "d" "e" "e" "e" "e"));((A A A A) (B) (C C) (A A) (D) (E E E E))
(provide pack)

