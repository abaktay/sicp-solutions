(define (average a b) (/ (+ a b) 2))
(define (square x) (* x x))
(define (average-damp f)
  (lambda (x) (average x (f x))))

(display((average-damp square) 10))
(newline)
