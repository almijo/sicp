#lang simply-scheme

#|
In the case of applicative-order evaluation all the expressions that are passed
as parameters are evaluated first. Since p is recursively defined as itself without
any exit condition, the program doesn't halt.

When using normal-order evaluation however, (p) is only evaluated when necessary.
Since the condition is true, 0 is returned without ever needing the second parameter.
|#

(define (p) (p))
(define (test x y)
  (if (= x 0) 0 y))

(test 0 (p))