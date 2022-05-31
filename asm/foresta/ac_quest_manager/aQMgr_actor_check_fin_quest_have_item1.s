lbl_80487778:
/* 80487778  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048777C  7C 08 02 A6 */	mflr r0
/* 80487780  90 01 00 14 */	stw r0, 0x14(r1)
/* 80487784  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80487788  3B E0 00 00 */	li r31, 0
/* 8048778C  93 C1 00 08 */	stw r30, 8(r1)
/* 80487790  7C 9E 23 78 */	mr r30, r4
/* 80487794  88 03 00 01 */	lbz r0, 1(r3)
/* 80487798  54 00 EF 3E */	rlwinm r0, r0, 0x1d, 0x1c, 0x1f
/* 8048779C  28 00 00 01 */	cmplwi r0, 1
/* 804877A0  40 82 00 38 */	bne lbl_804877D8
/* 804877A4  38 63 00 0E */	addi r3, r3, 0xe
/* 804877A8  4B F5 88 9D */	bl mPr_NullCheckPersonalID
/* 804877AC  2C 03 00 01 */	cmpwi r3, 1
/* 804877B0  40 82 00 28 */	bne lbl_804877D8
/* 804877B4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804877B8  7F C4 F3 78 */	mr r4, r30
/* 804877BC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804877C0  3C 63 00 02 */	addis r3, r3, 2
/* 804877C4  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 804877C8  4B F5 90 81 */	bl mPr_GetPossessionItemIdxItem1Category
/* 804877CC  2C 03 FF FF */	cmpwi r3, -1
/* 804877D0  41 82 00 08 */	beq lbl_804877D8
/* 804877D4  3B E0 00 01 */	li r31, 1
lbl_804877D8:
/* 804877D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804877DC  7F E3 FB 78 */	mr r3, r31
/* 804877E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804877E4  83 C1 00 08 */	lwz r30, 8(r1)
/* 804877E8  7C 08 03 A6 */	mtlr r0
/* 804877EC  38 21 00 10 */	addi r1, r1, 0x10
/* 804877F0  4E 80 00 20 */	blr 
