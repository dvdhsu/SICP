(define (subsets s)
	(if (null? s)
		(list '())
		(let ((rest (subsets (cdr s))))
			(append rest (map (lambda (s2) (append (list (car s)) s2)) rest)))))

; to generate subsets, we want to generate subsets of everything with the car element removed,
; then join that with the subset of everything with the car element included. There are 2^n 
; subsets for a set of n; this is because each element is either in or out of the subset. 
; We have considered all possible subsets with the car removed, and have considered 
; all possible subsets with the car included; these are all the possible subsets. 

; Interestingly, if we change (list '()) to (list), this method no longer works, and always 
; returns (). Try the following:

(define (subsets s)
	(if (null? s)
		(list)
		(let ((rest (subsets (cdr s))))
			(append rest (map (lambda (s2) (append (list (car s)) s2)) rest)))))

; I'm not sure why this is. On p144, "empty list", "'()", and "nil" are used interchangably. 



