(define (cube x) (* x x x))
(define (next n) (+ n 1))


(define (sum term a next b)
    (if (> a b)
        0
        (+ (term a)
           (sum term (next a) next b))))

(define (sum-iter term a next b)
  (define (iter a result)
    (if (> a b)
      result
      (iter (next a) (+ result (term a)))))
    (iter a 0))


(define (product term a next b)
  (define (prod-iter a result)
    (if (> a b)
      result
      (prod-iter (next a) (* result (term a)))))
    (prod-iter a 1))

(define (linear x) x)

(define (factorial n)
  (product linear 1 next n))

(define (skip n) (+ n 2))
(define (square n) (* n n))

(define (wallis n)
  (define (wallis-n n) 
    (/ (* 4 (square n)) (- (* 4 (square n)) 1)))
  (product wallis-n 1.0 next n))


(define (accumulate combiner null-value term a next b)
  (if (> a b)
    null-value
    (combiner (term a)
      (accumulate combiner null-value term (next a) next b))))

(define (accum-iter combiner null-value term a next b)
  (define (iter a res)
    (if (> a b)
      res
      (iter (next a) (combiner res (term a)))))
  (iter a null-value))

;(define zort (* 2 (wallis 1000)))


(define (acc-sum term a next b)
  (accum-iter + 0 term a next b))

(define zort (acc-sum linear 1 next 3))

(display zort)
(newline)
