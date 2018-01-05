(import (rnrs) (solver) (srfi s64 testing))

(test-begin "fibonacci")
(test-eqv 0 (fibonacci 0))
(test-eqv 1 (fibonacci 1))
(test-eqv 1 (fibonacci 2))
(test-eqv 2 (fibonacci 3))
(test-eqv 3 (fibonacci 4))
(test-eqv 5 (fibonacci 5))
(test-eqv 8 (fibonacci 6))
(test-eqv 13 (fibonacci 7))
(test-eqv 21 (fibonacci 8))
(test-eqv 34 (fibonacci 9))
(test-eqv 55 (fibonacci 10))
(test-end "fibonacci")

(test-begin "even-fibonacci")
(map
  (lambda (x) 
    (test-assert (even? (even-fibonacci x))))
  (list 1 2 3 4 5 6 7 8 9 10))
(test-eqv 0 (even-fibonacci 0))
(test-eqv 2 (even-fibonacci 1))
(test-eqv 8 (even-fibonacci 2))
(test-eqv 34 (even-fibonacci 3))
(test-end "even-fibonacci")

(test-begin "sum-upto")
(test-eqv (+ 1 2 3 4 5 6 7 8 9 10) (sum-upto 0 10 (lambda (x) x)))
(test-eqv (+ 2 4 6 8 10 12 14 16) (sum-upto 0 16 (lambda (x) (* 2 x))))
(test-end "sum-upto")

(test-begin "solve")
(test-eqv 0 (solve 0))
(test-eqv 2 (solve 2))
(test-eqv 10 (solve 8))
(test-eqv 44 (solve 34))
(test-end "solve")