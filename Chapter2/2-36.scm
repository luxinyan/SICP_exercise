(define (accumulate op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence)
          (accumulate op initial (cdr sequence)))))


(define (accumulate-n op initial seqs)
  (if (null? (car seqs))
      '()
      (cons (accumulate op initial (map (lambda (seq) 
                                          (car seq))
                                        seqs))
            (accumulate-n op initial (map (lambda (seq) 
                                          (cdr seq))
                                        seqs)))))


(define s (list (list 1 2 3) (list 1 2 3) (list 1 2 3)))
(accumulate-n + 0 s)
