lbl_80510C70:
/* 80510C70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80510C74  7C 08 02 A6 */	mflr r0
/* 80510C78  3C A0 80 6A */	lis r5, l_magrw_bee_table@ha /* 0x8069FA6C@ha */
/* 80510C7C  7C 86 23 78 */	mr r6, r4
/* 80510C80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80510C84  38 A5 FA 6C */	addi r5, r5, l_magrw_bee_table@l /* 0x8069FA6C@l */
/* 80510C88  A0 83 00 00 */	lhz r4, 0(r3)
/* 80510C8C  38 66 00 48 */	addi r3, r6, 0x48
/* 80510C90  80 E6 00 28 */	lwz r7, 0x28(r6)
/* 80510C94  38 C0 00 03 */	li r6, 3
/* 80510C98  4B FF FF 8D */	bl mAGrw_RecordCheckItem
/* 80510C9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80510CA0  7C 08 03 A6 */	mtlr r0
/* 80510CA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80510CA8  4E 80 00 20 */	blr 
