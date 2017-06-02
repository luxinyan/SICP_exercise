;; 判断一种语言是「正则式」还是「应用式」
;; http://stackoverflow.com/questions/11334611/sicp-exercise-1-5
(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

;(test 0 (p))

(define (f g)
  (` 2))

(f square)