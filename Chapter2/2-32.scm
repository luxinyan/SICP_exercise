;the set of all subsets excluding the first number.
;the set of all subsets excluding the first number, with the first number re-inserted into each subset.

(define (subsets s)
  (if (null? s)
      (list '())
      (let ((rest (subsets (cdr s))))
          (append rest (map (lambda (subset) 
                              (cons (car s) subset)) 
                            rest)))))

(subsets (list 1 2 3))