data segment
   red_ball db 12 dup (0FH)
              db 4 dup (0FH) ,4 dup (4) , 4 dup (0FH)
              db 0fh, 0fh, 0fh, 6 dup (4), 0fh, 0fh, 0fh
              db 0fh, 0fh, 8 dup (4) , 0fh, 0fh
              db 0fh, 10 dup (4), 0fh
              db 0fh, 10 dup (4), 0fh
             db 0fh, 10 dup (4), 0fh 
              db 0fh, 10 dup (4), 0fh
              db 0fh, 10 dup (4), 0fh  
              db 0fh, 0fh, 4, 4,4,4,4,4,4, 4, 0fh, 0fh 
              db 0fh, 0fh, 0fh, 4,4,4,4,4,4, 0fh, 0fh, 0fh
              db 0fh, 0fh, 0fh, 0fh,4,4,4,4, 0fh, 0fh, 0fh, 0fh
              db 12 dup (0FH)
    white_ball db 12 dup (0FH)
              db 4 dup (0FH) ,4 dup (0) , 4 dup (0FH)
              db 0fh, 0fh, 0fh, 6 dup (0), 0fh, 0fh, 0fh
              db 0fh, 0fh, 8 dup (0) , 0fh, 0fh
              db 0fh, 10 dup (0), 0fh
              db 0fh, 10 dup (0), 0fh
             db 0fh, 10 dup (0), 0fh 
              db 0fh, 10 dup (0), 0fh
              db 0fh, 10 dup (0), 0fh  
              db 0fh, 0fh, 8 dup (0), 0fh, 0fh 
              db 0fh, 0fh, 0fh, 6 dup (0), 0fh, 0fh, 0fh
              db 0fh, 0fh, 0fh, 0fh,4 dup (0) , 0fh, 0fh, 0fh, 0fh
              db 12 dup (0FH) 
    blue_ball db 12 dup (0FH)
              db 4 dup (0FH) ,4 dup (1) , 4 dup (0FH)
              db 0fh, 0fh, 0fh, 6 dup (1), 0fh, 0fh, 0fh
              db 0fh, 0fh, 8 dup (1) , 0fh, 0fh
              db 0fh, 10 dup (1), 0fh
              db 0fh, 10 dup (1), 0fh
             db 0fh, 10 dup (1), 0fh 
              db 0fh, 10 dup (1), 0fh
              db 0fh, 10 dup (1), 0fh  
              db 0fh, 0fh, 8 dup (1), 0fh, 0fh 
              db 0fh, 0fh, 0fh, 6 dup (1), 0fh, 0fh, 0fh
              db 0fh, 0fh, 0fh, 0fh,4 dup (1) , 0fh, 0fh, 0fh, 0fh
              db 12 dup (0FH) 
   row db 10
   col db 112
   check_row dw 118
   check_col dw 100
   original_row db 10
   original_col db 112
   state db 8 dup (8)
   game_board db 8 dup(0)  
              db 8 dup(0)
              db 8 dup(0)
              db 8 dup(0)
              db 8 dup(0)
              db 8 dup(0)
              db 8 dup(0)
              db 8 dup(0)
   pressed db ?
   turn db 0

   opening_board1  db "--------------------------------------------------------------------------------"
                db "--------------------------------------------------------------------------------"
                db "||                                                                            ||"
                db "||                                                                            ||"                              
                db "||                                                                            ||"
                db "||                               WELCOME TO 4 IN A ROW!!                      ||"
                db "||                                                                            ||"
                db "||                                                                            ||"
                db "||                                                                            ||"
                db "||                                                                            ||"
                db "||                                                                            ||"
                db "||                   PRESS 1- TO PLAY                                         ||"
                db "||                                                                            ||"
                db "||                   PRESS 2- INFO ABOUT THE GAME                             ||"
                db "||                                                                            ||"
                db "||                                                                            ||"
                db "||                                                                            ||"
                db "||                                                                            ||"
                db "||                                                                            ||"
                db "||                                                                            ||"
                db "||        BY: GABRIEL BOGDANOVSKY                                             ||"
                db "||                                                                            ||"
                db "||                                                                            ||"
                db "--------------------------------------------------------------------------------"
                db "--------------------------------------------------------------------------------$" 

    opening_board2  db "--------------------------------------------------------------------------------"
                db "--------------------------------------------------------------------------------"
                db "||                                                                            ||"
                db "|| Welcome players,                                                           ||"                              
                db "|| At the beginning of the game, you have a blank board with nothing on it    ||"
                db "|| you the players have turns                                                 ||"
                db "|| on the player blue turn he puts a ball of his color on the board           ||"
                db "|| on the player red turn he puts a ball of his color on the board            ||"
                db "|| you have couple of options to win the game :                               ||"
                db "|| 1. you have to put your balls 4 in a row                                   ||"
                db "|| 2. you have to put your balls 4 in a column                                ||"
                db "|| 3. you have to put your balls 4 in a slant                                 ||"
                db "|| at the momnet you have one of those opstions you win                       ||"
                db "||                                                                            ||"
                db "||                                                                            ||"
                db "||                                                                            ||"
                db "||                                                                            ||"
                db "||                                                                            ||"
                db "|| now you know how to play CONGRATULATIONS!                                  ||"
                db "||                                                                            ||"
                db "||                                                                            ||"
                db "||  press esc to go back                                                      ||"
                db "||                                                                            ||"
                db "--------------------------------------------------------------------------------"
                db "--------------------------------------------------------------------------------$" 

