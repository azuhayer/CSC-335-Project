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
; all vertices from the start vertex in a breadth-first manner when the queue is not empty and 
; the visited list is being updated.

; Inductive Step: 
;   1. We need to show that the algorithm preserves the correctness property as it processes the next 
;      vertex in the queue.
;   2. Suppose the algorithm dequeues a vertex v from the queue.
;   3. If v is already present in the visited list, it implies that v has been visited before and its 
;      neighbors have already been processed.
;   4. In this case, the algorithm skips v and proceeds to the next vertex in the queue, maintaining 
;      the correctness property.
;   5. If v is not present in the visited list, the algorithm considers it as an unvisited vertex and 
;      processes its neighbors.
;   6. It identifies the unvisited neighbors of v using the unvisited function and appends them to the 
;      visited list.
;   7. The algorithm enqueues these unvisited neighbors into the queue using the enqueue-multiple function, 
;      ensuring they will be visited in the subsequent iterations.
;   8. By recursively calling the BFS algorithm with the updated queue and visited list, the algorithm continues 
;      the breadth-first traversal of the graph, preserving the correctness property.

; Base Case: When the queue is empty, the BFS algorithm returns the reverse of the visited list.
; If there are no vertices in the graph other than the start vertex, the algorithm will visit only 
; the start vertex and return it as the result. Therefore, the base case holds. 

