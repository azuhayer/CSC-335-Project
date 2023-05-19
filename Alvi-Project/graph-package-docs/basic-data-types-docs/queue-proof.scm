; CSC 33500 [Spring 2023]
; Final Project
; Group Members: Zuhayer Alvi (Section M)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; ---------------------- ;
;      'make-queue'      ;
; ---------------------- ;
; Precondition: No explicit precondition needed to create a queue.

; Postcondition: Creating a new queue will return an empty list: ().


; ---------------------- ;
;        'enqueue'       ;
; ---------------------- ;
; Precondition: Function takes a queue and an element as parameters, queue doesnt necessarily
; have to be empty. 

; Postcondition: Will return a new queue with the element added to the rear of the 
; queue. 


; ---------------------- ;
;        'dequeue'       ;
; ---------------------- ;
; Precondition: Function takes a nonempty queue as a parameter. 

; Postcondition: Will return a new queue with the frontmost element removed from the queue. 


; ---------------------- ;
;        'front'         ;
; ---------------------- ;
; Precondition: Function takes a nonempty queue as a parameter.

; Postcondition: Will return the frontmost element within the queue.


; ---------------------- ;
;        'empty?'        ;
; ---------------------- ;
; Precondition: Function takes a queue as a parameter. 

; Postcondition: Will return true (#t) or false (#f) depending if the queue is 
; empty or not. 