#lang racket
;Pack consecutive duplicates of list elements into sublists.

(define pack (lambda (lst [correct_lst '()] [sub_lst '()])

))

(pack '("a" "a" "a" "a" "b" "c" "c" "a" "a" "d" "e" "e" "e" "e"));((A A A A) (B) (C C) (A A) (D) (E E E E))
