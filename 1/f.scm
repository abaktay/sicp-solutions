(define (naive-f n)
  (if (< n 3) 
    n
    (+ (naive-f (- n 1)) (* 2 (naive-f (- n 2))) (* 3 (naive-f (- n 3))))))

(define y (naive-f 6))

(define (f n)
 (define (f-iter n-1 n-2 n-3 nn)
    (if (= n nn)
        n-1
        (f-iter (+ n-1 (* 2 n-2) (* 3 n-3)) n-1 n-2 (+ 1 nn))))

  (if (< n 3)
      n
      (f-iter 2 1 0 2)))

(define y (naive-f 12))

(display y)
(newline)


(define y-2 (f 12))

(display y-2)
(newline)
