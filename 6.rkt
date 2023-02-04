#lang racket
;Find out whether a list is a palindrome
(define compare-list (lambda (lst1 lst2) (equal? lst1 lst2)))
(define isPalindrome (lambda (lst)
    (compare-list lst (reverse lst))
))

(isPalindrome '(1 2 1))
(isPalindrome '("x" "a" "m" "a" "x"))
(isPalindrome '("x" "a" "m" "a" "y"))
(isPalindrome '((1 2) (1 2)))
(isPalindrome '(() (1)))













