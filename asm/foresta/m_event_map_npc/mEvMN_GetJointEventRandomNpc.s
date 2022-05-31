lbl_803A00AC:
/* 803A00AC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803A00B0  7C 08 02 A6 */	mflr r0
/* 803A00B4  90 01 00 34 */	stw r0, 0x34(r1)
/* 803A00B8  38 81 00 08 */	addi r4, r1, 8
/* 803A00BC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 803A00C0  3B E0 00 00 */	li r31, 0
/* 803A00C4  93 C1 00 28 */	stw r30, 0x28(r1)
/* 803A00C8  7C 7E 1B 78 */	mr r30, r3
/* 803A00CC  38 61 00 0C */	addi r3, r1, 0xc
/* 803A00D0  4B FF FE 81 */	bl mEvMN_GetNpcIdxListJointEvent
/* 803A00D4  2C 03 00 01 */	cmpwi r3, 1
/* 803A00D8  40 82 00 68 */	bne lbl_803A0140
/* 803A00DC  4B CB CC 19 */	bl fqrand
/* 803A00E0  80 A1 00 08 */	lwz r5, 8(r1)
/* 803A00E4  3C 00 43 30 */	lis r0, 0x4330
/* 803A00E8  3C 80 80 64 */	lis r4, data_80641E4C@ha /* 0x80641E4C@ha */
/* 803A00EC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803A00F0  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 803A00F4  90 01 00 10 */	stw r0, 0x10(r1)
/* 803A00F8  38 C4 1E 4C */	addi r6, r4, data_80641E4C@l /* 0x80641E4C@l */
/* 803A00FC  80 81 00 0C */	lwz r4, 0xc(r1)
/* 803A0100  90 A1 00 14 */	stw r5, 0x14(r1)
/* 803A0104  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 803A0108  C8 46 00 00 */	lfd f2, 0(r6)
/* 803A010C  3B E0 00 01 */	li r31, 1
/* 803A0110  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 803A0114  EC 00 10 28 */	fsubs f0, f0, f2
/* 803A0118  EC 00 00 72 */	fmuls f0, f0, f1
/* 803A011C  FC 00 00 1E */	fctiwz f0, f0
/* 803A0120  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 803A0124  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 803A0128  7C 64 18 AE */	lbzx r3, r4, r3
/* 803A012C  1C 63 09 88 */	mulli r3, r3, 0x988
/* 803A0130  7C 60 1A 14 */	add r3, r0, r3
/* 803A0134  3C 63 00 01 */	addis r3, r3, 1
/* 803A0138  A0 03 74 38 */	lhz r0, 0x7438(r3)
/* 803A013C  B0 1E 00 00 */	sth r0, 0(r30)
lbl_803A0140:
/* 803A0140  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803A0144  7F E3 FB 78 */	mr r3, r31
/* 803A0148  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 803A014C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 803A0150  7C 08 03 A6 */	mtlr r0
/* 803A0154  38 21 00 30 */	addi r1, r1, 0x30
/* 803A0158  4E 80 00 20 */	blr 
