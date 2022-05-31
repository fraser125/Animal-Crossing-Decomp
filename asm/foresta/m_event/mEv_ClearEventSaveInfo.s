lbl_8039A8EC:
/* 8039A8EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8039A8F0  7C 08 02 A6 */	mflr r0
/* 8039A8F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8039A8F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8039A8FC  7C 7F 1B 78 */	mr r31, r3
/* 8039A900  4B FF FF 79 */	bl func_8039A878
/* 8039A904  38 7F 00 54 */	addi r3, r31, 0x54
/* 8039A908  4B FF FF B9 */	bl mEv_ClearEventKabuPeddler
/* 8039A90C  38 00 00 00 */	li r0, 0
/* 8039A910  90 1F 00 B8 */	stw r0, 0xb8(r31)
/* 8039A914  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8039A918  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8039A91C  7C 08 03 A6 */	mtlr r0
/* 8039A920  38 21 00 10 */	addi r1, r1, 0x10
/* 8039A924  4E 80 00 20 */	blr 
