lbl_80535D68:
/* 80535D68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80535D6C  7C 08 02 A6 */	mflr r0
/* 80535D70  90 01 00 14 */	stw r0, 0x14(r1)
/* 80535D74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80535D78  3B E0 00 00 */	li r31, 0
/* 80535D7C  93 C1 00 08 */	stw r30, 8(r1)
/* 80535D80  7C 7E 1B 78 */	mr r30, r3
/* 80535D84  A0 03 00 06 */	lhz r0, 6(r3)
/* 80535D88  54 00 A7 3E */	rlwinm r0, r0, 0x14, 0x1c, 0x1f
/* 80535D8C  2C 00 00 0E */	cmpwi r0, 0xe
/* 80535D90  40 82 00 80 */	bne lbl_80535E10
/* 80535D94  38 64 1D A8 */	addi r3, r4, 0x1da8
/* 80535D98  38 80 00 09 */	li r4, 9
/* 80535D9C  38 A0 00 05 */	li r5, 5
/* 80535DA0  4B E3 FF 41 */	bl Actor_info_name_search
/* 80535DA4  28 03 00 00 */	cmplwi r3, 0
/* 80535DA8  41 82 00 68 */	beq lbl_80535E10
/* 80535DAC  A8 03 02 08 */	lha r0, 0x208(r3)
/* 80535DB0  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80535DB4  40 82 00 5C */	bne lbl_80535E10
/* 80535DB8  C0 43 00 28 */	lfs f2, 0x28(r3)
/* 80535DBC  3C 80 80 65 */	lis r4, lit_3746@ha /* 0x80649340@ha */
/* 80535DC0  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 80535DC4  C0 63 00 30 */	lfs f3, 0x30(r3)
/* 80535DC8  EC 42 00 28 */	fsubs f2, f2, f0
/* 80535DCC  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 80535DD0  C0 04 93 40 */	lfs f0, lit_3746@l(r4)  /* 0x80649340@l */
/* 80535DD4  EC 23 08 28 */	fsubs f1, f3, f1
/* 80535DD8  EC 82 00 B2 */	fmuls f4, f2, f2
/* 80535DDC  EC 61 00 72 */	fmuls f3, f1, f1
/* 80535DE0  EC 64 18 2A */	fadds f3, f4, f3
/* 80535DE4  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80535DE8  40 80 00 28 */	bge lbl_80535E10
/* 80535DEC  4B ED 62 15 */	bl atans_table
/* 80535DF0  7C 60 07 35 */	extsh. r0, r3
/* 80535DF4  7C 60 07 34 */	extsh r0, r3
/* 80535DF8  7C 60 00 D0 */	neg r3, r0
/* 80535DFC  41 80 00 08 */	blt lbl_80535E04
/* 80535E00  7C 03 03 78 */	mr r3, r0
lbl_80535E04:
/* 80535E04  2C 03 30 00 */	cmpwi r3, 0x3000
/* 80535E08  40 80 00 08 */	bge lbl_80535E10
/* 80535E0C  3B E0 00 01 */	li r31, 1
lbl_80535E10:
/* 80535E10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80535E14  7F E3 FB 78 */	mr r3, r31
/* 80535E18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80535E1C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80535E20  7C 08 03 A6 */	mtlr r0
/* 80535E24  38 21 00 10 */	addi r1, r1, 0x10
/* 80535E28  4E 80 00 20 */	blr 
