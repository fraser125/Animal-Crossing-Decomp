lbl_805DCE70:
/* 805DCE70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805DCE74  7C 08 02 A6 */	mflr r0
/* 805DCE78  3C 80 80 5E */	lis r4, mGB_gba_ovl_move@ha /* 0x805DC884@ha */
/* 805DCE7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805DCE80  38 04 C8 84 */	addi r0, r4, mGB_gba_ovl_move@l /* 0x805DC884@l */
/* 805DCE84  3C 80 80 5E */	lis r4, mGB_gba_ovl_draw@ha /* 0x805DCDCC@ha */
/* 805DCE88  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805DCE8C  90 05 09 0C */	stw r0, 0x90c(r5)
/* 805DCE90  38 04 CD CC */	addi r0, r4, mGB_gba_ovl_draw@l /* 0x805DCDCC@l */
/* 805DCE94  90 05 09 10 */	stw r0, 0x910(r5)
/* 805DCE98  80 05 09 80 */	lwz r0, 0x980(r5)
/* 805DCE9C  28 00 00 00 */	cmplwi r0, 0
/* 805DCEA0  41 82 00 24 */	beq lbl_805DCEC4
/* 805DCEA4  80 05 07 D4 */	lwz r0, 0x7d4(r5)
/* 805DCEA8  2C 00 00 04 */	cmpwi r0, 4
/* 805DCEAC  41 82 00 18 */	beq lbl_805DCEC4
/* 805DCEB0  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 805DCEB4  80 84 09 80 */	lwz r4, 0x980(r4)
/* 805DCEB8  81 84 03 74 */	lwz r12, 0x374(r4)
/* 805DCEBC  7D 89 03 A6 */	mtctr r12
/* 805DCEC0  4E 80 04 21 */	bctrl 
lbl_805DCEC4:
/* 805DCEC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805DCEC8  7C 08 03 A6 */	mtlr r0
/* 805DCECC  38 21 00 10 */	addi r1, r1, 0x10
/* 805DCED0  4E 80 00 20 */	blr 
