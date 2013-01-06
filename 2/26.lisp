(define x (list 1 2 3))
(define y (list 4 5 6))

; the first should produce a list equivalent to (list 1 2 3 4 5 6). This because we're appending two lists
; which just produces a new list out of the two. 

(append x y)

(1 2 3 4 5 6)

; correct

; the second should produce a list with four elements. The first element will be a list equivalent to x. The 
; second element will be 4, the third will be 5, and the fourth will be 6. Because the first list 
; is forcibly being attached to the head of the second list, the first list is treated as just an element. 
; The second list, however, is unaware that it's been attached to another list, and acts as the second through
; fifth elements of the list. 

(cons x y)

((1 2 3) 4 5 6)

; correct

; the third should produce a list with two elements. The first is x; the second is y. Because we are forcibly
; creating a list, the list constructor doesn't care that the first or second are lists; they are just treated
; as elements. 

(list x y)

((1 2 3) (4 5 6))

; correct