winning_board   db "--------------------------------------------------------------------------------"
                db "--------------------------------------------------------------------------------"
                db "||                                                                            ||"
                db "||                                                                            ||"                              
                db "||                                                                            ||"
                db "||                                                                            ||"
                db "||                                                                            ||"
                db "||                              RED WON!!!!!!                                 ||"
                db "||                                                                            ||"
                db "||                                                                            ||"
                db "||                             BLUE IS A LOSER                                ||"
                db "||                                                                            ||"
                db "||                                                                            ||"
                db "||                      play again: press 1                                   ||"
                db "||                      exit: just exit the program                           ||"
                db "||                                                                            ||"
                db "||                                                                            ||"
                db "||                                                                            ||"
                db "||                                                                            ||"
                db "||                                                                            ||"
                db "||                                                                            ||"
                db "||                                                                            ||"
                db "||                                                                            ||"
                db "--------------------------------------------------------------------------------"
                db "--------------------------------------------------------------------------------$" 

winning_board2  db "--------------------------------------------------------------------------------"
                db "--------------------------------------------------------------------------------"
                db "||                                                                            ||"
                db "||                                                                            ||"                              
                db "||                                                                            ||"
                db "||                                                                            ||"
                db "||                                                                            ||"
                db "||                              BLUE WON!!!!!!                                ||"
                db "||                                                                            ||"
                db "||                                                                            ||"
                db "||                             RED IS A LOSER                                 ||"
                db "||                                                                            ||"
                db "||                                                                            ||"
                db "||                      play again: press 1                                   ||"
                db "||                      exit: just exit the program                           ||"
                db "||                                                                            ||"
                db "||                                                                            ||"
                db "||                                                                            ||"
                db "||                                                                            ||"
                db "||                                                                            ||"
                db "||                                                                            ||"
                db "||                                                                            ||"
                db "||                                                                            ||"
                db "--------------------------------------------------------------------------------"
                db "--------------------------------------------------------------------------------$" 
   
ends

stack segment
    dw   128  dup(0)
ends

code segment 
proc init_graphics
    push ax
    mov ax, 13H
    int 10H
    pop ax
    ret
endp init_graphics

proc init_graphics2
    pusha
    mov ah, 00H
    mov al, 03h
    int 10H
    popa
    ret
endp init_graphics2


;************************************************************
;*      draw_ball
;*      input : place to place the ball and pointer to ball picture
;*      output : NONE
;************************************************************

proc draw_ball
    mov bp, sp
    pusha 
    mov bx, [bp+2]
    mov si, [bp + 4]
    mov al, bh
    xor ah, ah
    mov cx, 320
    mul cx
    xor bh, bh
    add ax, bx
    mov di, ax
    mov AX, 0A000H
    mov es, ax 
   
    mov cx, 13
 DRAW:
    push cx
    push di
    
    mov cx, 12
    rep movsb    
    pop di
    add di, 320
    pop cx
    loop DRAW 
    
    popa
    ret 4
