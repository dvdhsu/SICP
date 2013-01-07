; imported code

(define (make-mobile left right)
	(list left right))

(define (make-branch length structure)
	(list length structure))

; part a

(define (left-branch m)
	(car m))

(define (right-branch m)
	(car (cdr m)))

(define (branch-length b)
	(car b))

(define (branch-structure b)
	(car (cdr b)))

; part b

(define (total-weight m)
	; add the left branch weight to the right branch weight
		; check the left branch
		; if the left branch is another mobile, recurse
		( + (if (pair? (branch-structure (left-branch m))) (total-weight (branch-structure (left-branch m)))
				(branch-structure (left-branch m)))
		; check the right branch
		; if the right branch is another mobile, recurse
			(if (pair? (branch-structure (right-branch m))) (total-weight (branch-structure (right-branch m)))
				(branch-structure (right-branch m)))))

; let's create a mobile to test this

; this mobile will have a recursive mobile on the left, and no mobile on the right
; the total weight of all mobiles will be 10: 2 + 5 on the left, 3 on the right

(define left-one (make-mobile (make-branch 1 2) (make-branch 2 5)))
(define mobile (make-mobile (make-branch 7 left-one) (make-branch 4 3)))

(total-weight mobile)

; 10, correct

; let's create another mobile, from the above mobile

(define super-mobile (make-mobile (make-branch 1 mobile) (make-branch 1 mobile)))

(total-weight super-mobile)

; 20, correct

; total-weight seems to work

; part c 

; we can use the same code as part b, but instead of adding the two, we'll just check whether they're equal

(define (balanced? m)
	(= (if (pair? (branch-structure (left-branch m))) (total-weight (branch-structure (left-branch m)))
				(branch-structure (left-branch m)))
		(if (pair? (branch-structure (right-branch m))) (total-weight (branch-structure (right-branch m)))
				(branch-structure (right-branch m)))))

; test with super-mobile

(balanced? super-mobile)

; true, which is correct

(balanced? mobile)

; false, which is correct

; part d

; Because the only place we access left, right, length, and structure are in our selectors,
; we only need to change those, and nothing else. In fact, we don't even need to change 
; left-branch or branch-length since car takes the right of a cons as well as the first element
; of a list. We only need to change right-branch and branch-structure to just cdr, instead 
; of (car (cdr m/b)), since accessing the second element of a cons is slightly different from 
; accessing the second element from a list. 

; So, it's very easy to change our bottom layers, since the top layers aren't relying on 
; them. Instead, they're relying on the middle layers, which are easy to change. 
; A change in a lower layer propagates upwards. 
