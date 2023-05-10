; CSC 33500 [Spring 2023]
; Final Project
; Group Members: Zuhayer Alvi and Anova Sarkar (Section M)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; ---- ABSTRACT ----
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

; In this implementation of a Stack data type, we will be utilizing a list as our way to create 
; an empty stack. 

; We will create functions 'push', 'pop', 'top', and 'empty?' to create our stack data type.