endp draw_ball
;***********************************************************
;*            Draw_board  : Draws an empty board
;*            input : NONE
;*            output: NONE
;***********************************************************
proc DRAW_board
    
    pusha
    mov cx, 8    
EACH_ROW:
    push cx
    mov cx, 8
EACH_COL:
    mov bx, offset white_ball
    push bx
    mov ah, row
    mov al, col
    push ax
    call DRAW_BALL
    add col, 12
    loop EACH_COL
    add row, 12
    mov col, 112
    pop cx
    LOOP each_row 
    popa
    ret
endp DRAW_board

;*******************************************************
;*           GET_KEY_PRESSED  : gets the result of a key pressed
;*            input:  NONE
;*            returns: the number pressed - legal numbers 1-8
;***********************************************************

proc get_key_pressed
    pusha 
    mov pressed,-1  ; -1 means incorrect key pressed
    mov ah, 7
    int 21H
    cmp al, '1'
    jb return
    cmp al, '8'
    ja return
    sub al, '0'
    mov pressed, al ; passing on number of key pressed in al
return:
    popa
    ret
endp get_key_pressed 

;*************************************************************************************************************************
;*                    DELAY : sleep for constant period of times
;*                    input: nothing
;*                    returns: NOTHING
;**************************************************************************************************************************
proc DELAY
    pusha
    mov ah, 86H
    mov cx, 3
    mov dx, 0D090H
    int 15H
    popa
    ret
endp DELAY

;*********************************************************************************************
;*         Falling red ball : enables the red ball to fall to its place
;*         Input: where to go and how many squares to "drop"
;*         Return: NOTHING
;**********************************************************************************************

proc falling_red_ball 
    mov bp, sp
    pusha 
    ;getting 2 parameters: how many times and where to start
    mov cx, [bp + 2]
    mov dx,[bp+4]    
REPEAT: 
    mov bx, offset red_ball
    push bx
    push dx
    call draw_ball
    call DELAY
    mov bx, offset white_ball
    push bx
    push dx
    call draw_ball
    add dh,12 
    loop REPEAT 
    ;draw the final ball
    mov bx, offset red_ball
    push bx
    push dx
    call draw_ball
    popa
    ret 4
endp  

;*********************************************************************************************
;*         Falling blue ball : enables the blue ball to fall to its place
;*         Input: where to go and how many squares to "drop"
;*         Return: NOTHING
;**********************************************************************************************
proc falling_blue_ball 
    mov bp, sp
    pusha 
    ;getting 2 parameters: how many times and where to start
    mov cx, [bp + 2]
    mov dx,[bp+4]    
REPEAT1: 
    mov bx, offset blue_ball
    push bx
    push dx
    call draw_ball
    call DELAY
    mov bx, offset white_ball
    push bx
    push dx
    call draw_ball
    add dh,12 
    loop REPEAT1 
    ;draw the final ball
    mov bx, offset blue_ball
    push bx
    push dx
    call draw_ball
    popa
    ret 4
endp 

;*********************************************************************************************
;*         process key pressed - calculates the row in number pressed and how many pieces are ther already
;*         Input: the number pressed
;*         Return: Switches to the next player waiting for turn
;**********************************************************************************************
proc process_key_pressed ; gets pressed from keyboard
    pusha
    mov bl, pressed
    mov al, 12 ; width of each place
    dec bl
    mul bl
    mov ah, original_row
    add al, original_col
    push ax
    mov cl, state[bx]
    dec cl
    mov state[bx], cl
    xor ch, ch
    push cx ; putting how many times to go down
    cmp turn, 0
    jnz show_blue
    call falling_red_ball
    inc turn
    jmp END
 show_blue:
    call falling_blue_ball
    dec turn
 END:
     
    popa
    ret
endp

;************************************************************
;*      endred
;*      input : check the win condition for the all board(red)
;*      output : NONE
;************************************************************



proc endred
    pusha
    mov cx, 8
    mov dx, check_col
CHECK1:
    call win
    call winu
    call winur
    call winul
    sub dx, 13
    loop CHECK1
    
    popa
  ret
