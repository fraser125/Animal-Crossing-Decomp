lbl_804A3B50:
/* 804A3B50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A3B54  7C 08 02 A6 */	mflr r0
/* 804A3B58  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A3B5C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804A3B60  7C 7F 1B 78 */	mr r31, r3
/* 804A3B64  4B F5 30 15 */	bl mRlib_HeightGapCheck_And_ReversePos
/* 804A3B68  2C 03 00 01 */	cmpwi r3, 1
/* 804A3B6C  41 82 00 18 */	beq lbl_804A3B84
/* 804A3B70  A8 1F 01 F8 */	lha r0, 0x1f8(r31)
/* 804A3B74  7F E3 FB 78 */	mr r3, r31
/* 804A3B78  60 00 00 04 */	ori r0, r0, 4
/* 804A3B7C  B0 1F 01 F8 */	sth r0, 0x1f8(r31)
/* 804A3B80  4B ED 08 C1 */	bl Actor_delete
lbl_804A3B84:
/* 804A3B84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A3B88  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804A3B8C  7C 08 03 A6 */	mtlr r0
/* 804A3B90  38 21 00 10 */	addi r1, r1, 0x10
/* 804A3B94  4E 80 00 20 */	blr 
