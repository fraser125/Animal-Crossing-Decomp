lbl_805AA4D8:
/* 805AA4D8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805AA4DC  7C 08 02 A6 */	mflr r0
/* 805AA4E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 805AA4E4  39 61 00 20 */	addi r11, r1, 0x20
/* 805AA4E8  4B AF 09 E9 */	bl func_8009AED0
/* 805AA4EC  7C 7C 1B 78 */	mr r28, r3
/* 805AA4F0  3C 60 80 6C */	lis r3, data_806C4630@ha /* 0x806C4630@ha */
/* 805AA4F4  3B E3 46 30 */	addi r31, r3, data_806C4630@l /* 0x806C4630@l */
/* 805AA4F8  80 1C 02 D8 */	lwz r0, 0x2d8(r28)
/* 805AA4FC  7C 9D 23 78 */	mr r29, r4
/* 805AA500  54 9E 10 3A */	slwi r30, r4, 2
/* 805AA504  38 9F 00 F0 */	addi r4, r31, 0xf0
/* 805AA508  20 00 00 03 */	subfic r0, r0, 3
/* 805AA50C  7C 24 F4 2E */	lfsx f1, r4, r30
/* 805AA510  3C 60 80 65 */	lis r3, lit_466@ha /* 0x8064A5F0@ha */
/* 805AA514  39 03 A5 F0 */	addi r8, r3, lit_466@l /* 0x8064A5F0@l */
/* 805AA518  7C 00 00 34 */	cntlzw r0, r0
/* 805AA51C  38 DF 01 00 */	addi r6, r31, 0x100
/* 805AA520  38 FF 01 10 */	addi r7, r31, 0x110
/* 805AA524  7C 46 F4 2E */	lfsx f2, r6, r30
/* 805AA528  54 00 E8 FA */	rlwinm r0, r0, 0x1d, 3, 0x1d
/* 805AA52C  38 BF 00 E8 */	addi r5, r31, 0xe8
/* 805AA530  7C 87 F4 2E */	lfsx f4, r7, r30
/* 805AA534  FC 60 08 90 */	fmr f3, f1
/* 805AA538  80 9C 01 90 */	lwz r4, 0x190(r28)
/* 805AA53C  7C A5 00 2E */	lwzx r5, r5, r0
/* 805AA540  38 7C 01 78 */	addi r3, r28, 0x178
/* 805AA544  C0 A8 00 00 */	lfs f5, 0(r8)
/* 805AA548  38 C0 00 00 */	li r6, 0
/* 805AA54C  38 E0 00 00 */	li r7, 0
/* 805AA550  4B DC 67 85 */	bl cKF_SkeletonInfo_R_init
/* 805AA554  38 7F 00 D8 */	addi r3, r31, 0xd8
/* 805AA558  7C 03 F0 2E */	lwzx r0, r3, r30
/* 805AA55C  90 1C 02 A0 */	stw r0, 0x2a0(r28)
/* 805AA560  93 BC 02 B4 */	stw r29, 0x2b4(r28)
/* 805AA564  39 61 00 20 */	addi r11, r1, 0x20
/* 805AA568  4B AF 09 B5 */	bl func_8009AF1C
/* 805AA56C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805AA570  7C 08 03 A6 */	mtlr r0
/* 805AA574  38 21 00 20 */	addi r1, r1, 0x20
/* 805AA578  4E 80 00 20 */	blr 
