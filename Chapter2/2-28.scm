#lang sicp

(define x (list (list 1 3) (list 3 4) 5))

(define (fringe items)
  (cond ((null? items) items)
        ((not (pair? items)) (list items))
        (else
          (append (fringe (car items))
                  (fringe (cdr items))))))

(display (fringe x))
(newline)
(display (fringe (list x x)))