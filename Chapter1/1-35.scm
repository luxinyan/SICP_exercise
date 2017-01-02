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


(fixed-point (lambda (x) (+ 1 (/ 1 x))) 1.0)