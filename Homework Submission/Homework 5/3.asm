
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.MODEL SMALL
.STACK 100H


.DATA
  PROMPT DB 'Enter an integer : $'
  MSG DB    'The integer is : $'


.CODE
MAIN PROC
MOV AX, @DATA 
MOV DS, AX
LEA DX, PROMPT 
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
LEA DX, MSG 
MOV AH, 9
INT 21H
CMP BL, 30H 
JL @NEGATIVE 
JZ @ZERO ; 
JG @POSITIVE 




@NEGATIVE:
MOV DL, 'N'
JMP @DISPLAY 

 
@ZERO:
MOV DL, 'Z'
JMP @DISPLAY 
@POSITIVE: 
MOV DL, 'P'
JMP @DISPLAY
 
@DISPLAY: 
MOV AH, 2 
INT 21H
MOV AH, 4CH 
INT 21H


MAIN ENDP
END MAIN

