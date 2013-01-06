(define (deep-reverse ls)
	(cond ((and (= (length ls) 1) (pair? (car ls))) (list (deep-reverse (car ls))))
		  ((and (= (length ls) 1) (not (pair? (car ls)))) (list (car ls)))
		  ((not (pair? (car ls)))  (append (deep-reverse (cdr ls)) (list (car ls))))
		  (else (append (deep-reverse (cdr ls)) (list (deep-reverse (car ls)))))))

; tests

	(deep-reverse (list 1 2 (list 3 4 5 6) (list 7 8 9) 10))

	; (10 (9 8 7) (6 5 4 3) 2 1)

	(deep-reverse (list 1 2 3 4))

	; (4 3 2 1)

	(deep-reverse (list 1 2 (list 3 4) 5))

	; (5 (4 3) 2 1)

; passes all tests
