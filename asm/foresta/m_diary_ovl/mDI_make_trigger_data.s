lbl_805CF5D0:
/* 805CF5D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805CF5D4  7C 08 02 A6 */	mflr r0
/* 805CF5D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805CF5DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805CF5E0  7C 7F 1B 78 */	mr r31, r3
/* 805CF5E4  93 C1 00 08 */	stw r30, 8(r1)
/* 805CF5E8  4B DC 69 89 */	bl getTrigger
/* 805CF5EC  54 7E 04 3E */	clrlwi r30, r3, 0x10
/* 805CF5F0  4B DC 68 E1 */	bl getButton
/* 805CF5F4  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 805CF5F8  7C 00 F3 78 */	or r0, r0, r30
/* 805CF5FC  54 1E 07 3E */	clrlwi r30, r0, 0x1c
/* 805CF600  4B DC 69 71 */	bl getTrigger
/* 805CF604  3C A0 81 1C */	lis r5, data_811C52F0@ha /* 0x811C52F0@ha */
/* 805CF608  3C 80 80 65 */	lis r4, data_8064B0AC@ha /* 0x8064B0AC@ha */
/* 805CF60C  38 A5 52 F0 */	addi r5, r5, data_811C52F0@l /* 0x811C52F0@l */
/* 805CF610  C0 04 B0 AC */	lfs f0, data_8064B0AC@l(r4)  /* 0x8064B0AC@l */
/* 805CF614  80 A5 00 00 */	lwz r5, 0(r5)
/* 805CF618  54 66 07 3E */	clrlwi r6, r3, 0x1c
/* 805CF61C  C0 25 00 B0 */	lfs f1, 0xb0(r5)
/* 805CF620  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805CF624  40 81 00 38 */	ble lbl_805CF65C
/* 805CF628  A8 85 00 B4 */	lha r4, 0xb4(r5)
/* 805CF62C  3C 60 80 6D */	lis r3, add_trigger@ha /* 0x806CB974@ha */
/* 805CF630  38 63 B9 74 */	addi r3, r3, add_trigger@l /* 0x806CB974@l */
/* 805CF634  80 1F 00 3C */	lwz r0, 0x3c(r31)
/* 805CF638  38 84 20 00 */	addi r4, r4, 0x2000
/* 805CF63C  54 84 A7 3A */	rlwinm r4, r4, 0x14, 0x1c, 0x1d
/* 805CF640  7C 63 20 2E */	lwzx r3, r3, r4
/* 805CF644  7C 60 02 78 */	xor r0, r3, r0
/* 805CF648  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 805CF64C  7C 60 00 38 */	and r0, r3, r0
/* 805CF650  7F DE 1B 78 */	or r30, r30, r3
/* 805CF654  7C C6 03 78 */	or r6, r6, r0
/* 805CF658  48 00 00 0C */	b lbl_805CF664
lbl_805CF65C:
/* 805CF65C  38 00 00 00 */	li r0, 0
/* 805CF660  90 1F 00 3C */	stw r0, 0x3c(r31)
lbl_805CF664:
/* 805CF664  90 DF 00 34 */	stw r6, 0x34(r31)
/* 805CF668  93 DF 00 38 */	stw r30, 0x38(r31)
/* 805CF66C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805CF670  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805CF674  83 C1 00 08 */	lwz r30, 8(r1)
/* 805CF678  7C 08 03 A6 */	mtlr r0
/* 805CF67C  38 21 00 10 */	addi r1, r1, 0x10
/* 805CF680  4E 80 00 20 */	blr 
