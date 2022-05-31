lbl_80474CD4:
/* 80474CD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80474CD8  7C 08 02 A6 */	mflr r0
/* 80474CDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80474CE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80474CE4  7C 7F 1B 78 */	mr r31, r3
/* 80474CE8  38 60 00 09 */	li r3, 9
/* 80474CEC  7F E4 FB 78 */	mr r4, r31
/* 80474CF0  4B F2 55 75 */	bl mDemo_Check
/* 80474CF4  2C 03 00 00 */	cmpwi r3, 0
/* 80474CF8  40 82 00 0C */	bne lbl_80474D04
/* 80474CFC  38 00 00 00 */	li r0, 0
/* 80474D00  B0 1F 03 EE */	sth r0, 0x3ee(r31)
lbl_80474D04:
/* 80474D04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80474D08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80474D0C  7C 08 03 A6 */	mtlr r0
/* 80474D10  38 21 00 10 */	addi r1, r1, 0x10
/* 80474D14  4E 80 00 20 */	blr 
