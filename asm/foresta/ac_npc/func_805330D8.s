lbl_805330D8:
/* 805330D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805330DC  7C 08 02 A6 */	mflr r0
/* 805330E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805330E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805330E8  3B E0 00 04 */	li r31, 4
/* 805330EC  93 C1 00 08 */	stw r30, 8(r1)
lbl_805330F0:
/* 805330F0  3B C0 00 00 */	li r30, 0
lbl_805330F4:
/* 805330F4  7F E3 FB 78 */	mr r3, r31
/* 805330F8  7F C4 F3 78 */	mr r4, r30
/* 805330FC  38 A0 00 00 */	li r5, 0
/* 80533100  4B E6 53 39 */	bl mDemo_Set_OrderValue
/* 80533104  3B DE 00 01 */	addi r30, r30, 1
/* 80533108  2C 1E 00 0A */	cmpwi r30, 0xa
/* 8053310C  41 80 FF E8 */	blt lbl_805330F4
/* 80533110  3B FF 00 01 */	addi r31, r31, 1
/* 80533114  2C 1F 00 06 */	cmpwi r31, 6
/* 80533118  41 80 FF D8 */	blt lbl_805330F0
/* 8053311C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80533120  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80533124  83 C1 00 08 */	lwz r30, 8(r1)
/* 80533128  7C 08 03 A6 */	mtlr r0
/* 8053312C  38 21 00 10 */	addi r1, r1, 0x10
/* 80533130  4E 80 00 20 */	blr 
