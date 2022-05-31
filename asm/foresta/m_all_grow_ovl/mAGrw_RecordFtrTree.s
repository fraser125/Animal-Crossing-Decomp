lbl_80510CAC:
/* 80510CAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80510CB0  7C 08 02 A6 */	mflr r0
/* 80510CB4  3C A0 80 6A */	lis r5, l_magrw_ftr_table@ha /* 0x8069FA74@ha */
/* 80510CB8  7C 86 23 78 */	mr r6, r4
/* 80510CBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80510CC0  38 A5 FA 74 */	addi r5, r5, l_magrw_ftr_table@l /* 0x8069FA74@l */
/* 80510CC4  A0 83 00 00 */	lhz r4, 0(r3)
/* 80510CC8  38 66 00 49 */	addi r3, r6, 0x49
/* 80510CCC  80 E6 00 28 */	lwz r7, 0x28(r6)
/* 80510CD0  38 C0 00 03 */	li r6, 3
/* 80510CD4  4B FF FF 51 */	bl mAGrw_RecordCheckItem
/* 80510CD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80510CDC  7C 08 03 A6 */	mtlr r0
/* 80510CE0  38 21 00 10 */	addi r1, r1, 0x10
/* 80510CE4  4E 80 00 20 */	blr 
