; CSC 33500 [Spring 2023]
; Final Project
; Group Members: Zuhayer Alvi and Anova Sarkar (Section M)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; ----- ABSTRACT -----
; A table data type in computer programming refers to a structural way of organizing and storing data, 
; typically with rows and columns, as the name suggests. 

; In the context of graphs, the table data type could be used to represent graph data in a table format. 
; For example, each row of the table could represent each node of a graph while each column of the 
; table could represent various properties associated with each node. 

; Various functions could be implemented for this table data type such as adding a row to the existing 
; table, retrieveing a specific row from the table, adding a column, or even updating a value 
; at a specific row and column index. 


; ----- CODE -----
; In this implementation, we will use function 'make-table' to create an empty table 
; with no rows. 

(define (make-table)
  '())

; The function 'add-row' will take two parameters, a table and a row, and insert a new row 
; to the table. 

(define (add-row table row)
  (cons row table))

; The function 'get-rows' will return all the rows of the table.

(define (get-rows table)
  table)

; The function 'num-rows' will return the number of rows in the table.

(define (num-rows table)
  (length table))

; The function 'get-row' will return a specific row of the table given an index. 

(define (get-row table index)
  (list-ref table index))

; Add a column to all rows in the table
(define (add-column table column)
  (map (lambda (row) (cons column row)) table))

; Get a specific column by index
(define (get-column table index)
  (map (lambda (row) (list-ref row index)) table))

; Update a value at a specific row and column index
(define (update-value table row-index column-index new-value)
  (let ((old-row (get-row table row-index)))
    (let ((new-row (list-copy old-row)))
      (list-set! new-row column-index new-value)
      (list-set! table row-index new-row))
    table))