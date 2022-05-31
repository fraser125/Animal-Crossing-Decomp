lbl_8052B964:
/* 8052B964  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052B968  7C 08 02 A6 */	mflr r0
/* 8052B96C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052B970  7C 60 1B 78 */	mr r0, r3
/* 8052B974  38 60 00 07 */	li r3, 7
/* 8052B978  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8052B97C  7C 1F 03 78 */	mr r31, r0
/* 8052B980  93 C1 00 08 */	stw r30, 8(r1)
/* 8052B984  7C 9E 23 78 */	mr r30, r4
/* 8052B988  7C 04 03 78 */	mr r4, r0
/* 8052B98C  4B E6 E8 D9 */	bl mDemo_Check
/* 8052B990  2C 03 00 01 */	cmpwi r3, 1
/* 8052B994  41 82 00 54 */	beq lbl_8052B9E8
/* 8052B998  88 1F 07 F6 */	lbz r0, 0x7f6(r31)
/* 8052B99C  28 00 00 FF */	cmplwi r0, 0xff
/* 8052B9A0  40 82 00 0C */	bne lbl_8052B9AC
/* 8052B9A4  38 00 00 17 */	li r0, 0x17
/* 8052B9A8  90 1F 08 40 */	stw r0, 0x840(r31)
lbl_8052B9AC:
/* 8052B9AC  88 1F 07 F6 */	lbz r0, 0x7f6(r31)
/* 8052B9B0  28 00 00 FF */	cmplwi r0, 0xff
/* 8052B9B4  41 82 00 10 */	beq lbl_8052B9C4
/* 8052B9B8  88 1F 07 F5 */	lbz r0, 0x7f5(r31)
/* 8052B9BC  28 00 00 00 */	cmplwi r0, 0
/* 8052B9C0  40 82 00 28 */	bne lbl_8052B9E8
lbl_8052B9C4:
/* 8052B9C4  88 1F 09 A6 */	lbz r0, 0x9a6(r31)
/* 8052B9C8  3C 60 80 6A */	lis r3, proc_table@ha /* 0x806A1328@ha */
/* 8052B9CC  38 A3 13 28 */	addi r5, r3, proc_table@l /* 0x806A1328@l */
/* 8052B9D0  7F E3 FB 78 */	mr r3, r31
/* 8052B9D4  54 00 10 3A */	slwi r0, r0, 2
/* 8052B9D8  7F C4 F3 78 */	mr r4, r30
/* 8052B9DC  7D 85 00 2E */	lwzx r12, r5, r0
/* 8052B9E0  7D 89 03 A6 */	mtctr r12
/* 8052B9E4  4E 80 04 21 */	bctrl 
lbl_8052B9E8:
/* 8052B9E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052B9EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8052B9F0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8052B9F4  7C 08 03 A6 */	mtlr r0
/* 8052B9F8  38 21 00 10 */	addi r1, r1, 0x10
/* 8052B9FC  4E 80 00 20 */	blr 
