(define (accumulate op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence)
          (accumulate op initial (cdr sequence)))))


(define (map p sequence)
  (accumulate (lambda (x y)
                (cons (p x) y))
              '()
              sequence))

(map square (list 1 2 3))


(define (append seq1 seq2)
  (accumulate cons seq2 seq1))

(append (list 1 2) (list 3 4))

(define (length sequence)
  (accumulate (lambda (x y) 
                (let ((a (if (null? x) 0 1)))
                     (+ a y))) 
              0 
              sequence))
  
(length (list 1 2 3 4 5))
(length '())
