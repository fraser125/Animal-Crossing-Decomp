lbl_8053EF8C:
/* 8053EF8C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8053EF90  7C 08 02 A6 */	mflr r0
/* 8053EF94  90 01 00 24 */	stw r0, 0x24(r1)
/* 8053EF98  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8053EF9C  3B E0 00 01 */	li r31, 1
/* 8053EFA0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8053EFA4  7C 7E 1B 78 */	mr r30, r3
/* 8053EFA8  C0 23 09 04 */	lfs f1, 0x904(r3)
/* 8053EFAC  C0 03 09 0C */	lfs f0, 0x90c(r3)
/* 8053EFB0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8053EFB4  40 82 00 58 */	bne lbl_8053F00C
/* 8053EFB8  C0 3E 09 08 */	lfs f1, 0x908(r30)
/* 8053EFBC  C0 1E 09 10 */	lfs f0, 0x910(r30)
/* 8053EFC0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8053EFC4  40 82 00 48 */	bne lbl_8053F00C
/* 8053EFC8  A8 BE 08 00 */	lha r5, 0x800(r30)
/* 8053EFCC  3C 80 43 30 */	lis r4, 0x4330
/* 8053EFD0  A8 1E 08 02 */	lha r0, 0x802(r30)
/* 8053EFD4  3C C0 80 65 */	lis r6, lit_811@ha /* 0x80649384@ha */
/* 8053EFD8  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 8053EFDC  90 81 00 08 */	stw r4, 8(r1)
/* 8053EFE0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8053EFE4  C8 46 93 84 */	lfd f2, lit_811@l(r6)  /* 0x80649384@l */
/* 8053EFE8  90 A1 00 0C */	stw r5, 0xc(r1)
/* 8053EFEC  C8 01 00 08 */	lfd f0, 8(r1)
/* 8053EFF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053EFF4  EC 20 10 28 */	fsubs f1, f0, f2
/* 8053EFF8  90 81 00 10 */	stw r4, 0x10(r1)
/* 8053EFFC  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8053F000  EC 40 10 28 */	fsubs f2, f0, f2
/* 8053F004  4B FF EB 25 */	bl aNPC_set_dst_pos
/* 8053F008  48 00 00 48 */	b lbl_8053F050
lbl_8053F00C:
/* 8053F00C  A8 7E 08 00 */	lha r3, 0x800(r30)
/* 8053F010  3C 00 43 30 */	lis r0, 0x4330
/* 8053F014  3C 80 80 65 */	lis r4, lit_811@ha /* 0x80649384@ha */
/* 8053F018  90 01 00 10 */	stw r0, 0x10(r1)
/* 8053F01C  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8053F020  C8 24 93 84 */	lfd f1, lit_811@l(r4)  /* 0x80649384@l */
/* 8053F024  90 61 00 14 */	stw r3, 0x14(r1)
/* 8053F028  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8053F02C  90 01 00 08 */	stw r0, 8(r1)
/* 8053F030  EC 00 08 28 */	fsubs f0, f0, f1
/* 8053F034  D0 1E 09 04 */	stfs f0, 0x904(r30)
/* 8053F038  A8 1E 08 02 */	lha r0, 0x802(r30)
/* 8053F03C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8053F040  90 01 00 0C */	stw r0, 0xc(r1)
/* 8053F044  C8 01 00 08 */	lfd f0, 8(r1)
/* 8053F048  EC 00 08 28 */	fsubs f0, f0, f1
/* 8053F04C  D0 1E 09 08 */	stfs f0, 0x908(r30)
lbl_8053F050:
/* 8053F050  7F C3 F3 78 */	mr r3, r30
/* 8053F054  4B FF EA 65 */	bl aNPC_set_mv_angl
/* 8053F058  7F C3 F3 78 */	mr r3, r30
/* 8053F05C  4B FF FA 75 */	bl aNPC_check_arrive_destination
/* 8053F060  2C 03 00 01 */	cmpwi r3, 1
/* 8053F064  40 82 00 08 */	bne lbl_8053F06C
/* 8053F068  3B E0 00 00 */	li r31, 0
lbl_8053F06C:
/* 8053F06C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8053F070  7F E3 FB 78 */	mr r3, r31
/* 8053F074  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8053F078  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8053F07C  7C 08 03 A6 */	mtlr r0
/* 8053F080  38 21 00 20 */	addi r1, r1, 0x20
/* 8053F084  4E 80 00 20 */	blr 
