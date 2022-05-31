lbl_8055B9F0:
/* 8055B9F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055B9F4  7C 08 02 A6 */	mflr r0
/* 8055B9F8  38 A0 00 0D */	li r5, 0xd
/* 8055B9FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055BA00  48 00 33 D1 */	bl aNSC_setupAction
/* 8055BA04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055BA08  7C 08 03 A6 */	mtlr r0
/* 8055BA0C  38 21 00 10 */	addi r1, r1, 0x10
/* 8055BA10  4E 80 00 20 */	blr 
