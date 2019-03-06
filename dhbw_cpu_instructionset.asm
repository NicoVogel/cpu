DHBW cpu

Specifications:
	- ALU opperations only changes affected flag bits
	- left shift does set the CF and OF in case of 

Register
	0001	ax
	0010	bx
	0011	cx
	0100	dx
	0101	ex
	0110	fx
	0111	gx
	1000	hx

	1001	dph (data pointer high)			; used for the RAM high adress of a sub rutine RAM call
	1010	spl (stack pointer low)			; used for stack operations like push and pop
	1011	sph (stack pointer high)		; used for stack operations like push and pop
	1100	ipl	(instruction pointer low)	; used to read the code
	1101	iph (instruction pointer high)	; used to read the code
	1111	flag

		Bit ID
FLAG :	000	CF		; Carry flag
		001	OF		; Overflow flag
		010	MS		; Most segnificant bit
		011	LS		; Lest segnificant bit
		100	Z		; Zero
		101 IT		; interrupt
		110
		111
			(=) 	; A equels B if Z == 1 and CF == 0 
			(>) 	; A grather B if Z == 0 and CF == 0
			(<) 	; A less B if Z == 0 and CF == 1
		
Command

hex	Bin 		type	Name	Info				Comment
00	00000000	CC10    NOP     
01	00000001	CC1     ADD     R1 , R2             ; R1 = R1 + R2
02	00000010	CC2     ADD     R1 , R2 , R3        ; R3 = R1 + R2
03	00000011	CC3     ADD     R1 , N              ; R1 = R1 + N
04	00000100	CC4     ADD     R1 , N , R2       	; R2 = R1 + N
05	00000101	CC1     SUB     R1 , R2             ; R1 = R1 - R2
06	00000110	CC2     SUB     R1 , R2 , R3        ; R3 = R1 - R2
07	00000111	CC3     SUB     R1 , N              ; R1 = R1 - N
08	00001000	CC4     SUB     R1 , N , R2       	; R2 = R1 - N
09	00001001	CC1     ADC     R1 , R2             ; R1 = R1 + R2 + CF
0A	00001010	CC2     ADC     R1 , R2 , R3        ; R3 = R1 + R2 + CF
0B	00001011	CC3     ADC     R1 , N              ; R1 = R1 + N + CF
0C	00001100	CC4     ADC     R1 , N , R2       	; R2 = R1 + N + CF
0D	00001101	CC1     SBB     R1 , R2             ; R1 = R1 - R2 - CF
0E	00001110	CC2     SBB     R1 , R2 , R3        ; R3 = R1 - R2 - CF
0F	00001111	CC3     SBB     R1 , N              ; R1 = R1 - N - CF
10	00010000	CC4     SBB     R1 , N , R2      	 ; R2 = R1 - N - CF
11	00010001	CC5     INC     R1                  ; R1 = R1 + 1
12	00010010	CC1     INC     R1 , R2             ; R2 = R1 + 1
13	00010011	CC5     DEC     R1                  ; R1 = R1 - 1
14	00010100	CC1     DEC     R1 , R2             ; R2 = R1 - 1
15	00010101	CC1     AND     R1 , R2             ; R1 = R1 & R2
16	00010110	CC2     AND     R1 , R2 , R3        ; R3 = R1 & R2
17	00010111	CC3     AND     R1 , N              ; R1 = R1 & N
18	00011000	CC4     AND     R1 , N , R2       	; R2 = R1 & N
19	00011001	CC1     OR      R1 , R2             ; R1 = R1 | R2
1A	00011010	CC2     OR      R1 , R2 , R3        ; R3 = R1 | R2
1B	00011011	CC3     OR      R1 , N              ; R1 = R1 | N
1C	00011100	CC4     OR      R1 , N , R2       	; R2 = R1 | N
1D	00011101	CC1     XOR     R1 , R2             ; R1 = R1 ^ R2
1E	00011110	CC2     XOR     R1 , R2 , R3        ; R3 = R1 ^ R2
1F	00011111	CC3     XOR     R1 , N              ; R1 = R1 ^ N
20	00100000	CC4     XOR     R1 , N , R2       	; R2 = R1 ^ N
21	00100001	CC5     NOT     R1                  ; R1 = !R1
22	00100010	CC1     NOT     R1 , R2             ; R2 = !R1
23	00100011	CC1     SHL     R1 , R2             ; R1 = R1 << R2
24	00100100	CC2     SHL     R1 , R2 , R3        ; R3 = R1 << R2
25	00100101	CC5     SHL     R1                  ; R1 = R1 << 1
26	00100110	CC3     SHL     R1 , N              ; R1 = R1 << N
27	00100111	CC4     SHL     R1 , N , R2       	; R2 = R1 << N
28	00101000	CC1     SHR     R1 , R2             ; R1 = R1 >> R2
29	00101001	CC2     SHR     R1 , R2 , R3        ; R3 = R1 >> R2
2A	00101010	CC5     SHR     R1                  ; R1 = R1 >> 1
2B	00101011	CC3     SHR     R1 , N              ; R1 = R1 >> N
2C	00101100	CC4     SHR     R1 , N , R2       	; R2 = R1 >> N
2D	00101101	CC1     CMP     R1 , R2             ; R1 == R2
2E	00101110	CC3     CMP     R1 , N              ; R1 == N
2F	00101111	CC1     CMS     R1 , R2             ; R1 == R2 (signed)
30	00110000	CC3     CMS     R1 , N              ; R1 == N (signed)
31	00110001	CC5     PUH     R1                  ; RAM address(sph/spl) , value(R1) 
32	00110010	CC6     PUH     N                   ; RAM address(sph/spl) , value(N) 
33	00110011	CC5     POP     R1                  ; destination(R1)                    
34	00110100	CC1     SAV     R1 , R2             ; RAM address(dph/R2) , value(R1)           
35	00110101	CC3     SAV     R1 , N              ; RAM address(dph/N) , value(R1)
36	00110110	CC3     SAV     N , R1              ; RAM address(dph/R1) , value(N)
37	00110111	CC7     SAV     N , N               ; RAM address(dph/N) , value(N)     
38	00111000	CC2     SAV     R1 , R2 , R3        ; RAM address(R2/R3) , value(R1)
39	00111001	CC4     SAV     N , R2 , R3         ; RAM address(R2/R3) , value(N)
3A	00111010	CC1     LOD     R1 , R2             ; destination(R1) , RAM address(dph/R2)
3B	00111011	CC3     LOD     R1 , N              ; destination(R1) , RAM address(dph/N)
3C	00111100	CC2     LOD     R1 , R2, R3         ; destination(R1) , RAM address(R2/R3)
3D	00111101	CC1     ROM     R1 , R2             ; destination(R1) , address(R2)
3E	00111110	CC3     ROM     R1 , N              ; destination(R1) , address(N)
3F	00111111	CC1     MOV     R1 , R2             ; to(R1) , from(R2)
40	01000000	CC3     MOV     R1 , N              ; to(R1) , value(N)
41	01000001	CC5     OUT     R1                  ; output(R1)
42	01000010	CC6     OUT     N                   ; output(N)
43	01000011	CC5     IN      R1                  ; save input in R1
44	01000100	CC8     CAL     N                   ; make call at N (16 bit)
45	01000101	CC1     CAL     R1 , R2             ; make call at R1/R2
46	01000110	CC10    RET                         ; return to calling line + 1
47	01000111	CC8     JMP     N                   ; jump to N (16 bit)
48	01001000	CC1     JMP     R1 , R2             ; jump to R1/R2
49	01001001	CC9     JMC     <compare> , N       ; jump if one of the compare symboles is coorect, allowed combinations: <, >, =, !=, <>         to N
4A	01001010	CC4     JMC     <compare> , R1 , R2 ; jump if one of the compare symboles is coorect, allowed combinations: <, >, =, !=, <>         to R1/R2
4B	01001011	CC9     JMC     '<compare> , N      ; jump if all of the compare symboles is coorect, allowed combinations: '<, '>, '=, '!=, '<>    to N
4C	01001100	CC4     JMC     '<compare> , R1 , R2; jump if all of the compare symboles is coorect, allowed combinations: '<, '>, '=, '!=, '<>    to R1/R2
4D	01001101	CC9     JMF     <flags> , N         ; jump if one of the flag symboles is correct, allowed symbols: CF, OF, MS, LS, Z, IT           to N
4E	01001110	CC4     JMF     <flags> , R1 , R2   ; jump if one of the flag symboles is correct, allowed symbols: CF, OF, MS, LS, Z, IT           to R1/R2
4F	01001111	CC9     JMF     '<flags> , N        ; jump if all of the flag symboles is correct, allowed symbols: ' + (CF, OF, MS, LS, Z, IT)     to N
50	01010000	CC4     JMF     '<flags> , R1 , R2  ; jump if all of the flag symboles is correct, allowed symbols: ' + (CF, OF, MS, LS, Z, IT)     to R1/R2
51	01010001	CC10    WAT                         ; wait until an interrupt is there 

fe	11111110	CC10	befehls ende				;der nächste befehl wird geladen -> nur für das steuerwerk
ff	11111111	CC10	END							;stop die cpu


Code combinations
	(CC1) = 16 Bit
	Command		R1	R2
	8			4	4				
	
	(CC2) = 24 Bit
	Command		R1	R2		-	R3
	8			4	4		4	4	
	
	(CC3) = 24 Bit
	Command		-	R1		Number
	8			4	4		8		

	(CC4) = 24 Bit
	Command		R1	R2		Number
	8			4	4		8		

	(CC5) = 16 Bit
	Command		-	R1
	8			4	4

	(CC6) = 16 Bit
	Command		Number
	8			8					

	(CC7) = 24 Bit
	Command		Number	Number
	8			8		8			

	(CC8) = 24 Bit
	Command		Number
	8			16

	(CC9) = 32 Bit
	Command		Number	Number
	8			8		16

	(CC10) = 8 Bit
	Command
	8
	

	
