lbl_8051B5E8:
/* 8051B5E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051B5EC  7C 08 02 A6 */	mflr r0
/* 8051B5F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051B5F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8051B5F8  7C 7F 1B 78 */	mr r31, r3
/* 8051B5FC  38 60 00 08 */	li r3, 8
/* 8051B600  7F E4 FB 78 */	mr r4, r31
/* 8051B604  4B E7 EC 61 */	bl mDemo_Check
/* 8051B608  2C 03 00 00 */	cmpwi r3, 0
/* 8051B60C  40 82 00 24 */	bne lbl_8051B630
/* 8051B610  7F E4 FB 78 */	mr r4, r31
/* 8051B614  38 60 00 07 */	li r3, 7
/* 8051B618  4B E7 EC 4D */	bl mDemo_Check
/* 8051B61C  2C 03 00 00 */	cmpwi r3, 0
/* 8051B620  40 82 00 10 */	bne lbl_8051B630
/* 8051B624  7F E3 FB 78 */	mr r3, r31
/* 8051B628  38 80 00 00 */	li r4, 0
/* 8051B62C  48 00 05 39 */	bl aEBR2_setupAction
lbl_8051B630:
/* 8051B630  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051B634  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8051B638  7C 08 03 A6 */	mtlr r0
/* 8051B63C  38 21 00 10 */	addi r1, r1, 0x10
/* 8051B640  4E 80 00 20 */	blr 
