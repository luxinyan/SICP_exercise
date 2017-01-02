(define (add x y)
  (+ x y))

(define (cube x)
  (* x x x))

(define (inc x)
  (1+ x))

(define (identity x)
  x)


(define (accumulate combiner null-value term a next b)
  (if (> a b)
      null-value
      (combiner (term a)
                (accumulate combiner null-value term (next a) next b))))


(define (sum term a next b)
  (define (add x y)
    (+ x y))
  (accumulate add 0 term a next b))


;(define product
;  (define (inc2 x)
;    (+ x 2))
;  (accumulate * 0 identity a inc2 b))



(define (filtered-accumulate combiner null-value filter term a next b)
  (if (> a b)
      null-value
      (combiner (if (filter a) (term a) null-value)
                (filtered-accumulate combiner null-value filter term (next a) next b))))  


(filtered-accumulate add 0 even? identity 1 inc 4)









