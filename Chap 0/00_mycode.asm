.model small ; large ,small,extra large model
.stack 100h  ; 256 hexDEcimal 100h 
.code        ; code segment or text segment
             
main proc      ; main procedure takes all inputs,outputs,and functions
    mov ah,1   ; ah=1 single char input ,ah=2 single char output, ah=9 simple string function
    int 21h    ; interrupt 21h,33decimal, call previous function for execution
    mov bl,al  ; input data assign in al register by default, for this
               ; another input data will be replaced,we assign al data to bl register
    
    mov ah,2   ; ah=2 single char output function
    mov dl,bl  ; output  , al data assign al to bl to dl,and call output; input by default al and ouptut dl register
    int 21h    ; interrupt for  output execution
                      
    
    exit:      ;simply  return zero
    mov ah,4ch
    int 21h
    main endp
end main
