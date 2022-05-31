lbl_80376B84:
/* 80376B84  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80376B88  7C 08 02 A6 */	mflr r0
/* 80376B8C  3C 80 80 64 */	lis r4, data_8064123C@ha /* 0x8064123C@ha */
/* 80376B90  90 01 00 24 */	stw r0, 0x24(r1)
/* 80376B94  38 A4 12 3C */	addi r5, r4, data_8064123C@l /* 0x8064123C@l */
/* 80376B98  C0 25 00 00 */	lfs f1, 0(r5)
/* 80376B9C  38 81 00 08 */	addi r4, r1, 8
/* 80376BA0  80 E3 00 00 */	lwz r7, 0(r3)
/* 80376BA4  80 C3 00 04 */	lwz r6, 4(r3)
/* 80376BA8  80 03 00 08 */	lwz r0, 8(r3)
/* 80376BAC  38 60 00 00 */	li r3, 0
/* 80376BB0  90 E1 00 08 */	stw r7, 8(r1)
/* 80376BB4  90 C1 00 0C */	stw r6, 0xc(r1)
/* 80376BB8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80376BBC  48 01 AA E5 */	bl mCoBG_GetShadowBgY_AngleS_FromWpos
/* 80376BC0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80376BC4  7C 08 03 A6 */	mtlr r0
/* 80376BC8  38 21 00 20 */	addi r1, r1, 0x20
/* 80376BCC  4E 80 00 20 */	blr 
