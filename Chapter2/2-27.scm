(define x (list (list 1 2) (list 3 4)))

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

(define (deep-reverse items)
  (if (null? items)
      items
      (append (deep-reverse (cdr items))
          (list (if (pair? (car items)) 
                    (deep-reverse (car items)) 
                    (car items))))))


(deep-reverse x)