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
; Precondition: The function 'top' will take one parameter: a stack. The stack has to have atleast
; one element in it. 

; Postcondition: The top element of the stack is returned without any modifications to the stack. 


; ---------------------- ;
;        'empty?'        ;
; ---------------------- ;
; Precondition: The function 'empty?' will take one parameter: a stack. The stack could either have
; no elements or many elements. 

; Postcondition: If the stack is empty it will return #t, if the stack is not empty it will return 
; #f. 