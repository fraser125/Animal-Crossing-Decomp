lbl_80545FC8:
/* 80545FC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80545FCC  7C 08 02 A6 */	mflr r0
/* 80545FD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80545FD4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80545FD8  93 C1 00 08 */	stw r30, 8(r1)
/* 80545FDC  7C 7E 1B 78 */	mr r30, r3
/* 80545FE0  4B E7 96 C9 */	bl func_803BF6A8
/* 80545FE4  38 BE 09 C8 */	addi r5, r30, 0x9c8
/* 80545FE8  7C 7F 1B 78 */	mr r31, r3
/* 80545FEC  38 80 00 06 */	li r4, 6
/* 80545FF0  38 C0 00 08 */	li r6, 8
/* 80545FF4  4B E7 9C 61 */	bl mMsg_Set_free_str
/* 80545FF8  7F E3 FB 78 */	mr r3, r31
/* 80545FFC  38 BE 09 D0 */	addi r5, r30, 0x9d0
/* 80546000  38 80 00 07 */	li r4, 7
/* 80546004  38 C0 00 08 */	li r6, 8
/* 80546008  4B E7 9C 4D */	bl mMsg_Set_free_str
/* 8054600C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80546010  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80546014  83 C1 00 08 */	lwz r30, 8(r1)
/* 80546018  7C 08 03 A6 */	mtlr r0
/* 8054601C  38 21 00 10 */	addi r1, r1, 0x10
/* 80546020  4E 80 00 20 */	blr 
