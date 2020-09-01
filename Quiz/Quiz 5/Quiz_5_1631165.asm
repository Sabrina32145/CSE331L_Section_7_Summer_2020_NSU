
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.MODEL SMALL
.STACK 100H

.DATA
PROMPT_1 DB 'Enter a number less than 9:$'
PROMPT_2 DB 'The enetered number is: $'

.CODE
  
  MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    LEA DX, PROMPT_1
    
    MOV AH, 9
    INT 21H 
    
    MOV AH, 1
    INT 21H 
    
    MOV BL, AL
    MOV AH, 2 
    
    MOV DL, 0DH
    INT 21H 
    
    MOV DL, 0AH
    INT 21H
    
    LEA DX, PROMPT_2
    MOV AH, 9
    INT 21H
    
    MAIN ENDP
  END MAIN; add your code here

ret




