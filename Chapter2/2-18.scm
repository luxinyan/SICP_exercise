#lang sicp
(define (append list1 list2)   
  (if (null? list1)
      list2
      (cons (car list1) 
            (append (cdr list1) list2))))

(define (reverse items)
  (if (null? items)
      items
      (append (reverse (cdr items))
              (list (car items)))))

(reverse (list 1 2 3))

(list 1 2 3)
(cons 1 2)