endp
 
 
;************************************************************
;*      win
;*      input : check the win condition for a row
;*      output : NONE
;************************************************************

proc win
    pusha
    mov cx, 8  

CHECK2:
    cmp cx, 8
    jz ROUND0
    
    cmp cx, 7
    jz ROUND1
    
    cmp cx, 6
    jz ROUND2
    
    cmp cx, 5
    jz ROUND3
    
    cmp cx, 4
    jz ROUND4
    
    cmp cx, 3
    jz ROUND5
    
    cmp cx, 2
    jz ROUND6
    
    cmp cx, 1
    jz ROUND7
    
    jmp FIRST
    
ROUND0:
    push cx
    mov cx, check_row
    jmp FIRST
    
    
ROUND1:
    push cx
    mov cx, check_row
    add cx, 12
    jmp FIRST    
    
ROUND2:
    push cx
    mov cx, check_row
    add cx, 24
    jmp FIRST

ROUND3:
    push cx
    mov cx, check_row
    add cx, 36
    jmp FIRST
    
ROUND4:
    push cx
    mov cx, check_row
    add cx, 48
    jmp FIRST
    
ROUND5:
    push cx
    mov cx, check_row
    add cx, 60
    jmp FIRST
    
ROUND6:
    push cx
    mov cx, check_row
    add cx, 72
    jmp FIRST        
    
ROUND7:
    push cx
    mov cx, check_row
    add cx, 84
    jmp FIRST
    
FIRST:     
    mov ah, 0dh
    int 10h
    
    cmp al, 4
    jz RED
    cmp al, 1
    jz RED
    jmp NEXT
    
    
    
    
RED:
    mov bx, 4
    cmp al, 1
    jz ROWLB 
    
ROWL:
    add cx, 12  
    mov ah, 0dh
    int 10h
    dec bx
    cmp bx, 0
    jz WIN?
    cmp al, 4
    jz ROWL
    cmp al, 4
    jnz NEXT

WIN?:      
   jmp DONE
   
   
   
ROWLB:
    add cx, 12  
    mov ah, 0dh
    int 10h
    dec bx
    cmp bx, 0
    jz WIN?B
    cmp al, 1
    jz ROWLB
    cmp al, 1
    jnz NEXT
    
WIN?B:
    jmp DONEB
    
NEXT:    
    
    pop cx
    loop CHECK2 
    
    popa
  ret
endp 

;;/////////////////////////////////////////////////////////////////////////////////////////////////////
;;/////////////////////////////////////////////////////////////////////////////////////////////////////
;;/////////////////////////////////////////////////////////////////////////////////////////////////////
;;/////////////////////////////////////////////////////////////////////////////////////////////////////


proc winu
    pusha
    mov cx, 8  

CHECK2U:
    cmp cx, 8
    jz ROUND0U
    
    cmp cx, 7
    jz ROUND1U
    
    cmp cx, 6
    jz ROUND2U
    
    cmp cx, 5
    jz ROUND3U
    
    cmp cx, 4
    jz ROUND4U
    
    cmp cx, 3
    jz ROUND5U
    
    cmp cx, 2
    jz ROUND6U
    
    cmp cx, 1
    jz ROUND7U
    
    jmp FIRSTU
    
ROUND0U:
    push dx
    push cx
    mov cx, check_row
    jmp FIRSTU
    
ROUND1U:
    push dx
    push cx
    mov cx, check_row
    add cx, 12
    jmp FIRSTU    
    
ROUND2U:
    push dx
    push cx
    mov cx, check_row
    add cx, 24
    jmp FIRSTU

ROUND3U:
    push dx
    push cx
    mov cx, check_row
    add cx, 36
    jmp FIRSTU
    
ROUND4U:
    push dx
    push cx
    mov cx, check_row
    add cx, 48
    jmp FIRSTU
    
ROUND5U:
    push dx
    push cx
    mov cx, check_row
    add cx, 60
    jmp FIRSTU
    
ROUND6U:
    push dx
    push cx
    mov cx, check_row
    add cx, 72
    jmp FIRSTU        
    
ROUND7U:
    push dx
    push cx
    mov cx, check_row
    add cx, 84
    jmp FIRSTU
    
