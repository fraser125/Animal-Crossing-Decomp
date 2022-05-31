lbl_80529C84:
/* 80529C84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80529C88  7C 08 02 A6 */	mflr r0
/* 80529C8C  38 80 00 00 */	li r4, 0
/* 80529C90  90 01 00 14 */	stw r0, 0x14(r1)
/* 80529C94  4B FF FF 25 */	bl aHM0_setupAction
/* 80529C98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80529C9C  7C 08 03 A6 */	mtlr r0
/* 80529CA0  38 21 00 10 */	addi r1, r1, 0x10
/* 80529CA4  4E 80 00 20 */	blr 
