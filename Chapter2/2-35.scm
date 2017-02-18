(define (accumulate op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence)
          (accumulate op initial (cdr sequence)))))

(define (count-leaves t)
  (accumulate + 0 (map (lambda (subtree)
                         (if (not (pair? subtree))
                             1
                             (count-leaves subtree))) t)))


(count-leaves (list 1 (list 1 2)))
(count-leaves (list 1 (list 1 2) (list 1 2) (list 1 (list 1 2))))