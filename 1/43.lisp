; linear recursive definition

(define (repeated function times)
	(if (= times 1) (lambda (x) (function x))
		(compose function (repeated function (- times 1)))))

; tests:

; should return 13

((repeated inc 10) 3)

; should return 390625

((repeated square 3) 5)

; should return 625

((repeated square 2) 5)

; passes all tests

; now the iterative recursive definition

(define (repeated function times)
	(define (repeated-helper times accu)
		(if (= times 1) accu
			(repeated-helper (- times 1) (compose function accu))))
	(repeated-helper times (lambda (x) (function x))))

; once again, passes all tests