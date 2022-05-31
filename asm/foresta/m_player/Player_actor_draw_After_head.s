lbl_804E4064:
/* 804E4064  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E4068  7C 08 02 A6 */	mflr r0
/* 804E406C  38 63 10 2C */	addi r3, r3, 0x102c
/* 804E4070  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E4074  4B F2 94 49 */	bl Matrix_Position_Zero
/* 804E4078  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E407C  7C 08 03 A6 */	mtlr r0
/* 804E4080  38 21 00 10 */	addi r1, r1, 0x10
/* 804E4084  4E 80 00 20 */	blr 
