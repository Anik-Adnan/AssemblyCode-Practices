.model small 
.stack 100h   
.code        
             
main proc      
    mov ah,1   ; input  
    int 21h     
    mov bl,al  
    
    mov ah,2 
    mov dl,0Ah ; line feed or new line, decimal 10, hexa 0Ah 
    int 21h    ; print char finsished in a line , in that position in the next line, if we donot return the carris 
    mov dl,13
    int 21h
    
    
    mov ah,2   
    mov dl,bl  ; output
    int 21h    
                      
    
    exit:      
    mov ah,4ch
    int 21h
    main endp
end main
