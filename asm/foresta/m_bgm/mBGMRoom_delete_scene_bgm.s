lbl_80378FA0:
/* 80378FA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80378FA4  7C 08 02 A6 */	mflr r0
/* 80378FA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80378FAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80378FB0  7C 7F 1B 78 */	mr r31, r3
/* 80378FB4  88 63 00 00 */	lbz r3, 0(r3)
/* 80378FB8  28 03 00 7F */	cmplwi r3, 0x7f
/* 80378FBC  41 82 00 14 */	beq lbl_80378FD0
/* 80378FC0  38 80 01 68 */	li r4, 0x168
/* 80378FC4  48 00 34 55 */	bl mBGMPsComp_delete_ps_room
/* 80378FC8  38 00 00 7F */	li r0, 0x7f
/* 80378FCC  98 1F 00 00 */	stb r0, 0(r31)
lbl_80378FD0:
/* 80378FD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80378FD4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80378FD8  7C 08 03 A6 */	mtlr r0
/* 80378FDC  38 21 00 10 */	addi r1, r1, 0x10
/* 80378FE0  4E 80 00 20 */	blr 
