; gcd is a built in function

(define (make-rat n d)
	(let ((g (gcd n d)))
		(if (or (and (> n 0) (> d 0)) (and (< n 0) (< d 0))) (cons (/ (abs n) g) (/ (abs d) g))
			(cons (/ (abs n) (* -1 g)) (/ (abs d) g)))))

; tests

(make-rat -4 -5)

(make-rat 4 -5)

(make-rat -4 5)

(make-rat 4 5)

; passes all tests 