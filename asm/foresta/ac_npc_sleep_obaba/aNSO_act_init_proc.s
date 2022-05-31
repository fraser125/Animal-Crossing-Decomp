lbl_8057E6E0:
/* 8057E6E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057E6E4  7C 08 02 A6 */	mflr r0
/* 8057E6E8  38 80 00 00 */	li r4, 0
/* 8057E6EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057E6F0  4B FF FF 5D */	bl aNSO_setupAction
/* 8057E6F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057E6F8  7C 08 03 A6 */	mtlr r0
/* 8057E6FC  38 21 00 10 */	addi r1, r1, 0x10
/* 8057E700  4E 80 00 20 */	blr 
