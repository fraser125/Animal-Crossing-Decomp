lbl_804AA3E0:
/* 804AA3E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804AA3E4  7C 08 02 A6 */	mflr r0
/* 804AA3E8  38 80 00 01 */	li r4, 1
/* 804AA3EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804AA3F0  48 00 00 E9 */	bl aTUT_setupAction
/* 804AA3F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804AA3F8  7C 08 03 A6 */	mtlr r0
/* 804AA3FC  38 21 00 10 */	addi r1, r1, 0x10
/* 804AA400  4E 80 00 20 */	blr 
