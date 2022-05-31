lbl_8056DE68:
/* 8056DE68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056DE6C  7C 08 02 A6 */	mflr r0
/* 8056DE70  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056DE74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8056DE78  7C 9F 23 78 */	mr r31, r4
/* 8056DE7C  93 C1 00 08 */	stw r30, 8(r1)
/* 8056DE80  7C 7E 1B 78 */	mr r30, r3
/* 8056DE84  88 03 09 9F */	lbz r0, 0x99f(r3)
/* 8056DE88  28 00 00 01 */	cmplwi r0, 1
/* 8056DE8C  40 82 00 34 */	bne lbl_8056DEC0
/* 8056DE90  7F C4 F3 78 */	mr r4, r30
/* 8056DE94  38 60 00 07 */	li r3, 7
/* 8056DE98  4B E2 C3 CD */	bl mDemo_Check
/* 8056DE9C  2C 03 00 01 */	cmpwi r3, 1
/* 8056DEA0  40 82 00 20 */	bne lbl_8056DEC0
/* 8056DEA4  4B E2 C5 6D */	bl mDemo_Check_ListenAble
/* 8056DEA8  2C 03 00 00 */	cmpwi r3, 0
/* 8056DEAC  40 82 00 14 */	bne lbl_8056DEC0
/* 8056DEB0  7F C3 F3 78 */	mr r3, r30
/* 8056DEB4  7F E4 FB 78 */	mr r4, r31
/* 8056DEB8  38 A0 00 09 */	li r5, 9
/* 8056DEBC  48 00 0E 15 */	bl aPMAN_setupAction
lbl_8056DEC0:
/* 8056DEC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056DEC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8056DEC8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8056DECC  7C 08 03 A6 */	mtlr r0
/* 8056DED0  38 21 00 10 */	addi r1, r1, 0x10
/* 8056DED4  4E 80 00 20 */	blr 
