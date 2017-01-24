(define x (list (list 1 3) (list 3 4) 5))

(define (append list1 list2)   
  (if (null? list1)
      list2
      (cons (car list1) 
            (append (cdr list1) list2))))

(define (fringe items)
  (cond ((null? items) items)
        ((not (pair? items)) (list items))
        (else
          (append (fringe (car items))
                  (fringe (cdr items))))))

(fringe x)

(fringe (list x x))