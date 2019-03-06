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

	1001	flag

FLAG :	000		CF
		001		OF
		010		MSB
		011		LSB
		100		<
		101		=
		110		>
		111		Zero
		
		
Command

hex	Binary			Name	Info				Comment
00	0000 0000		NOP		
01	0000 0001		ADD		R1 + R2 = R1
02	0000 0010		ADD		R1 + R2 = R3
03	0000 0011		ADD		R1 + Z	= R1
04	0000 0100		ADD		R1 + Z	= R2
05	0000 0101		SUB		R1 - R2 = R1
06	0000 0110		SUB		R1 - R2 = R3
07	0000 0111		SUB		R1 - Z	= R1
08	0000 1000		SUB		R1 - Z	= R2
09	0000 1001		ADC		R1 + R2 + CF = R1 
0a	0000 1010		ADC		R1 + R2 + CF = R3
0b	0000 1011		ADC		R1 + Z	+ CF = R1
0c	0000 1100		ADC		R1 + Z	+ CF = R2
0d	0000 1101		SBB		R1 - R2 - CF = R1
0e	0000 1110		SBB		R1 - R2 - CF = R3
0f	0000 1111		SBB		R1 - Z	- CF = R1
10	0001 0000		SBB		R1 - Z	- CF = R2
11	0001 0001		INC		R1 + 1	= R1
12	0001 0010		INC		R1 + 1	= R2
13	0001 0011		DEC		R1 - 1	= R1
14	0001 0100		DEC		R1 - 1	= R2
15	0001 0101		AND		R1 + R2 = R1
16	0001 0110		AND		R1 + R2 = R3
17	0001 0111		AND		R1 + Z	= R1
18	0001 1000		AND		R1 + Z	= R2
19	0001 1001		OR		R1 + R2 = R1
1a	0001 1010		OR		R1 + R2 = R3
1b	0001 1011		OR		R1 + Z	= R1
1c	0001 1100		OR		R1 + Z	= R2
1d	0001 1101		XOR		R1 + R2 = R1
1e	0001 1110		XOR		R1 + R2 = R3
1f	0001 1111		XOR		R1 + Z	= R1
20	0010 0000		XOR		R1 + Z	= R2
21	0010 0001		NOT		R1 = R1
22	0010 0010		NOT		R1 = R2
23	0010 0011		SHL		R1 + R2 = R1
24	0010 0100		SHL		R1 + R2 = R3
25	0010 0101		SHL		R1 + Z	= R1
26	0010 0110		SHL		R1 + Z	= R2
27	0010 0111		SHR		R1 + R2 = R1
28	0010 1000		SHR		R1 + R2 = R3
29	0010 1001		SHR		R1 + Z	= R1
2a	0010 1010		SHR		R1 + Z	= R2
2b	0010 1011		CMP		R1 , R2
2c	0010 1100		CMP		R1 , Z
2d	0010 1101		CMPV	R1 , R2
2e	0010 1110		CMPV	R1 , Z
2f	0010 1111		PUSH	R1					
30	0011 0000		PUSH	Z					 
31	0011 0001		POP		R3					 
32	0011 0010		SAV		R1 , R2	, R3		;wert(R3) , adresse(R1/R2)			R1 sollte s2 sein
33	0011 0011		SAV		R1 , R2 , Z			;wert(Z)  , adresse(R1/R2)			R1 sollte s2 sein
34	0011 0100		SAV		R1 , Z	, R2		;wert(R2) , adresse(R1/Z )			R1 sollte s2 sein
35	0011 0101		LOD		R1 , R2	, R3		;speicherort(R3) , adresse(R1/R2)	R1 sollte s2 sein
36	0011 0110		LOD		R1 , Z	, R2		;speicherort(R2) , adresse(R1/Z )	R1 sollte s2 sein
37	0011 0111		ROM		R1 , R2				;speicherort(R1) , adresse(R2)
38	0011 1000		ROM		R1 , Z				;speicherort(R1) , adresse(Z)
39	0011 1001		MOV		R1 , R2				;nach(R1) , wert(R2)
3a	0011 1010		MOV		R1 , Z				;nach(R1) , wert(Z)
3b	0011 1011		OUT		R1					
3c	0011 1100		OUT		Z
3d	0011 1101		IN		R1
3e	0011 1110		CALL	<a>					;a=16bit direkt
3f	0011 1111		RET
40	0100 0000		JMP		<a>					;a=16bit 			in jedem fall -> absoluter jmp
41	0100 0001		
42	0100 0010		
43	0100 0011		
44	0100 0100		
45	0100 0101		
46	0100 0110		
47	0100 0111		
48	0100 1000		
49	0100 1001		
4a	0100 1010		
4b	0100 1011		
4c	0100 1100		
4d	0100 1101		
4e	0100 1110		
4f	0100 1111		
50	0101 0000		
51	0101 0001		
52	0101 0010		



JNE		<a>					;a=16bit			!=
JE		<a>					;a=16bit			=
JB		<a>					;a=16bit			<
JA		<a>					;a=16bit			>
JZ		<a>					;a=16bit			= 0
JNZ		<a>					;a=16bit			!= 0
RJMP	<a>					;a=16bit			in jedem fall -> relativer jmp
RJNE	<a>					;a=16bit			!=
RJE		<a>					;a=16bit			=
RJB		<a>					;a=16bit			<
RJA		<a>					;a=16bit			>
RJZ		<a>					;a=16bit			= 0
RJNZ	<a>					;a=16bit			!= 0
RJCX	Z, <a>				;a=12bit			Z (an der R1 stelle) XNOR flag (ersten 4 bit)
RJCA	Z, <a>				;a=12bit			Z (an der R1 stelle) AND flag (ersten 4 bit)
IJMP	R1					;					in jedem fall -> nutze reg wert als relative addresse
IJCX	R1, Z				;					R1 beinhaltet relative addresse, Z (an der R2 stelle) XNOR flag (ersten 4 bit)
IJCA	R1, Z				;					R1 beinhaltet relative addresse, Z (an der R2 stelle) AND flag (ersten 4 bit)






fd	1111 1101		register wert in steuerwerk als ip speichern
fe	1111 1110		befehls ende				;der nächste befehl wird geladen -> nur für das steuerwerk
ff	1111 1111		END							;stop die cpu





Code combinations
	Command		R1	R2
	8			4	4				= 16 Bit
	
	Command		R1	R2		-	R3
	8			4	4		4	4	= 24 Bit
	
	Command		-	R1		Number
	8			4	4		8		= 24 Bit

	Command		R1	R2		Number
	8			4	4		8		= 24 Bit

	

	
