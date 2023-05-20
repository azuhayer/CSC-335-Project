; CSC 33500 [Spring 2023]
; Final Project
; Group Members: Zuhayer Alvi (Section M)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; ---------------------- ;
;      'make-table'      ;
; ---------------------- ;
; Precondition: No explicit precondition needed to create a table. 

; Postcondition: Creating a new table will return an empty list: ().


; ---------------------- ;
;       'add-row'        ;
; ---------------------- ;
; Precondition: The function will take a table and an row as parameters. Both table and row
; dont necessarily have to be empty. 

; Postcondition: Will insert a new row to the table. 


; ---------------------- ;
;       'get-rows'       ;
; ---------------------- ;
; Precondition: The function will take a nonempty table as a parameter. 

; Postcondition: Will return the number of rows within a table. 


; ---------------------- ;
;       'num-rows'       ;
; ---------------------- ;
; Precondition: The function will take a nonempty table as a parameter. 

; Postcondition: Will return the number of column within a table. 


; ---------------------- ;
;       'get-row'        ;
; ---------------------- ;
; Precondition: The function will take a nonempty table and an index as parameters. 

; Postcondition: Will return the row of the table given the index for it. 


; ---------------------- ;
;      'add-column'      ;
; ---------------------- ;
; Precondition: The function will take a table and column as parameters. 

; Postcondition: Will return a table with the added column into it. 


; ---------------------- ;
;      'get-column'      ;
; ---------------------- ;
; Precondition: The function will take a table and an index as parameters. 
 
; Postcondition: Will return a specific column of the table given an index.  


; ---------------------- ;
;     'update-value'     ;
; ---------------------- ;
; Precondition: The function will take a nonempty table, a row index, a column index and 
; a new-value as parameters.  

; Postcondition: Will return a table with the updated value at a specific row index and 
; column index based on new-value. 