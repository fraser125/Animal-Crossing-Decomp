lbl_805B5018:
/* 805B5018  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B501C  7C 08 02 A6 */	mflr r0
/* 805B5020  3C 80 80 6C */	lis r4, data_806C5CC0@ha /* 0x806C5CC0@ha */
/* 805B5024  FC 80 08 90 */	fmr f4, f1
/* 805B5028  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B502C  39 04 5C C0 */	addi r8, r4, data_806C5CC0@l /* 0x806C5CC0@l */
/* 805B5030  C0 03 02 D0 */	lfs f0, 0x2d0(r3)
/* 805B5034  80 03 02 D8 */	lwz r0, 0x2d8(r3)
/* 805B5038  FC 00 00 1E */	fctiwz f0, f0
/* 805B503C  80 A3 02 B8 */	lwz r5, 0x2b8(r3)
/* 805B5040  20 00 00 03 */	subfic r0, r0, 3
/* 805B5044  7C 04 00 34 */	cntlzw r4, r0
/* 805B5048  D8 01 00 08 */	stfd f0, 8(r1)
/* 805B504C  54 8A D9 7E */	srwi r10, r4, 5
/* 805B5050  38 00 00 00 */	li r0, 0
/* 805B5054  80 81 00 0C */	lwz r4, 0xc(r1)
/* 805B5058  2C 04 00 00 */	cmpwi r4, 0
/* 805B505C  41 82 00 10 */	beq lbl_805B506C
/* 805B5060  2C 04 00 03 */	cmpwi r4, 3
/* 805B5064  41 82 00 08 */	beq lbl_805B506C
/* 805B5068  38 00 00 01 */	li r0, 1
lbl_805B506C:
/* 805B506C  54 89 10 3A */	slwi r9, r4, 2
/* 805B5070  38 88 01 C0 */	addi r4, r8, 0x1c0
/* 805B5074  7C 24 4C 2E */	lfsx f1, r4, r9
/* 805B5078  54 07 28 34 */	slwi r7, r0, 5
/* 805B507C  54 A5 18 38 */	slwi r5, r5, 3
/* 805B5080  3C 80 80 65 */	lis r4, lit_457@ha /* 0x8064A970@ha */
/* 805B5084  38 C8 01 D0 */	addi r6, r8, 0x1d0
/* 805B5088  55 40 10 3A */	slwi r0, r10, 2
/* 805B508C  7C A7 2A 14 */	add r5, r7, r5
/* 805B5090  38 E4 A9 70 */	addi r7, r4, lit_457@l /* 0x8064A970@l */
/* 805B5094  80 83 01 90 */	lwz r4, 0x190(r3)
/* 805B5098  39 08 01 80 */	addi r8, r8, 0x180
/* 805B509C  7C 05 02 14 */	add r0, r5, r0
/* 805B50A0  7C 46 4C 2E */	lfsx f2, r6, r9
/* 805B50A4  C0 A7 00 00 */	lfs f5, 0(r7)
/* 805B50A8  FC 60 08 90 */	fmr f3, f1
/* 805B50AC  7C A8 00 2E */	lwzx r5, r8, r0
/* 805B50B0  38 63 01 78 */	addi r3, r3, 0x178
/* 805B50B4  38 C0 00 00 */	li r6, 0
/* 805B50B8  38 E0 00 00 */	li r7, 0
/* 805B50BC  4B DB BC 19 */	bl cKF_SkeletonInfo_R_init
/* 805B50C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B50C4  7C 08 03 A6 */	mtlr r0
/* 805B50C8  38 21 00 10 */	addi r1, r1, 0x10
/* 805B50CC  4E 80 00 20 */	blr 
