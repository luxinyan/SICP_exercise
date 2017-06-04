#lang sicp

(define x (list (list 1 2) (list 3 4)))

(define (deep-reverse items)
  (if (null? items)
      items
      (append (deep-reverse (cdr items))
          (list (if (pair? (car items)) 
                    (deep-reverse (car items)) 
                    (car items))))))

(display (deep-reverse x))