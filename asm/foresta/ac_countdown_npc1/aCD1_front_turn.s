lbl_80517510:
/* 80517510  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80517514  7C 08 02 A6 */	mflr r0
/* 80517518  38 A0 08 00 */	li r5, 0x800
/* 8051751C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80517520  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80517524  7C 7F 1B 78 */	mr r31, r3
/* 80517528  A8 83 09 24 */	lha r4, 0x924(r3)
/* 8051752C  38 7F 00 DE */	addi r3, r31, 0xde
/* 80517530  4B EA 36 15 */	bl chase_angle
/* 80517534  2C 03 00 01 */	cmpwi r3, 1
/* 80517538  40 82 00 10 */	bne lbl_80517548
/* 8051753C  7F E3 FB 78 */	mr r3, r31
/* 80517540  38 80 00 04 */	li r4, 4
/* 80517544  48 00 02 89 */	bl aCD1_setupAction
lbl_80517548:
/* 80517548  A8 1F 00 DE */	lha r0, 0xde(r31)
/* 8051754C  B0 1F 00 36 */	sth r0, 0x36(r31)
/* 80517550  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80517554  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80517558  7C 08 03 A6 */	mtlr r0
/* 8051755C  38 21 00 10 */	addi r1, r1, 0x10
/* 80517560  4E 80 00 20 */	blr 
