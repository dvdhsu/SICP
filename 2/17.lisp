(define (last-pair ls)
	; instead of re-writing some functions; I'll just use built-in functions.
	; we'll return the last element of the list by finding the length, then accessing the length - 1 element:
	(list-ref ls (- (length ls) 1)))

; a few tests:

	; should return 1
	(last-pair (list 1))

	; should return 7
	(last-pair (list 1 3 5 7))

; passes both tests
