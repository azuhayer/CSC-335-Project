; CSC 33500 [Spring 2023]
; Final Project
; Group Members: Zuhayer Alvi (Section M)

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


; ----- CODE -----
; In this implementation, we will create the 'make-queue' function that will create an empty queue. 

(define (make-queue)
  '())

; The 'enqueue' function takes a queue and an element as parameters, and returns a new queue with the element 
; added to the rear.

(define (enqueue queue element)
  (if (null? queue)
      (list element)
      (begin
        (set-cdr! queue (enqueue (cdr queue) element))
        queue)))

; The 'dequeue' function takes a queue and returns a new queue with the frontmost element removed. 
; If the front of the queue is empty, indicating an empty queue, it returns a new empty queue. 
; Otherwise, it removes the first element from the front of the queue by taking the 'cdr' of the front.

(define (dequeue queue)
  (if (null? queue)
      queue
      (cdr queue)))

; The 'front' function returns the frontmost element of the queue without modifying the queue itself. 
; It accesses the first element of the front using the primitive 'car'.

(define (front queue)
  (car queue))

; The 'empty?'' function checks if the queue is empty by checking if the front of the queue is null.

(define (empty? queue)
  (null? queue))


