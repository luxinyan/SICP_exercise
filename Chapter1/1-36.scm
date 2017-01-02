(define (fixed-point f first-guess)
  (define (close-enought? v1 v2)
    (< (abs (- v1 v2)) 
       0.00001))
  (define (try guess)
    (let ((next (f guess)))
        (if (close-enought? guess next)
            next
            (try next))))
   (try first-guess))

(define (average v1 v2)
  (/ (+ v1 v2)
     2))

(fixed-point (lambda (x) (average (/ (log 1000) (log x))
                                   x)) 
               2.0)