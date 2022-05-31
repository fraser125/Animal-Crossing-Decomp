lbl_804CE494:
/* 804CE494  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804CE498  7C 08 02 A6 */	mflr r0
/* 804CE49C  3C A0 80 66 */	lis r5, data_8065F050@ha /* 0x8065F050@ha */
/* 804CE4A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 804CE4A4  38 E5 F0 50 */	addi r7, r5, data_8065F050@l /* 0x8065F050@l */
/* 804CE4A8  7C 85 23 78 */	mr r5, r4
/* 804CE4AC  38 81 00 08 */	addi r4, r1, 8
/* 804CE4B0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804CE4B4  7C 7F 1B 78 */	mr r31, r3
/* 804CE4B8  38 61 00 0C */	addi r3, r1, 0xc
/* 804CE4BC  80 C7 00 00 */	lwz r6, 0(r7)
/* 804CE4C0  80 07 00 04 */	lwz r0, 4(r7)
/* 804CE4C4  90 DF 00 00 */	stw r6, 0(r31)
/* 804CE4C8  90 1F 00 04 */	stw r0, 4(r31)
/* 804CE4CC  80 07 00 08 */	lwz r0, 8(r7)
/* 804CE4D0  90 1F 00 08 */	stw r0, 8(r31)
/* 804CE4D4  4B ED 7F 2D */	bl mFI_BlockKind2BkNum
/* 804CE4D8  2C 03 00 00 */	cmpwi r3, 0
/* 804CE4DC  41 82 00 4C */	beq lbl_804CE528
/* 804CE4E0  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 804CE4E4  7F E3 FB 78 */	mr r3, r31
/* 804CE4E8  80 C1 00 08 */	lwz r6, 8(r1)
/* 804CE4EC  38 9F 00 08 */	addi r4, r31, 8
/* 804CE4F0  4B ED 76 89 */	bl mFI_BkNum2WposXZ
/* 804CE4F4  2C 03 00 00 */	cmpwi r3, 0
/* 804CE4F8  41 82 00 30 */	beq lbl_804CE528
/* 804CE4FC  3C 60 80 64 */	lis r3, lit_558@ha /* 0x806462AC@ha */
/* 804CE500  C0 1F 00 00 */	lfs f0, 0(r31)
/* 804CE504  38 83 62 AC */	addi r4, r3, lit_558@l /* 0x806462AC@l */
/* 804CE508  38 60 00 01 */	li r3, 1
/* 804CE50C  C0 24 00 00 */	lfs f1, 0(r4)
/* 804CE510  EC 00 08 2A */	fadds f0, f0, f1
/* 804CE514  D0 1F 00 00 */	stfs f0, 0(r31)
/* 804CE518  C0 1F 00 08 */	lfs f0, 8(r31)
/* 804CE51C  EC 00 08 2A */	fadds f0, f0, f1
/* 804CE520  D0 1F 00 08 */	stfs f0, 8(r31)
/* 804CE524  48 00 00 08 */	b lbl_804CE52C
lbl_804CE528:
/* 804CE528  38 60 00 00 */	li r3, 0
lbl_804CE52C:
/* 804CE52C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804CE530  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804CE534  7C 08 03 A6 */	mtlr r0
/* 804CE538  38 21 00 20 */	addi r1, r1, 0x20
/* 804CE53C  4E 80 00 20 */	blr 
