; CSC 33500 [Spring 2023]
; Final Project
; Group Members: Zuhayer Alvi (Section M)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; ----- ABSTRACT -----
; We know that a Stack is a linear data structure that follows the LAST IN FIRST OUT (LIFO) principle, 
; meaning that the last element that is added to a Stack would be the first element that would be removed 
; from the stack. 

; The insertion of an element and the removal of an element within a Stack is defined through two main 
; operations:

; Push: Adds an element to the top of the stack
; Pop: Removes and returns the topmost element of the stack

; In the context of graphs, the Stack data type could be used in various search/traversal algorthms. 
; One such application of the stack data type would be DFS or the Depth-First Search algorithm. 
; The DFS algorithm does this by visiting a vertex of the graph and recursively visiting its 
; adjacent vertices. 

; Algorithm for how a Stack works: 
; 1. Start with an empty stack and an empty visited set
; 2. Push the starting vertex onto the stack and mark it as visited
; 3. While the stack is not empty:
;       - Pop the topmost vertex from the stack
;       - Process the vertex (e.g. print the vertex)
;       - Retrieve all adjacent vertices of the current vertex that haven't been visited
;       - Push each unvisited adjacent vertex onto the stack and mark them as visited
; 4. Repeat Step 3 until the stack becomes empty

; We will create functions 'push', 'pop', 'top', and 'empty?' to create our stack data type.


; ----- CODE -----
; In this implementation, we will be utilizing an empty list as our way to create an empty stack.
; An empty list will be represented as '(). 

(define (make-stack)
    '())

; The 'push' function takes a stack and an element as parameters and returns a new stack with the element 
; added to the top of the stack. It utlizes the primitive 'cons' procedure to combine the 
; element into the stack. 

(define (push stack element)
    (cons element stack))

; The 'pop' function takes a stack as a parameter and will return a new stack with the topmost 
; element removed from the stack. It utilizes the primitive 'cdr' procedure to remove the topmost
; element from the stack. 

(define (pop stack)
    (cdr stack))

; The 'top' function takes a stack as a parameter and will return the topmost element of the 
; stack. It utilizes the primitive 'car' procedure to retrieve the topmost element from the stack.

(define (top stack)
    (car stack))

; The 'empty?' function takes a stack as a parameter and will return #t (true) or #f (false) depending
; on whether there are any elements  within the stack. If the stack has no elements, it will return #t.
; If the stack has elements, it will return #f. It utlizes the primitive 'null?' procedure to check. 

(define (empty? stack)
    (null? stack))
