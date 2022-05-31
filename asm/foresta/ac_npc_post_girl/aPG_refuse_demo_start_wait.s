lbl_8056CB04:
/* 8056CB04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056CB08  7C 08 02 A6 */	mflr r0
/* 8056CB0C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8056CB10  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8056CB14  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056CB18  3C A5 00 02 */	addis r5, r5, 2
/* 8056CB1C  80 A5 60 94 */	lwz r5, 0x6094(r5)
/* 8056CB20  88 05 00 0C */	lbz r0, 0xc(r5)
/* 8056CB24  28 00 00 02 */	cmplwi r0, 2
/* 8056CB28  40 82 00 14 */	bne lbl_8056CB3C
/* 8056CB2C  81 83 09 A0 */	lwz r12, 0x9a0(r3)
/* 8056CB30  38 A0 00 07 */	li r5, 7
/* 8056CB34  7D 89 03 A6 */	mtctr r12
/* 8056CB38  4E 80 04 21 */	bctrl 
lbl_8056CB3C:
/* 8056CB3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056CB40  7C 08 03 A6 */	mtlr r0
/* 8056CB44  38 21 00 10 */	addi r1, r1, 0x10
/* 8056CB48  4E 80 00 20 */	blr 
