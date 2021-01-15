		GLOBAL	Reset_Handler
		AREA	MyCode,CODE,READONLY
Reset_Handler
		;Task 1
		LDR R0,=0x40000000		;Put memory location into R1 immediately. Nothing to do with addressing
		LDR R1,=0xEF			;Put the 32 bit constant immediately into a register
								; LDR and MOV are similar. LDR is the pseudo code used for larger bits
		STR R1,[R0]				;Store the 32 bit constant into the address. The bracket will treat R0 as an address instead of memory location
		
		LDR R2,=0xAB			;Put the 32 bit constant immediately into a register
		STR R2, [R0,#4]			;Store the 32 bit constant into the address. The bracket will treat R0 as an address instead of memory location
								;Instead of using a new register to put in th new memory location, just incriment by 4
		
		;Task 2
		LDR R3,=0x33221100		;Put the 32 bit constant immediately into a register
		STR R3,[R0,#8]			;Store the 32 bit constant into the address. The bracket will treat R0 as an address instead of memory location
								;Instead of using a new register to put in th new memory location, just incriment by 8
								; Store the contents of R3 into the address of R) offset
		
		LDR R4,=0xFFEEDDCC		;Put the 32 bit constant immediately into a register
		STR R4,[R0,#12]			;Can also be put as 0xC (hex for 12). Ask if the compiler can read it.
		
		;Task 3
		
		LDR R5,ONE				;Load register R5 with the contents of ONE
		LDR R6,TWO				;Load register R5 with the contents of TWO
		
		STR R5,[R0,#16]			;Store R5's contents in 4 offset address of R0
		STR R6,[R0,#20]			;Store R6's contents in 5 offset address of R0
		
stop	B	stop				;Label this loop stop so it branches back to itself to holf
ONE		DCD 0x12345678			;Creating contents labeled ONE
TWO		DCD 0xFEDCBA98			;Creating contents labeled TWO
		END