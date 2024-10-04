(define (fermat-test a p)
  (if (= 0 (remainder (- (expt a (- p 1)) 1) p))
    (display "Fermat test is fooled!\n")
    (display "Nuh-uh\n")))



(define xd (fermat-test 2465 16))
