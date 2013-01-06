(define (fringe ls)
	(cond ((null? ls) list())
		  ((pair? (car ls)) (append (fringe (car ls)) (fringe (cdr ls))))
		  (else (append (list (car ls)) (fringe (cdr ls))))))


; tests

	(fringe (list 1 2 (list 3 4) 5))

	; (1 2 3 4 5)

	(fringe (list 1 2 3 4))

	; (1 2 3 4)

	(fringe (list 1 2 (list 3 (list 4 (list 5 6) 7)))))

	; (1 2 3 4 5 6 7)

; passes all tests
