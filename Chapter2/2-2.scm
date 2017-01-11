(define (make-point x y)
  (cons x y))

(define (x-point point)
  (car point))

(define (y-point point)
  (cdr point))


(define (make-segment start end) 
  (cons start end))

(define (start-segment segment)
  (car segment))

(define (end-segment segment)
  (cdr segment))

(define (midpoint-segment segment)
  (let ((start-point (start-segment segment))
        (end-point (end-segment segment))
        (start-x (x-point start-point))
        (start-y (y-point start-point))
        (end-x (x-point end-point))
        (end-y (y-point end-point))
        (mid-x (\ (+ start-x end-x)
                  2))
        (mid-y (\ (+ start-y end-y)
                  2))
        )
      (make-point mid-x mid-y))
  )

(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")"))

(define (test)
  (let ((segment (make-segment (make-point 1 1)
                                 (make-point 2 2)))
        (mid-point (midpoint-segment segment)))
      (print-point mid-point)))

(test)
;(make-segment (make-point 1 1) (make-point 1 1))`
;(print-point (make-segment 1 (make-point 1 1)))



