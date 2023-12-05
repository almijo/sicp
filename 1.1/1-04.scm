#lang simply-scheme

#|
The leftmost expression in the combination evaluates to the operator
+ if b is > 0 or - otherwise.
The resulting operator is then applied to the operands a and b.
This procedure effectively adds the absolute value of b to a.
|#

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))