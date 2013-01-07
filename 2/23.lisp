; this function returns true

(define (for-each f x)
	(if (null? x) true
			(and (f (car x)) (for-each f (cdr x)))))
; test

	; should display
	; """ 1 
	;	  2
	;	  3
	;	  4 """

	(for-each (lambda (x) (newline) (display x)) (list 1 2 3 4))

; passes