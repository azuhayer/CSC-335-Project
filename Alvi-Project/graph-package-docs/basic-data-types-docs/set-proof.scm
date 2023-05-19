; CSC 33500 [Spring 2023]
; Final Project
; Group Members: Zuhayer Alvi (Section M)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; ---------------------- ;
;      'empty-set'       ;
; ---------------------- ;
; Precondition: No explicit precondition needed to create a set.

; Postcondition: Creating a new set will return an empty set: (). 


; ---------------------- ;
;      'set-empty?'      ;
; ---------------------- ;
; Precondition: The function 'set-empty?' takes one parameter: a set. This set can either 
; be empty or nonempty. 

; Postcondition: Will return true (#t) or false (#f) depending if the set is empty or 
; not. If it is empty the function will return #t, if not then #f. 


; ---------------------- ;
;      'set-member?'     ;
; ---------------------- ;
; Precondition: The function 'set-member?' takes two parameters: a nonempty set and any 
; element. 

; Postcondition: Will return true (#t) or false (#f) depending if the element given 
; appears within the set. 

; Inductive Hypopthesis: Assuming that the 'set-member?' function works properly for a set 
; of 'n' elements, we want to show that it works correctly for a set of 'n + 1' elements 
; as well. 

; Inductive Step: By assuming the correctness of the function for sets of size 'n', we can 
; also demonstrate that this function works with sets of 'n + 1' size by following 3 cases:
;   1. When the set is empty, the function will return false (#f)
;   2. If the first element of the set , '(car set)', equals to the target element, the 
;      function will return true (#t)
;   3. Otherwise, the function will recursively call 'set-member?' on the rest of the set

; Base Case: When the set is empty, the function will return false (#f), thus the base case
; holds. 

; Since the base case holds and the inductive step shows that if these cases hold for a set of 
; size 'n', then it must hold for a set of size 'n + 1', and thus we could conclude that the 
; 'set-member?' function will correctly determine membership of all elements within a set,
; given a specific element. 


; ---------------------- ;
;       'set-add'        ;
; ---------------------- ;
; Precondition: The 'set-add' function takes two parameters: a nonempty set and an element. 

; Postcondition: The function will return a nonempty set with the element combined within it. 


; ---------------------- ;
;      'set-remove'      ;
; ---------------------- ;
; Precondition: The funtion 'set-remove' takes two parameters: a nonempty set and an element. 

; Postcondition: The function will return a newly updated set with the given element removed
; from the original set. 

; Inductive Hypothesis: Assuming the 'set-remove' function works correctly for a set of size 'n'
; elements, we want to show that this function works correctly for a set of size 'n + 1' elements. 

; Inductive Step: By assuming the correctness of the function for sets of size 'n', we can also
; demonstrate that this function works correctly for sets of size 'n + 1' by following these 3 cases:
;   1. If the set is empty, the function will return the set itself
;   2. If the first element of the set is equal to the target element, function will return the rest 
;      of the set.
;   3. Otherwise, it recursively calls 'set-remove' on the rest of the set

; Base Case: When the set is empty, the function will return the empty set. Thus the base case holds. 

; Since the base case holds and the inductive step shows that if the cases hold for a set of size 'n'
; then it will definitely hold for a set of size 'n + 1', thus we can conclude that the 'set-remove' 
; function correctly removes an element from any set. 


; ---------------------- ;
;      'set-union'       ;
; ---------------------- ;
; Precondition: 

; Postcondition:

; Inductive Hypothesis: 

; Inductive Step:

; Base Case:


; ---------------------- ;
;   'set-intersection'   ;
; ---------------------- ;
; Precondition: 

; Postcondition:

; Inductive Hypothesis: 

; Inductive Step:

; Base Case: