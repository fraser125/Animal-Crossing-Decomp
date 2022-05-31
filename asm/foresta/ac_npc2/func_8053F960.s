lbl_8053F960:
/* 8053F960  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053F964  7C 08 02 A6 */	mflr r0
/* 8053F968  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053F96C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8053F970  3B E0 00 04 */	li r31, 4
/* 8053F974  93 C1 00 08 */	stw r30, 8(r1)
lbl_8053F978:
/* 8053F978  3B C0 00 00 */	li r30, 0
lbl_8053F97C:
/* 8053F97C  7F E3 FB 78 */	mr r3, r31
/* 8053F980  7F C4 F3 78 */	mr r4, r30
/* 8053F984  38 A0 00 00 */	li r5, 0
/* 8053F988  4B E5 8A B1 */	bl mDemo_Set_OrderValue
/* 8053F98C  3B DE 00 01 */	addi r30, r30, 1
/* 8053F990  2C 1E 00 0A */	cmpwi r30, 0xa
/* 8053F994  41 80 FF E8 */	blt lbl_8053F97C
/* 8053F998  3B FF 00 01 */	addi r31, r31, 1
/* 8053F99C  2C 1F 00 06 */	cmpwi r31, 6
/* 8053F9A0  41 80 FF D8 */	blt lbl_8053F978
/* 8053F9A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053F9A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8053F9AC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8053F9B0  7C 08 03 A6 */	mtlr r0
/* 8053F9B4  38 21 00 10 */	addi r1, r1, 0x10
/* 8053F9B8  4E 80 00 20 */	blr 
