lbl_80469F10:
/* 80469F10  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80469F14  7C 08 02 A6 */	mflr r0
/* 80469F18  3C A0 80 64 */	lis r5, kumo_base_pos@ha /* 0x80644868@ha */
/* 80469F1C  3C C0 80 64 */	lis r6, lit_678@ha /* 0x80644654@ha */
/* 80469F20  90 01 00 34 */	stw r0, 0x34(r1)
/* 80469F24  39 05 48 68 */	addi r8, r5, kumo_base_pos@l /* 0x80644868@l */
/* 80469F28  3C A0 80 64 */	lis r5, lit_459@ha /* 0x806445BC@ha */
/* 80469F2C  80 08 00 00 */	lwz r0, 0(r8)
/* 80469F30  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80469F34  7C 9F 23 78 */	mr r31, r4
/* 80469F38  80 E8 00 04 */	lwz r7, 4(r8)
/* 80469F3C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80469F40  7C 7E 1B 78 */	mr r30, r3
/* 80469F44  C0 26 46 54 */	lfs f1, lit_678@l(r6)  /* 0x80644654@l */
/* 80469F48  90 03 00 1C */	stw r0, 0x1c(r3)
/* 80469F4C  3C 60 80 66 */	lis r3, ZeroSVec@ha /* 0x8065F05C@ha */
/* 80469F50  80 08 00 08 */	lwz r0, 8(r8)
/* 80469F54  90 FE 00 20 */	stw r7, 0x20(r30)
/* 80469F58  C0 05 45 BC */	lfs f0, lit_459@l(r5)  /* 0x806445BC@l */
/* 80469F5C  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80469F60  D0 3E 00 34 */	stfs f1, 0x34(r30)
/* 80469F64  D0 3E 00 38 */	stfs f1, 0x38(r30)
/* 80469F68  D0 3E 00 3C */	stfs f1, 0x3c(r30)
/* 80469F6C  D0 1E 00 5C */	stfs f0, 0x5c(r30)
/* 80469F70  D0 1E 00 44 */	stfs f0, 0x44(r30)
/* 80469F74  84 03 F0 5C */	lwzu r0, ZeroSVec@l(r3)  /* 0x8065F05C@l */
/* 80469F78  90 1E 00 68 */	stw r0, 0x68(r30)
/* 80469F7C  A0 03 00 04 */	lhz r0, 4(r3)
/* 80469F80  B0 1E 00 6C */	sth r0, 0x6c(r30)
/* 80469F84  4B BF 2D 71 */	bl fqrand
/* 80469F88  3C 60 80 64 */	lis r3, lit_762@ha /* 0x80644664@ha */
/* 80469F8C  C0 03 46 64 */	lfs f0, lit_762@l(r3)  /* 0x80644664@l */
/* 80469F90  EC 00 00 72 */	fmuls f0, f0, f1
/* 80469F94  FC 00 00 1E */	fctiwz f0, f0
/* 80469F98  D8 01 00 08 */	stfd f0, 8(r1)
/* 80469F9C  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80469FA0  38 03 00 28 */	addi r0, r3, 0x28
/* 80469FA4  B0 1E 00 6E */	sth r0, 0x6e(r30)
/* 80469FA8  4B BF 2D 25 */	bl func_8005CCCC
/* 80469FAC  B0 7E 00 72 */	sth r3, 0x72(r30)
/* 80469FB0  4B BF 2D 45 */	bl fqrand
/* 80469FB4  3C 80 80 64 */	lis r4, lit_461@ha /* 0x806445C4@ha */
/* 80469FB8  3C 60 80 64 */	lis r3, lit_675@ha /* 0x80644648@ha */
/* 80469FBC  C0 44 45 C4 */	lfs f2, lit_461@l(r4)  /* 0x806445C4@l */
/* 80469FC0  C0 03 46 48 */	lfs f0, lit_675@l(r3)  /* 0x80644648@l */
/* 80469FC4  EC 22 00 72 */	fmuls f1, f2, f1
/* 80469FC8  EC 00 00 72 */	fmuls f0, f0, f1
/* 80469FCC  FC 00 00 1E */	fctiwz f0, f0
/* 80469FD0  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80469FD4  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80469FD8  38 03 01 33 */	addi r0, r3, 0x133
/* 80469FDC  B0 1E 00 76 */	sth r0, 0x76(r30)
/* 80469FE0  4B BF 2D 15 */	bl fqrand
/* 80469FE4  3C 80 80 64 */	lis r4, lit_762@ha /* 0x80644664@ha */
/* 80469FE8  7F C3 F3 78 */	mr r3, r30
/* 80469FEC  C0 04 46 64 */	lfs f0, lit_762@l(r4)  /* 0x80644664@l */
/* 80469FF0  7F E5 FB 78 */	mr r5, r31
/* 80469FF4  38 80 00 04 */	li r4, 4
/* 80469FF8  EC 00 00 72 */	fmuls f0, f0, f1
/* 80469FFC  FC 00 00 1E */	fctiwz f0, f0
/* 8046A000  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8046A004  80 C1 00 1C */	lwz r6, 0x1c(r1)
/* 8046A008  38 06 00 28 */	addi r0, r6, 0x28
/* 8046A00C  B0 1E 00 7A */	sth r0, 0x7a(r30)
/* 8046A010  4B FF FE B9 */	bl minsect_kumo_setupAction
/* 8046A014  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8046A018  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8046A01C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8046A020  7C 08 03 A6 */	mtlr r0
/* 8046A024  38 21 00 30 */	addi r1, r1, 0x30
/* 8046A028  4E 80 00 20 */	blr 
