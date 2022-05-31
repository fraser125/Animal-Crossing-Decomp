lbl_8045AC44:
/* 8045AC44  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8045AC48  7C 08 02 A6 */	mflr r0
/* 8045AC4C  3C 80 80 68 */	lis r4, amenbo_center_pos@ha /* 0x80686CC0@ha */
/* 8045AC50  3C A0 80 66 */	lis r5, data_8065F050@ha /* 0x8065F050@ha */
/* 8045AC54  90 01 00 24 */	stw r0, 0x24(r1)
/* 8045AC58  38 E4 6C C0 */	addi r7, r4, amenbo_center_pos@l /* 0x80686CC0@l */
/* 8045AC5C  3C 80 80 66 */	lis r4, ZeroSVec@ha /* 0x8065F05C@ha */
/* 8045AC60  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8045AC64  7C 7F 1B 78 */	mr r31, r3
/* 8045AC68  38 64 F0 5C */	addi r3, r4, ZeroSVec@l /* 0x8065F05C@l */
/* 8045AC6C  80 C7 00 00 */	lwz r6, 0(r7)
/* 8045AC70  80 07 00 04 */	lwz r0, 4(r7)
/* 8045AC74  90 DF 00 1C */	stw r6, 0x1c(r31)
/* 8045AC78  90 1F 00 20 */	stw r0, 0x20(r31)
/* 8045AC7C  80 07 00 08 */	lwz r0, 8(r7)
/* 8045AC80  90 1F 00 24 */	stw r0, 0x24(r31)
/* 8045AC84  84 85 F0 50 */	lwzu r4, data_8065F050@l(r5)  /* 0x8065F050@l */
/* 8045AC88  80 05 00 04 */	lwz r0, 4(r5)
/* 8045AC8C  90 9F 00 34 */	stw r4, 0x34(r31)
/* 8045AC90  90 1F 00 38 */	stw r0, 0x38(r31)
/* 8045AC94  80 05 00 08 */	lwz r0, 8(r5)
/* 8045AC98  90 1F 00 3C */	stw r0, 0x3c(r31)
/* 8045AC9C  80 85 00 00 */	lwz r4, 0(r5)
/* 8045ACA0  80 05 00 04 */	lwz r0, 4(r5)
/* 8045ACA4  90 9F 00 44 */	stw r4, 0x44(r31)
/* 8045ACA8  90 1F 00 48 */	stw r0, 0x48(r31)
/* 8045ACAC  80 05 00 08 */	lwz r0, 8(r5)
/* 8045ACB0  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 8045ACB4  80 03 00 00 */	lwz r0, 0(r3)
/* 8045ACB8  90 1F 00 68 */	stw r0, 0x68(r31)
/* 8045ACBC  A0 03 00 04 */	lhz r0, 4(r3)
/* 8045ACC0  B0 1F 00 6C */	sth r0, 0x6c(r31)
/* 8045ACC4  4B C0 20 09 */	bl func_8005CCCC
/* 8045ACC8  B0 7F 00 6A */	sth r3, 0x6a(r31)
/* 8045ACCC  A8 1F 00 6A */	lha r0, 0x6a(r31)
/* 8045ACD0  B0 1F 00 70 */	sth r0, 0x70(r31)
/* 8045ACD4  4B C0 20 21 */	bl fqrand
/* 8045ACD8  3C 80 80 64 */	lis r4, lit_675@ha /* 0x80644648@ha */
/* 8045ACDC  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 8045ACE0  C0 44 46 48 */	lfs f2, lit_675@l(r4)  /* 0x80644648@l */
/* 8045ACE4  C0 03 45 BC */	lfs f0, lit_459@l(r3)  /* 0x806445BC@l */
/* 8045ACE8  EC 22 00 72 */	fmuls f1, f2, f1
/* 8045ACEC  FC 20 08 1E */	fctiwz f1, f1
/* 8045ACF0  D8 21 00 08 */	stfd f1, 8(r1)
/* 8045ACF4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8045ACF8  B0 1F 00 6E */	sth r0, 0x6e(r31)
/* 8045ACFC  D0 1F 00 40 */	stfs f0, 0x40(r31)
/* 8045AD00  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8045AD04  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8045AD08  7C 08 03 A6 */	mtlr r0
/* 8045AD0C  38 21 00 20 */	addi r1, r1, 0x20
/* 8045AD10  4E 80 00 20 */	blr 
