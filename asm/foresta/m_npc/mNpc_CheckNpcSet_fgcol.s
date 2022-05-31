lbl_803D2CEC:
/* 803D2CEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D2CF0  7C 08 02 A6 */	mflr r0
/* 803D2CF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D2CF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803D2CFC  3B E0 00 00 */	li r31, 0
/* 803D2D00  93 C1 00 08 */	stw r30, 8(r1)
/* 803D2D04  7C 9E 23 78 */	mr r30, r4
/* 803D2D08  4B FD 72 41 */	bl mFI_CheckFGNpcOn
/* 803D2D0C  2C 03 00 00 */	cmpwi r3, 0
/* 803D2D10  41 82 00 10 */	beq lbl_803D2D20
/* 803D2D14  7F C3 F3 78 */	mr r3, r30
/* 803D2D18  4B FB D3 75 */	bl mCoBG_Attr2CheckPlaceNpc
/* 803D2D1C  7C 7F 1B 78 */	mr r31, r3
lbl_803D2D20:
/* 803D2D20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D2D24  7F E3 FB 78 */	mr r3, r31
/* 803D2D28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803D2D2C  83 C1 00 08 */	lwz r30, 8(r1)
/* 803D2D30  7C 08 03 A6 */	mtlr r0
/* 803D2D34  38 21 00 10 */	addi r1, r1, 0x10
/* 803D2D38  4E 80 00 20 */	blr 
