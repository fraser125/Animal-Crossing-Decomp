lbl_805EF6B0:
/* 805EF6B0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805EF6B4  7C 08 02 A6 */	mflr r0
/* 805EF6B8  90 01 00 34 */	stw r0, 0x34(r1)
/* 805EF6BC  39 61 00 30 */	addi r11, r1, 0x30
/* 805EF6C0  4B AA B8 15 */	bl func_8009AED4
/* 805EF6C4  1D 05 00 0C */	mulli r8, r5, 0xc
/* 805EF6C8  3C E0 80 6D */	lis r7, mTG_table_data@ha /* 0x806CF99C@ha */
/* 805EF6CC  7C 9E 23 78 */	mr r30, r4
/* 805EF6D0  38 07 F9 9C */	addi r0, r7, mTG_table_data@l /* 0x806CF99C@l */
/* 805EF6D4  7C DF 33 78 */	mr r31, r6
/* 805EF6D8  7C A4 2B 78 */	mr r4, r5
/* 805EF6DC  7F A0 42 14 */	add r29, r0, r8
/* 805EF6E0  4B FF FF 59 */	bl mTG_set_hand_pos_offset
/* 805EF6E4  A8 BD 00 00 */	lha r5, 0(r29)
/* 805EF6E8  3C 00 43 30 */	lis r0, 0x4330
/* 805EF6EC  3C 60 80 65 */	lis r3, lit_523@ha /* 0x8064B824@ha */
/* 805EF6F0  90 01 00 08 */	stw r0, 8(r1)
/* 805EF6F4  7C 9F 2B D6 */	divw r4, r31, r5
/* 805EF6F8  80 DD 00 04 */	lwz r6, 4(r29)
/* 805EF6FC  90 01 00 10 */	stw r0, 0x10(r1)
/* 805EF700  39 61 00 30 */	addi r11, r1, 0x30
/* 805EF704  C8 43 B8 24 */	lfd f2, lit_523@l(r3)  /* 0x8064B824@l */
/* 805EF708  7C 04 29 D6 */	mullw r0, r4, r5
/* 805EF70C  7C 00 F8 50 */	subf r0, r0, r31
/* 805EF710  54 00 08 3C */	slwi r0, r0, 1
/* 805EF714  7C 06 02 AE */	lhax r0, r6, r0
/* 805EF718  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805EF71C  90 01 00 0C */	stw r0, 0xc(r1)
/* 805EF720  C8 01 00 08 */	lfd f0, 8(r1)
/* 805EF724  EC 00 10 28 */	fsubs f0, f0, f2
/* 805EF728  EC 00 08 2A */	fadds f0, f0, f1
/* 805EF72C  D0 1E 00 00 */	stfs f0, 0(r30)
/* 805EF730  A8 1D 00 00 */	lha r0, 0(r29)
/* 805EF734  80 7D 00 08 */	lwz r3, 8(r29)
/* 805EF738  7C 1F 03 D6 */	divw r0, r31, r0
/* 805EF73C  54 00 08 3C */	slwi r0, r0, 1
/* 805EF740  7C 03 02 AE */	lhax r0, r3, r0
/* 805EF744  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805EF748  90 01 00 14 */	stw r0, 0x14(r1)
/* 805EF74C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 805EF750  EC 00 10 28 */	fsubs f0, f0, f2
/* 805EF754  D0 1E 00 04 */	stfs f0, 4(r30)
/* 805EF758  4B AA B7 C9 */	bl func_8009AF20
/* 805EF75C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805EF760  7C 08 03 A6 */	mtlr r0
/* 805EF764  38 21 00 30 */	addi r1, r1, 0x30
/* 805EF768  4E 80 00 20 */	blr 
