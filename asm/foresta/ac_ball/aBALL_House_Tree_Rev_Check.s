lbl_80412CC8:
/* 80412CC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80412CCC  7C 08 02 A6 */	mflr r0
/* 80412CD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80412CD4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80412CD8  7C 7F 1B 78 */	mr r31, r3
/* 80412CDC  4B FE 3E 9D */	bl mRlib_HeightGapCheck_And_ReversePos
/* 80412CE0  2C 03 00 01 */	cmpwi r3, 1
/* 80412CE4  41 82 00 18 */	beq lbl_80412CFC
/* 80412CE8  A8 1F 02 08 */	lha r0, 0x208(r31)
/* 80412CEC  7F E3 FB 78 */	mr r3, r31
/* 80412CF0  60 00 00 01 */	ori r0, r0, 1
/* 80412CF4  B0 1F 02 08 */	sth r0, 0x208(r31)
/* 80412CF8  4B F6 17 49 */	bl Actor_delete
lbl_80412CFC:
/* 80412CFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80412D00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80412D04  7C 08 03 A6 */	mtlr r0
/* 80412D08  38 21 00 10 */	addi r1, r1, 0x10
/* 80412D0C  4E 80 00 20 */	blr 