FIRSTU:     
    mov ah, 0dh
    int 10h
    cmp al, 4
    jz REDU
    cmp al, 1
    jz REDU
    jmp NEXTU
    
    
REDU:
    mov bx, 4
    cmp al, 1
    jz ROWUB 
    
ROWU:
    sub dx, 12  
    mov ah, 0dh
    int 10h
    dec bx
    cmp bx, 0
    jz WIN?U
    cmp al, 4
    jz ROWU
    cmp al, 4
    jnz NEXTU

   
WIN?U:      
   jmp DONE
   
   
ROWUB:
    sub dx, 12  
    mov ah, 0dh
    int 10h
    dec bx
    cmp bx, 0
    jz WIN?UB
    cmp al, 1
    jz ROWUB
    cmp al, 1
    jnz NEXTU
    
WIN?UB:
    jmp DONEB
    
NEXTU:     
    pop cx
    pop dx
    loop CHECK2U
 
 
    
    popa
  ret
endp

;;//////////////////////////////////////////////////////////////////////// 
;;////////////////////////////////////////////////////////////////////////
;;////////////////////////////////////////////////////////////////////////
;;////////////////////////////////////////////////////////////////////////

proc winur
    pusha
    mov cx, 8  

CHECK2UR:
    cmp cx, 8
    jz ROUND0UR
    
    cmp cx, 7
    jz ROUND1UR
    
    cmp cx, 6
    jz ROUND2UR
    
    cmp cx, 5
    jz ROUND3UR
    
    cmp cx, 4
    jz ROUND4UR
    
    cmp cx, 3
    jz ROUND5UR
    
    cmp cx, 2
    jz ROUND6UR
    
    cmp cx, 1
    jz ROUND7UR
    
    jmp FIRSTUR
    
ROUND0UR:
    push dx
    push cx
    mov cx, check_row
    jmp FIRSTUR
    
    
ROUND1UR:
    push dx
    push cx
    mov cx, check_row
    add cx, 12
    jmp FIRSTUR    
    
ROUND2UR:
    push dx
    push cx
    mov cx, check_row
    add cx, 24
    jmp FIRSTUR

ROUND3UR:
    push dx
    push cx
    mov cx, check_row
    add cx, 36
    jmp FIRSTUR
    
ROUND4UR:
    push dx
    push cx
    mov cx, check_row
    add cx, 48
    jmp FIRSTUR
    
ROUND5UR:
    push dx
    push cx
    mov cx, check_row
    add cx, 60
    jmp FIRSTUR
    
ROUND6UR:
    push dx
    push cx
    mov cx, check_row
    add cx, 72
    jmp FIRSTUR        
    
ROUND7UR:
    push dx
    push cx
    mov cx, check_row
    add cx, 84
    jmp FIRSTUR
    
FIRSTUR:     
    mov ah, 0dh
    int 10h
    
    cmp al, 4
    jz REDUR
    cmp al, 1
    jz REDUR
    jmp NEXTUR
    
    
REDUR:
    mov bx, 4
    cmp al, 1
    jz ROWURB 
    
ROWUR:
    sub dx, 13
    add cx, 12  
    mov ah, 0dh
    int 10h
    dec bx
    cmp bx, 0
    jz WIN?UR
    cmp al, 4
    jz ROWUR
    cmp al, 4
    jnz NEXTUR
   
WIN?UR:      
   jmp DONE
   
ROWURB:
    sub dx, 13
    add cx, 12  
    mov ah, 0dh
    int 10h
    dec bx
    cmp bx, 0
    jz WIN?URB
    cmp al, 1
    jz ROWURB
    cmp al, 1
    jnz NEXTUR
    
WIN?URB:
    jmp DONEB   
   
   
    
NEXTUR:     
    pop cx
    pop dx
    loop CHECK2UR
 
 
    
    popa
  ret
endp



;;//////////////////////////////////////////////////////////////////////// 
;;////////////////////////////////////////////////////////////////////////
;;////////////////////////////////////////////////////////////////////////
;;////////////////////////////////////////////////////////////////////////

proc winul
    pusha
    mov cx, 8  

