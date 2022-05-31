lbl_8057D468:
/* 8057D468  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057D46C  7C 08 02 A6 */	mflr r0
/* 8057D470  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057D474  7C 60 1B 78 */	mr r0, r3
/* 8057D478  38 60 00 08 */	li r3, 8
/* 8057D47C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057D480  7C 1F 03 78 */	mr r31, r0
/* 8057D484  7F E4 FB 78 */	mr r4, r31
/* 8057D488  4B E1 CD DD */	bl mDemo_Check
/* 8057D48C  2C 03 00 00 */	cmpwi r3, 0
/* 8057D490  40 82 00 3C */	bne lbl_8057D4CC
/* 8057D494  7F E4 FB 78 */	mr r4, r31
/* 8057D498  38 60 00 07 */	li r3, 7
/* 8057D49C  4B E1 CD C9 */	bl mDemo_Check
/* 8057D4A0  2C 03 00 00 */	cmpwi r3, 0
/* 8057D4A4  40 82 00 28 */	bne lbl_8057D4CC
/* 8057D4A8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8057D4AC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8057D4B0  3C 63 00 02 */	addis r3, r3, 2
/* 8057D4B4  80 63 60 CC */	lwz r3, 0x60cc(r3)
/* 8057D4B8  28 03 00 00 */	cmplwi r3, 0
/* 8057D4BC  41 82 00 10 */	beq lbl_8057D4CC
/* 8057D4C0  81 83 00 08 */	lwz r12, 8(r3)
/* 8057D4C4  7D 89 03 A6 */	mtctr r12
/* 8057D4C8  4E 80 04 21 */	bctrl 
lbl_8057D4CC:
/* 8057D4CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057D4D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057D4D4  7C 08 03 A6 */	mtlr r0
/* 8057D4D8  38 21 00 10 */	addi r1, r1, 0x10
/* 8057D4DC  4E 80 00 20 */	blr 
