lbl_8056C070:
/* 8056C070  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056C074  7C 08 02 A6 */	mflr r0
/* 8056C078  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056C07C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8056C080  7C 7F 1B 78 */	mr r31, r3
/* 8056C084  38 60 00 08 */	li r3, 8
/* 8056C088  7F E4 FB 78 */	mr r4, r31
/* 8056C08C  4B E2 E1 D9 */	bl mDemo_Check
/* 8056C090  2C 03 00 00 */	cmpwi r3, 0
/* 8056C094  40 82 00 24 */	bne lbl_8056C0B8
/* 8056C098  7F E4 FB 78 */	mr r4, r31
/* 8056C09C  38 60 00 07 */	li r3, 7
/* 8056C0A0  4B E2 E1 C5 */	bl mDemo_Check
/* 8056C0A4  2C 03 00 00 */	cmpwi r3, 0
/* 8056C0A8  40 82 00 10 */	bne lbl_8056C0B8
/* 8056C0AC  7F E3 FB 78 */	mr r3, r31
/* 8056C0B0  38 80 00 01 */	li r4, 1
/* 8056C0B4  48 00 00 4D */	bl aPOL2_setupAction
lbl_8056C0B8:
/* 8056C0B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056C0BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8056C0C0  7C 08 03 A6 */	mtlr r0
/* 8056C0C4  38 21 00 10 */	addi r1, r1, 0x10
/* 8056C0C8  4E 80 00 20 */	blr 
