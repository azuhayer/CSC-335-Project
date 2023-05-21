; CSC 33500 [Spring 2023]
; Final Project
; Group Members: Zuhayer Alvi (Section M)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; ---------------------- ;
;       BFS PROOF        ;
; ---------------------- ;

; Precondition: The precondition for the BFS algorithm is that the input graph must be represented 
; using the adjacency list representation, and the start vertex must be a valid vertex in the graph.

; Postcondition: The postcondition for the BFS algorithm is that it returns a list containing the vertices 
; visited during the breadth-first traversal of the graph starting from the specified start vertex. 
; The vertices in the list are in the order in which they were visited, representing the breadth-first exploration 
; of the graph.

; Inductive Hypothesis: Assume that for a given graph and start vertex, the BFS algorithm correctly visits 
; all vertices reachable from the start vertex in a breadth-first manner when the queue is not empty and 
; the visited list is being updated.

; Inductive Step: 
;   1. We need to show that the algorithm preserves the correctness property as it processes the next 
;      vertex in the queue.
;   2. Suppose the algorithm dequeues a vertex v from the queue.
;   3. 

