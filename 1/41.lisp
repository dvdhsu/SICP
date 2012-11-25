(define (inc x) (+ x 1))

(define (double function)
	(lambda (x) (function(function x))))

; (((double (double double)) inc) 5) should return 13
; this is because (double double) returns the original function applied 2 times
; so (double (double double)) returns the original function applied 8 times
; 5 + 8 = 13

(((double (double double)) inc) 5)

; looks like I was wrong
; Ah... I read it as this:

((double (double (double inc))) 5)

; instead, because we're literally applying the double function to itself,
; we're actually getting something like this:

; (lambda (x) (double (double (double (double ... ))))

; this is the previous function, but applied a squared number of times
; eg: (double (double (double double)) inc) is inc applied 256 times
; let's verify this

(((double (double (double double))) inc) 5)

; indeed, the answer is 261 (256 + 5)