#lang racket
;Run-length encoding of a list.
(define encode (lambda (lst [correct_lst '()])
    (println lst)
))


(encode '(a a a a b c c a a d e e e e));((4 A) (1 B) (2 C) (2 A) (1 D)(4 E))