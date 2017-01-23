;https://zh.wikipedia.org/wiki/%E9%82%B1%E5%A5%87%E6%95%B0?oldformat=true
(define zero
  (lambda (f)
    (lambda (x) x)))

(define one
  (lambda (f)
    (lambda (x) (f x))))

(define two
  (lambda (f)
    (lambda (x) (f (f x)))))

(define three
  (lambda (f)
    (lambda (x) (f (f (f x))))))

(define (add-1 n)
  (lambda (f)
    (lambda (x) (f ((n f) x))))) 

(define (add m n)
  (lambda (f)
    (lambda (x) ((m f) ((n f) x)))))

(define (display-number x)
  (newline)
  (display "----")
  x)

(newline)
(display "test number")
((two display-number) 1)

(newline)
(display "test add")
(((add two three) display-number) 1)