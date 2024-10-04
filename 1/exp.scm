(define (* a b)
  (if (= b 0)
    0
    (+ a (* a (- b 1)))))

(define (double n)
  (* n 2))

(define (halve n)
  (* n (/ 1 2)))

(define (expt b n)
  (expt-iter b n 1))

(define (expt-iter b counter product)
  (if (= counter 0)
    product
    (expt-iter b
               (- counter 1)
               (* b product))))

(define (even? n)
  (= (remainder n 2) 0))

(define (square n) (* n n))

(define (fast* a b)
  (cond (= b 0) 0)
        (even? b) (fast* (double a) (halve b))
        (else (+ a (fast* a (- b 1)))))

(define (faster* a b c)
  (cond (= b 0) c)
        (even? b) (faster* (double a) (halve b) c)
        (else (faster* a (- b 1) (+ c a))))

(define (fast-expt b n)
  (cond ((= n 0) 1)
        ((even? n) (square (fast-expt b (halve n))))
        (else (* b (fast-expt b (- n 1))))))


(define (iter-expt a b n)
  (cond ((= n 0) a)
        ((even? n) (iter-expt a (square b) (halve n)))
        (else (iter-expt (* a b) b (- n 1)))))

(define zart (faster* 14 24 0))

(display zart)
(newline)
