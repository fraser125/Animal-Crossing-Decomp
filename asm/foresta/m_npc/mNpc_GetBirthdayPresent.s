lbl_803CE200:
/* 803CE200  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803CE204  7C 08 02 A6 */	mflr r0
/* 803CE208  90 01 00 24 */	stw r0, 0x24(r1)
/* 803CE20C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803CE210  7C 7F 1B 78 */	mr r31, r3
/* 803CE214  4B C8 EA E1 */	bl fqrand
/* 803CE218  3C 80 80 64 */	lis r4, lit_1471@ha /* 0x806428E4@ha */
/* 803CE21C  3C 60 80 66 */	lis r3, category_table_1466@ha /* 0x8065B2AC@ha */
/* 803CE220  C0 04 28 E4 */	lfs f0, lit_1471@l(r4)  /* 0x806428E4@l */
/* 803CE224  38 63 B2 AC */	addi r3, r3, category_table_1466@l /* 0x8065B2AC@l */
/* 803CE228  EC 00 00 72 */	fmuls f0, f0, f1
/* 803CE22C  FC 00 00 1E */	fctiwz f0, f0
/* 803CE230  D8 01 00 08 */	stfd f0, 8(r1)
/* 803CE234  80 01 00 0C */	lwz r0, 0xc(r1)
/* 803CE238  7D 03 00 AE */	lbzx r8, r3, r0
/* 803CE23C  2C 08 00 FF */	cmpwi r8, 0xff
/* 803CE240  40 82 00 14 */	bne lbl_803CE254
/* 803CE244  7F E3 FB 78 */	mr r3, r31
/* 803CE248  38 80 00 01 */	li r4, 1
/* 803CE24C  48 01 C8 75 */	bl mSP_RandomUmbSelect
/* 803CE250  48 00 00 24 */	b lbl_803CE274
lbl_803CE254:
/* 803CE254  7F E4 FB 78 */	mr r4, r31
/* 803CE258  38 60 00 00 */	li r3, 0
/* 803CE25C  38 A0 00 01 */	li r5, 1
/* 803CE260  38 C0 00 00 */	li r6, 0
/* 803CE264  38 E0 00 00 */	li r7, 0
/* 803CE268  39 20 00 02 */	li r9, 2
/* 803CE26C  39 40 00 00 */	li r10, 0
/* 803CE270  48 01 A1 6D */	bl mSP_SelectRandomItem_New
lbl_803CE274:
/* 803CE274  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803CE278  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803CE27C  7C 08 03 A6 */	mtlr r0
/* 803CE280  38 21 00 20 */	addi r1, r1, 0x20
/* 803CE284  4E 80 00 20 */	blr 
