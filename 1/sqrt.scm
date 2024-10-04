(define (new-if predicate then-clause else-clause)
    (cond (predicate then-clause)
        (else else-clause)))


(define (square x) (* x x))

(define (sqrt-iter guess x)
    (if (good-enough? guess (improve guess x))
        guess
        (sqrt-iter (improve guess x) x)))

(define (improve guess x)
    (average guess (/ x guess)))

(define (average x y)
    (/ (+ x y) 2))


(define (good-enough? prev_guess guess)
    (< (abs (/ (- guess prev_guess) guess)) 0.000000000001))

(define (sqrt x)
    (sqrt-iter 1.0 x))


(define (approx x y)
  (/ (+ (/ x (square y)) (* 2 y)) 3))

(define (cube-iter guess x)
    (if (good-enough? guess (approx x guess))
        guess
        (cube-iter (approx x guess) x)))

(define (cube x)
  (cube-iter 1.0 x))

(define res (cube 27))

(display res)
(newline)
