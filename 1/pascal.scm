(define (pascal r c)
  (if (or (= c 0) (= r c))
    1
    (+ (pascal (- r 1) (- c 1)) (pascal (- r 1) c))))

(define var (pascal 4 2))

(display var)
(newline)
