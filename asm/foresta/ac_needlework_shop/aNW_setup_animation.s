lbl_805B6A68:
/* 805B6A68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B6A6C  7C 08 02 A6 */	mflr r0
/* 805B6A70  3C A0 80 6C */	lis r5, data_806C6038@ha /* 0x806C6038@ha */
/* 805B6A74  FC 80 08 90 */	fmr f4, f1
/* 805B6A78  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B6A7C  39 05 60 38 */	addi r8, r5, data_806C6038@l /* 0x806C6038@l */
/* 805B6A80  80 83 02 D8 */	lwz r4, 0x2d8(r3)
/* 805B6A84  80 03 02 B0 */	lwz r0, 0x2b0(r3)
/* 805B6A88  20 84 00 03 */	subfic r4, r4, 3
/* 805B6A8C  7C 84 00 34 */	cntlzw r4, r4
/* 805B6A90  2C 00 00 03 */	cmpwi r0, 3
/* 805B6A94  54 8A D9 7E */	srwi r10, r4, 5
/* 805B6A98  41 82 00 30 */	beq lbl_805B6AC8
/* 805B6A9C  40 80 00 10 */	bge lbl_805B6AAC
/* 805B6AA0  2C 00 00 02 */	cmpwi r0, 2
/* 805B6AA4  40 80 00 14 */	bge lbl_805B6AB8
/* 805B6AA8  48 00 00 20 */	b lbl_805B6AC8
lbl_805B6AAC:
/* 805B6AAC  2C 00 00 05 */	cmpwi r0, 5
/* 805B6AB0  40 80 00 18 */	bge lbl_805B6AC8
/* 805B6AB4  48 00 00 0C */	b lbl_805B6AC0
lbl_805B6AB8:
/* 805B6AB8  38 C0 00 02 */	li r6, 2
/* 805B6ABC  48 00 00 10 */	b lbl_805B6ACC
lbl_805B6AC0:
/* 805B6AC0  38 C0 00 01 */	li r6, 1
/* 805B6AC4  48 00 00 08 */	b lbl_805B6ACC
lbl_805B6AC8:
/* 805B6AC8  38 C0 00 00 */	li r6, 0
lbl_805B6ACC:
/* 805B6ACC  30 06 FF FF */	addic r0, r6, -1
/* 805B6AD0  54 C9 10 3A */	slwi r9, r6, 2
/* 805B6AD4  7C 00 31 10 */	subfe r0, r0, r6
/* 805B6AD8  38 A8 01 5C */	addi r5, r8, 0x15c
/* 805B6ADC  7C 25 4C 2E */	lfsx f1, r5, r9
/* 805B6AE0  3C 80 80 65 */	lis r4, lit_442@ha /* 0x8064A9C8@ha */
/* 805B6AE4  38 E4 A9 C8 */	addi r7, r4, lit_442@l /* 0x8064A9C8@l */
/* 805B6AE8  38 C8 01 6C */	addi r6, r8, 0x16c
/* 805B6AEC  7C 46 4C 2E */	lfsx f2, r6, r9
/* 805B6AF0  55 44 18 38 */	slwi r4, r10, 3
/* 805B6AF4  54 00 10 3A */	slwi r0, r0, 2
/* 805B6AF8  C0 A7 00 00 */	lfs f5, 0(r7)
/* 805B6AFC  7C 04 02 14 */	add r0, r4, r0
/* 805B6B00  38 A8 01 4C */	addi r5, r8, 0x14c
/* 805B6B04  80 83 01 90 */	lwz r4, 0x190(r3)
/* 805B6B08  FC 60 08 90 */	fmr f3, f1
/* 805B6B0C  7C A5 00 2E */	lwzx r5, r5, r0
/* 805B6B10  38 63 01 78 */	addi r3, r3, 0x178
/* 805B6B14  38 C0 00 00 */	li r6, 0
/* 805B6B18  38 E0 00 00 */	li r7, 0
/* 805B6B1C  4B DB A1 B9 */	bl cKF_SkeletonInfo_R_init
/* 805B6B20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B6B24  7C 08 03 A6 */	mtlr r0
/* 805B6B28  38 21 00 10 */	addi r1, r1, 0x10
/* 805B6B2C  4E 80 00 20 */	blr 
