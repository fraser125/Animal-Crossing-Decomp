lbl_803CD4B4:
/* 803CD4B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803CD4B8  7C 08 02 A6 */	mflr r0
/* 803CD4BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 803CD4C0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803CD4C4  7C 7F 1B 78 */	mr r31, r3
/* 803CD4C8  4B C8 F8 2D */	bl fqrand
/* 803CD4CC  3C 80 80 64 */	lis r4, lit_1268@ha /* 0x806428D4@ha */
/* 803CD4D0  3C 60 80 66 */	lis r3, category_table_1266@ha /* 0x8065B1EC@ha */
/* 803CD4D4  38 A4 28 D4 */	addi r5, r4, lit_1268@l /* 0x806428D4@l */
/* 803CD4D8  38 C0 00 00 */	li r6, 0
/* 803CD4DC  C0 05 00 00 */	lfs f0, 0(r5)
/* 803CD4E0  39 03 B1 EC */	addi r8, r3, category_table_1266@l /* 0x8065B1EC@l */
/* 803CD4E4  7F E4 FB 78 */	mr r4, r31
/* 803CD4E8  38 60 00 00 */	li r3, 0
/* 803CD4EC  EC 00 00 72 */	fmuls f0, f0, f1
/* 803CD4F0  38 A0 00 01 */	li r5, 1
/* 803CD4F4  38 E0 00 00 */	li r7, 0
/* 803CD4F8  39 20 00 08 */	li r9, 8
/* 803CD4FC  39 40 00 00 */	li r10, 0
/* 803CD500  FC 00 00 1E */	fctiwz f0, f0
/* 803CD504  D8 01 00 08 */	stfd f0, 8(r1)
/* 803CD508  80 01 00 0C */	lwz r0, 0xc(r1)
/* 803CD50C  54 00 17 7A */	rlwinm r0, r0, 2, 0x1d, 0x1d
/* 803CD510  7D 08 00 2E */	lwzx r8, r8, r0
/* 803CD514  48 01 AE C9 */	bl mSP_SelectRandomItem_New
/* 803CD518  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803CD51C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803CD520  7C 08 03 A6 */	mtlr r0
/* 803CD524  38 21 00 20 */	addi r1, r1, 0x20
/* 803CD528  4E 80 00 20 */	blr 
