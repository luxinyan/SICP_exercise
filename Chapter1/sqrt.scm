(define (sqrt-iter guess x)
  (display guess)
  (newline)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))

(define (improve guess x)
  (average (/ x guess)
           guess))

(define (average x y)
  (/ (+ x y)
     2))

(define (good-enough? guess x)
  (< (abs (- (square guess) x))
     0.001))

(define (square x)
  (* x x))

(define (abs x)
  (if (> x 0)
      x
      (- x)))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(sqrt 100)