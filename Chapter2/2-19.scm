(define (except-first-denomination coin-values) 
  (cdr coin-values))

(define (first-denomination coin-values)
  (car coin-values))

(define (no_more? coin-values)
  (null? coin-values))

(define (cc amount coin-values)
  (cond ((= amount 0) 1)
        ((or (< amount 0) (no_more? coin-values)) 0)
        (else 
          (+ (cc amount 
                 (except-first-denomination coin-values))
             (cc (- amount (first-denomination coin-values))
                 coin-values)))))

(define RMB (list 100 50 20 10 5 1))

(define US (list 50 25 10 5 1))

(define UK (list 100 50 20 10 5 2 1 0.5))

(cc 100 RMB)