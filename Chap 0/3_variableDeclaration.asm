.model small 
.stack 100h  
.data
a db 5 ; variable a ,define in dyte(db)== 5
b db ? ; variable b value unknown ,user input value
.code        
             
main proc     
    ;need to connetion bewteen data segment to code segment
    mov ax,@data; by default data wiil go ax register
    mov ds,ax
    
    
    mov ah,1   ; input  
    int 21h     
    mov b,al   ;variable b take input
    
    mov ah,2   ; output newLine
    mov dl,0Ah ; new line
    int 21h    
    mov dl,13  ; caries return
    int 21h
    
    
    mov ah,2   
    mov dl,a0  ; output a==5==ascii value
    add dl,48 ; to print 5 need to add 48 
    int 21h   
            
    mov ah,2   ; output newLine
    mov dl,0Ah ; new line
    int 21h    
    mov dl,13  ; caries return
    int 21h
    
    
    mov ah,2
    mov dl,b  ; output b
    int 21h
     
                      
    
    exit:      
    mov ah,4ch
    int 21h
    main endp
end main
