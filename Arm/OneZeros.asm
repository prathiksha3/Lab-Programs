
        AREA ONESZEROS,CODE,READONLY
ENTRY 
START 
        MOV R0,#0
        MOV R1,#0
        MOV R2,#2
        LDR R3,=VALUE

LOOP    MOV R4,#32
        LDR R5,[R3],#4

LOOP1   MOV R5,R5 ,ROR #1
        BHI ONES

ZEROS   ADD R0,R0,#1
        B LOOP2
ONES    ADD R1,R1,#1
LOOP2   SUBS R4,R4,#1
        BNE LOOP1
        SUBS R2,R2,#1
        BNE LOOP
B1        B B1

VALUE  DCD 0XAE45AD22,0XAAAAEEEE
        END
