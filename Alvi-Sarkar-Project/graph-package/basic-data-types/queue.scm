; CSC 33500 [Spring 2023]
; Final Project
; Group Members: Zuhayer Alvi and Anova Sarkar (Section M)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; ----- ABSTRACT -----
; A Queue is a linear data structure that follows the First-In-First-Out (FIFO) principle. This basically
; means that any element that has been in the queue for the longest (suggested by 'first in') would be 
; the first element to be taken out of the queue (suggested by 'first out'). 

; The Queue data structure supports two different operations:
; 1. Enqueue: Adds an element to the back of a queue  
; 2. Dequeue: Removes an element from the frontmost part of the queue and returns it

; In the context of graphs, Queue's can be used for various traversal graph algorithms such as 
; Breadth-First Search or BFS for short. BFS does this by first visiting all the vertices of the current 
; depth of the graph before moving onto the next level.  

; Algorithms for how a Queue works:
; 1. Start with an empty queue and an empty visited set
; 2. Enqueue the starting vertex into the queue and mark it as visited 
; 3. While the queue is not empty:
;       - Dequeue the frontmost vertex from the queue
;       - Process the vertex (e.g., print it or perform some operation)
;       - Get all adjacent vertices of the current vertex that have not been visited
;       - Enqueue each unvisited adjacent vertex into the queue and mark them as visited
; 4. Repeat step 3 until the queue becomes empty