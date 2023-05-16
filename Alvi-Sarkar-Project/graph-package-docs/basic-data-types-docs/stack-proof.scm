; CSC 33500 [Spring 2023]
; Final Project
; Group Members: Zuhayer Alvi and Anova Sarkar (Section M)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; ---------------------- ;
;      'make-stack'      ;
; ---------------------- ;
; Precondition: No explicit precondition needed for creating a stack. 

; Postcondition: Creating a new stack will return an empty list: ().


; ---------------------- ;
;         'push'         ;
; ---------------------- ;
; Precondition: The function 'push' will take two parameters: a stack and an element. There are 
; no specific limitations or restrictions as to what element one would like to push into a 
; stack.

; Postcondition: The new stack is modified to include the newly added element at the top. 


; ---------------------- ;
;         'pop'          ;
; ---------------------- ;
; Precondition: The function 'pop' will take one parameter: a stack. The stack has to have atleast 
; one element in it for it to be removed from the stack. 

; Postcondition: The new stack is modified by removing the topmost element and returning the newly 
; modified stack. 


; ---------------------- ;
;         'top'          ;
; ---------------------- ;
; Precondition: Takes a nonempty list as a stack parameter, as there cannot be 
; a top element if there are no elements to begin with in the list.

; Postcondition: Returns the top of the stack, which is the first element of the 
; list.


; ---------------------- ;
;        'empty?'        ;
; ---------------------- ;
; Precondition: Takes a list as a stack parameter (can be empty or nonempty).

; Postcondition: Returns true (#t) if list is has no elements in it (empty). Returns false (#f)
; otherwise (nonempty).
