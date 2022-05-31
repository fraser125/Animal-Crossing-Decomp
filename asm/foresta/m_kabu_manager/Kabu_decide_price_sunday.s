lbl_803B5FA8:
/* 803B5FA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B5FAC  7C 08 02 A6 */	mflr r0
/* 803B5FB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B5FB4  4B CA 6D 41 */	bl fqrand
/* 803B5FB8  3C 60 80 64 */	lis r3, lit_448@ha /* 0x806423CC@ha */
/* 803B5FBC  3C 80 80 64 */	lis r4, lit_447@ha /* 0x806423C8@ha */
/* 803B5FC0  38 A3 23 CC */	addi r5, r3, lit_448@l /* 0x806423CC@l */
/* 803B5FC4  C0 05 00 00 */	lfs f0, 0(r5)
/* 803B5FC8  3C 60 80 64 */	lis r3, lit_446@ha /* 0x806423C4@ha */
/* 803B5FCC  38 A3 23 C4 */	addi r5, r3, lit_446@l /* 0x806423C4@l */
/* 803B5FD0  EC 41 00 28 */	fsubs f2, f1, f0
/* 803B5FD4  C0 04 23 C8 */	lfs f0, lit_447@l(r4)  /* 0x806423C8@l */
/* 803B5FD8  3C 60 80 64 */	lis r3, lit_449@ha /* 0x806423D0@ha */
/* 803B5FDC  C0 25 00 00 */	lfs f1, 0(r5)
/* 803B5FE0  38 83 23 D0 */	addi r4, r3, lit_449@l /* 0x806423D0@l */
/* 803B5FE4  EC 40 00 B2 */	fmuls f2, f0, f2
/* 803B5FE8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803B5FEC  C0 04 00 00 */	lfs f0, 0(r4)
/* 803B5FF0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803B5FF4  EC 21 10 2A */	fadds f1, f1, f2
/* 803B5FF8  3C 63 00 02 */	addis r3, r3, 2
/* 803B5FFC  EC 00 00 72 */	fmuls f0, f0, f1
/* 803B6000  FC 00 00 1E */	fctiwz f0, f0
/* 803B6004  D8 01 00 08 */	stfd f0, 8(r1)
/* 803B6008  80 01 00 0C */	lwz r0, 0xc(r1)
/* 803B600C  B0 03 04 80 */	sth r0, 0x480(r3)
/* 803B6010  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B6014  7C 08 03 A6 */	mtlr r0
/* 803B6018  38 21 00 10 */	addi r1, r1, 0x10
/* 803B601C  4E 80 00 20 */	blr 