CHECK2UL:
    cmp cx, 8
    jz ROUND0UL
    
    cmp cx, 7
    jz ROUND1UL
    
    cmp cx, 6
    jz ROUND2UL
    
    cmp cx, 5
    jz ROUND3UL
    
    cmp cx, 4
    jz ROUND4UL
    
    cmp cx, 3
    jz ROUND5UL
    
    cmp cx, 2
    jz ROUND6UL
    
    cmp cx, 1
    jz ROUND7UL
    
    jmp FIRSTUL
    
ROUND0UL:
    push dx
    push cx
    mov cx, check_row
    jmp FIRSTUL
    
    
ROUND1UL:
    push dx
    push cx
    mov cx, check_row
    add cx, 12
    jmp FIRSTUL    
    
ROUND2UL:
    push dx
    push cx
    mov cx, check_row
    add cx, 24
    jmp FIRSTUL

ROUND3UL:
    push dx
    push cx
    mov cx, check_row
    add cx, 36
    jmp FIRSTUL
    
ROUND4UL:
    push dx
    push cx
    mov cx, check_row
    add cx, 48
    jmp FIRSTUL
    
ROUND5UL:
    push dx
    push cx
    mov cx, check_row
    add cx, 60
    jmp FIRSTUL
    
ROUND6UL:
    push dx
    push cx
    mov cx, check_row
    add cx, 72
    jmp FIRSTUL        
    
ROUND7UL:
    push dx
    push cx
    mov cx, check_row
    add cx, 84
    jmp FIRSTUL
    
FIRSTUL:     
    mov ah, 0dh
    int 10h
    
    cmp al, 4
    jz REDUL
    cmp al, 1
    jz REDUL
    jmp NEXTUL
    
    
REDUL:
    mov bx, 4
    cmp al, 1
    jz ROWULB 
    
ROWUL:
    sub dx, 13
    sub cx, 12  
    mov ah, 0dh
    int 10h
    dec bx
    cmp bx, 0
    jz WIN?UL
    cmp al, 4
    jz ROWUL
    cmp al, 4
    jnz NEXTUL

   
WIN?UL:      
   jmp DONE 
   
ROWULB:
    sub dx, 13
    sub cx, 12  
    mov ah, 0dh
    int 10h
    dec bx
    cmp bx, 0
    jz WIN?ULB
    cmp al, 1
    jz ROWULB
    cmp al, 1
    jnz NEXTUL
    
WIN?ULB:
    jmp DONEB
    
NEXTUL:     
    pop cx
    pop dx
    loop CHECK2UL
    
    popa
  ret
endp 

proc first_board 
pusha
WAIT2:
    mov ah, 9h
    mov dx,offset opening_board1
    int 21h
    
    WAIT1:
    ; Wait for key press
    mov ah, 0h
    int 16h 
    
    ;if pressed 1  
     cmp al, 49 
     jz PLAY
     
     ;if pressed 2 
     cmp al, 50
     jz  CONTROLS
     jmp WAIT1
     
    CONTROLS: 
    mov ah, 9h
    mov dx,offset opening_board2
    int 21h 
    
    WAIT3:
    ; Wait for key press
    mov ah, 0h
    int 16h 
    ;if pressed ESC  
     cmp al, 27 
     jz WAIT2
     jmp WAIT3
    
    PLAY:
    popa
    
    ret
endp    

     
start:
  mov ax, data
  mov ds, ax
  call init_graphics2
  call first_board
  call init_graphics
  call draw_board 
  mov al,32
twice: 
again:
  call get_key_pressed
  cmp pressed, -1
  jz again
  call process_key_pressed
  call endred    
  dec al
  jnz twice
  
  
DONE:
    call init_graphics2
    mov ah, 9h
    mov dx,offset winning_board
    int 21h
WAWAIT1:
    ; Wait for key press
    mov ah, 0h
    int 16h 
    
    ;if pressed 1  
     cmp al, 49 
     jz START
     
     jmp WAWAIT1
     mov ax, 4c00h
     int 21h

DONEB:
    call init_graphics2
    mov ah, 9h
    mov dx,offset winning_board2
    int 21h
WAWAIT1B:
    ; Wait for key press
    mov ah, 0h
    int 16h 
    
    ;if pressed 1  
     cmp al, 49 
     jz START
     
     jmp WAWAIT1B
     mov ax, 4c00h
     int 21h   

ends

end start