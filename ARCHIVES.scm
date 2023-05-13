; CSC 33500 [Spring 2023]
; Final Project
; Group Members: Zuhayer Alvi and Anova Sarkar (Section M)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; ------------------------------------------------------------------------------ ;
;                    THINGS THAT DIDNT MAKE THE CUT (MAYHAPS)                    ;
; ------------------------------------------------------------------------------ ;



; ---------------------------------------------------- ;
; Now for some computations with this Stack data type: ;
; ---------------------------------------------------- ;

; Make an empty stack by the name stack0 
(define stack0 (make-stack)) 

; Create another stack named stack1 which will call the 'push' function and take the
; original empty stack, stack0, and an element, '1, as parameters. 
; Will return (1)
(define stack1 (push stack0 '1))

; Do the same with another stack named stack2
; Will return (2 1)
(define stack2 (push stack1 '2))

; Pop the first element from stack2 by defining another stack, stack3
; Will return (1)
(define stack3 (pop stack2))

; Add more elements to the stack 
; Will return (5 4 1)
(define stack4 (push stack3 '4))
(define stack5 (push stack4 '5))

; Retrieve the topmost element from the stack
; Will return 5
(define stack6 (top stack5))
