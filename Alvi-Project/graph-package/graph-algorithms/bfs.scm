; CSC 33500 [Spring 2023]
; Final Project
; Group Members: Zuhayer Alvi (Section M)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; Load queue.scm and graph.scm from basic-data-types folder
; This is necessary since BFS will require the queue data type and the graph implementations
(load "basic-data-types/queue.scm")
(load "basic-data-types/graph.scm")

; ----- ABSTRACT -----
; BFS, or Breadth-First Search, is an algorithm used to traverse or explore a graph in a systematic way. 
; It is particularly useful for graph-related problems where one would want to visit all the vertices of the 
; graph or find the shortest path between two vertices.

; The BFS algorithm starts at a given vertex and exploresall its neighbors (adjacent vertices) before 
; moving on to the next level of vertices. It traverses the graph in a breadth-first manner, meaning it 
; visits all the vertices at the same level or distance from the starting vertex before going 
; deeper into the graph.

; During the traversal, BFS uses a queue data structure to keep track of the vertices to be visited. The 
; algorithm enqueues the source vertex, then repeatedly dequeues a vertex from the front of the queue, 
; visits it, and enqueues its unvisited neighbors. This ensures that the vertices are visited in the order 
; they were encountered, following the breadth-first order.