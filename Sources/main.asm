            INCLUDE 'derivative.inc'

            XDEF _Startup
            ABSENTRY _Startup

            ORG     Z_RAMStart          ; Insert your data definition here
var_delay DS.B   2

            ORG     ROMStart

_Startup:
            LDHX   #RAMEnd+1        ; initialize the stack pointer
            TXS
            CLRA 
            STA SOPT1
            MOV #$FF,PTEDD
            BSET 2,PTDDD
            BSET 2,PTDD


mainLoop:					; Dincer Aidyn

         	CLRA 
         	STA SCI2BDH 
         	LDA #60 ; Setting baud rate to 9600 bps
         	STA SCI2BDL 
         	
         	MOV #%00000000,SCI2C1 ; 
         	MOV #%00000000,SCI2C3 ; No error flags
         	;MOV #$0C,SCI2C2 ; Enabling transmission and reception
         	BSET SCI1C2_RE,SCI2C2; Enabling data reception
         		 
	 									; This part is for data reception 
delta 		BRCLR SCI1S1_RDRF,SCI2S1,* 			; Wait for data	
	 		LDA	SCI2D	
	 		CBEQA #'›',led_off
	 		CBEQA #'Õ',led_on
	 		BRA delta 
led_on:
		    BSET 2,PTDD
		    BRA delta
led_off:	
			BCLR 2,PTDD  ;~¢@1UT∆È› 
			BRA delta
	     				 		 
            BRA    mainLoop

;************************************************************************SUBROUTINE FOR DELAY GENERATION
delayAx5ms:			 ; 6 cycles the call of subroutine
					PSHH ; save context H
					PSHX ; save context X
					PSHA ; save context A
					LDA var_delay ;  cycles
delay_2:            LDHX #1387H ; 3 cycles 
delay_1:            AIX #-1 ; 2 cycles
			    	CPHX #0 ; 3 cycles  
					BNE delay_1 ; 3 cycles
					DECA ;1 cycle
					CMP #0 ; 2 cycles
					BNE delay_2  ;3 cycles
					PULA ; restore context A
					PULX ; restore context X
					PULH ; restore context H
					RTS ; 5 cycles	
					
            ORG	Vreset	
			DC.W  _Startup			; Reset
