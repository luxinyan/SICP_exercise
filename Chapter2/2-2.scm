(define (make-point x y)
  (cons x y))

(define (x-point point)
  (car point))

(define (y-point point)
  (cdr point))


(define (make-segment a b) 
  (cons a b))

(define (start-segment segment)
  (car segment))

(define (end-segment segment)
  (cdr segment))

(define (average a b)
  (/ (+ a b)
     2))

(define (midpoint-segment segment)
  (let ((a (start-segment segment))
        (b (end-segment segment)))
    (make-point (average (x-point a) (x-point b))
                (average (y-point a) (y-point b)))))


(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")"))

(define (test)
  (let ((segment (make-segment (make-point 1 1)
                               (make-point 3 3))))
      (print-point (midpoint-segment segment))))


(test)