lbl_8055E558:
/* 8055E558  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055E55C  7C 08 02 A6 */	mflr r0
/* 8055E560  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055E564  88 03 09 A2 */	lbz r0, 0x9a2(r3)
/* 8055E568  98 03 09 A3 */	stb r0, 0x9a3(r3)
/* 8055E56C  4B FF C1 91 */	bl aNSC_set_stop_spd
/* 8055E570  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055E574  7C 08 03 A6 */	mtlr r0
/* 8055E578  38 21 00 10 */	addi r1, r1, 0x10
/* 8055E57C  4E 80 00 20 */	blr 
