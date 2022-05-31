lbl_8045C88C:
/* 8045C88C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8045C890  7C 08 02 A6 */	mflr r0
/* 8045C894  3C E0 80 64 */	lis r7, base_high_tbl@ha /* 0x806445A0@ha */
/* 8045C898  3C A0 80 64 */	lis r5, lit_459@ha /* 0x806445BC@ha */
/* 8045C89C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8045C8A0  38 E7 45 A0 */	addi r7, r7, base_high_tbl@l /* 0x806445A0@l */
/* 8045C8A4  3C C0 80 66 */	lis r6, data_8065F050@ha /* 0x8065F050@ha */
/* 8045C8A8  C0 25 45 BC */	lfs f1, lit_459@l(r5)  /* 0x806445BC@l */
/* 8045C8AC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8045C8B0  7C 9F 23 78 */	mr r31, r4
/* 8045C8B4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8045C8B8  7C 7E 1B 78 */	mr r30, r3
/* 8045C8BC  80 03 00 00 */	lwz r0, 0(r3)
/* 8045C8C0  3C 60 80 64 */	lis r3, lit_460@ha /* 0x806445C0@ha */
/* 8045C8C4  54 00 10 3A */	slwi r0, r0, 2
/* 8045C8C8  7C 07 04 2E */	lfsx f0, r7, r0
/* 8045C8CC  D0 1E 00 58 */	stfs f0, 0x58(r30)
/* 8045C8D0  C0 03 45 C0 */	lfs f0, lit_460@l(r3)  /* 0x806445C0@l */
/* 8045C8D4  84 86 F0 50 */	lwzu r4, data_8065F050@l(r6)  /* 0x8065F050@l */
/* 8045C8D8  80 06 00 04 */	lwz r0, 4(r6)
/* 8045C8DC  90 9E 00 34 */	stw r4, 0x34(r30)
/* 8045C8E0  90 1E 00 38 */	stw r0, 0x38(r30)
/* 8045C8E4  80 06 00 08 */	lwz r0, 8(r6)
/* 8045C8E8  90 1E 00 3C */	stw r0, 0x3c(r30)
/* 8045C8EC  D0 3E 00 0C */	stfs f1, 0xc(r30)
/* 8045C8F0  D0 1E 00 10 */	stfs f0, 0x10(r30)
/* 8045C8F4  4B C0 04 01 */	bl fqrand
/* 8045C8F8  3C 60 80 64 */	lis r3, lit_461@ha /* 0x806445C4@ha */
/* 8045C8FC  3C 80 80 66 */	lis r4, data_8065F050@ha /* 0x8065F050@ha */
/* 8045C900  38 A3 45 C4 */	addi r5, r3, lit_461@l /* 0x806445C4@l */
/* 8045C904  C0 45 00 00 */	lfs f2, 0(r5)
/* 8045C908  3C 60 80 64 */	lis r3, lit_462@ha /* 0x806445C8@ha */
/* 8045C90C  C0 03 45 C8 */	lfs f0, lit_462@l(r3)  /* 0x806445C8@l */
/* 8045C910  EC 22 00 72 */	fmuls f1, f2, f1
/* 8045C914  FC 20 08 1E */	fctiwz f1, f1
/* 8045C918  D8 21 00 08 */	stfd f1, 8(r1)
/* 8045C91C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8045C920  B0 1E 00 70 */	sth r0, 0x70(r30)
/* 8045C924  84 64 F0 50 */	lwzu r3, data_8065F050@l(r4)  /* 0x8065F050@l */
/* 8045C928  80 04 00 04 */	lwz r0, 4(r4)
/* 8045C92C  90 7E 00 44 */	stw r3, 0x44(r30)
/* 8045C930  90 1E 00 48 */	stw r0, 0x48(r30)
/* 8045C934  80 04 00 08 */	lwz r0, 8(r4)
/* 8045C938  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 8045C93C  D0 1E 00 48 */	stfs f0, 0x48(r30)
/* 8045C940  A8 1E 00 8E */	lha r0, 0x8e(r30)
/* 8045C944  2C 00 00 01 */	cmpwi r0, 1
/* 8045C948  40 82 00 B0 */	bne lbl_8045C9F8
/* 8045C94C  3C 60 80 64 */	lis r3, init_center_pos_450@ha /* 0x806445B0@ha */
/* 8045C950  38 83 45 B0 */	addi r4, r3, init_center_pos_450@l /* 0x806445B0@l */
/* 8045C954  80 04 00 00 */	lwz r0, 0(r4)
/* 8045C958  80 64 00 04 */	lwz r3, 4(r4)
/* 8045C95C  90 1E 00 1C */	stw r0, 0x1c(r30)
/* 8045C960  80 04 00 08 */	lwz r0, 8(r4)
/* 8045C964  90 7E 00 20 */	stw r3, 0x20(r30)
/* 8045C968  90 1E 00 24 */	stw r0, 0x24(r30)
/* 8045C96C  4B C0 03 C1 */	bl fqrand2
/* 8045C970  3C 60 80 64 */	lis r3, lit_463@ha /* 0x806445CC@ha */
/* 8045C974  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 8045C978  C0 43 45 CC */	lfs f2, lit_463@l(r3)  /* 0x806445CC@l */
/* 8045C97C  EC 22 00 72 */	fmuls f1, f2, f1
/* 8045C980  EC 00 08 2A */	fadds f0, f0, f1
/* 8045C984  D0 1E 00 1C */	stfs f0, 0x1c(r30)
/* 8045C988  4B C0 03 A5 */	bl fqrand2
/* 8045C98C  3C 80 80 64 */	lis r4, lit_464@ha /* 0x806445D0@ha */
/* 8045C990  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 8045C994  C0 44 45 D0 */	lfs f2, lit_464@l(r4)  /* 0x806445D0@l */
/* 8045C998  3C 60 80 66 */	lis r3, ZeroSVec@ha /* 0x8065F05C@ha */
/* 8045C99C  EC 22 00 72 */	fmuls f1, f2, f1
/* 8045C9A0  EC 00 08 2A */	fadds f0, f0, f1
/* 8045C9A4  D0 1E 00 24 */	stfs f0, 0x24(r30)
/* 8045C9A8  84 03 F0 5C */	lwzu r0, ZeroSVec@l(r3)  /* 0x8065F05C@l */
/* 8045C9AC  90 1E 00 68 */	stw r0, 0x68(r30)
/* 8045C9B0  A0 03 00 04 */	lhz r0, 4(r3)
/* 8045C9B4  B0 1E 00 6C */	sth r0, 0x6c(r30)
/* 8045C9B8  4B C0 03 15 */	bl func_8005CCCC
/* 8045C9BC  B0 7E 00 6A */	sth r3, 0x6a(r30)
/* 8045C9C0  4B C0 03 35 */	bl fqrand
/* 8045C9C4  3C 80 80 64 */	lis r4, lit_461@ha /* 0x806445C4@ha */
/* 8045C9C8  3C 60 80 64 */	lis r3, lit_465@ha /* 0x806445D4@ha */
/* 8045C9CC  C0 64 45 C4 */	lfs f3, lit_461@l(r4)  /* 0x806445C4@l */
/* 8045C9D0  7F E4 FB 78 */	mr r4, r31
/* 8045C9D4  C0 03 45 D4 */	lfs f0, lit_465@l(r3)  /* 0x806445D4@l */
/* 8045C9D8  7F C3 F3 78 */	mr r3, r30
/* 8045C9DC  EC 23 00 72 */	fmuls f1, f3, f1
/* 8045C9E0  C0 5E 00 58 */	lfs f2, 0x58(r30)
/* 8045C9E4  EC 22 08 2A */	fadds f1, f2, f1
/* 8045C9E8  D0 3E 00 20 */	stfs f1, 0x20(r30)
/* 8045C9EC  D0 1E 00 40 */	stfs f0, 0x40(r30)
/* 8045C9F0  48 00 01 05 */	bl minsect_chou_normal_process_init
/* 8045C9F4  48 00 00 E8 */	b lbl_8045CADC
lbl_8045C9F8:
/* 8045C9F8  80 1E 00 00 */	lwz r0, 0(r30)
/* 8045C9FC  2C 00 00 02 */	cmpwi r0, 2
/* 8045CA00  41 81 00 78 */	bgt lbl_8045CA78
/* 8045CA04  1C A0 00 0C */	mulli r5, r0, 0xc
/* 8045CA08  3C 80 80 68 */	lis r4, flower_pos@ha /* 0x806869AC@ha */
/* 8045CA0C  3C 60 80 66 */	lis r3, ZeroSVec@ha /* 0x8065F05C@ha */
/* 8045CA10  38 04 69 AC */	addi r0, r4, flower_pos@l /* 0x806869AC@l */
/* 8045CA14  7C A0 2A 14 */	add r5, r0, r5
/* 8045CA18  80 85 00 00 */	lwz r4, 0(r5)
/* 8045CA1C  80 05 00 04 */	lwz r0, 4(r5)
/* 8045CA20  90 9E 00 1C */	stw r4, 0x1c(r30)
/* 8045CA24  90 1E 00 20 */	stw r0, 0x20(r30)
/* 8045CA28  80 05 00 08 */	lwz r0, 8(r5)
/* 8045CA2C  90 1E 00 24 */	stw r0, 0x24(r30)
/* 8045CA30  84 03 F0 5C */	lwzu r0, ZeroSVec@l(r3)  /* 0x8065F05C@l */
/* 8045CA34  90 1E 00 68 */	stw r0, 0x68(r30)
/* 8045CA38  A0 03 00 04 */	lhz r0, 4(r3)
/* 8045CA3C  B0 1E 00 6C */	sth r0, 0x6c(r30)
/* 8045CA40  4B C0 02 8D */	bl func_8005CCCC
/* 8045CA44  B0 7E 00 6A */	sth r3, 0x6a(r30)
/* 8045CA48  3C 60 81 1D */	lis r3, data_811CDFD0@ha /* 0x811CDFD0@ha */
/* 8045CA4C  38 83 DF D0 */	addi r4, r3, data_811CDFD0@l /* 0x811CDFD0@l */
/* 8045CA50  80 1E 00 00 */	lwz r0, 0(r30)
/* 8045CA54  38 60 00 01 */	li r3, 1
/* 8045CA58  B0 1E 00 74 */	sth r0, 0x74(r30)
/* 8045CA5C  80 A4 00 00 */	lwz r5, 0(r4)
/* 8045CA60  A8 1E 00 74 */	lha r0, 0x74(r30)
/* 8045CA64  A8 85 2F 9C */	lha r4, 0x2f9c(r5)
/* 8045CA68  7C 60 00 30 */	slw r0, r3, r0
/* 8045CA6C  7C 80 03 78 */	or r0, r4, r0
/* 8045CA70  B0 05 2F 9C */	sth r0, 0x2f9c(r5)
/* 8045CA74  48 00 00 44 */	b lbl_8045CAB8
lbl_8045CA78:
/* 8045CA78  3C 80 80 68 */	lis r4, ohmurasaki_tree_pos@ha /* 0x80686A0C@ha */
/* 8045CA7C  3C 60 80 66 */	lis r3, ZeroSVec@ha /* 0x8065F05C@ha */
/* 8045CA80  38 C4 6A 0C */	addi r6, r4, ohmurasaki_tree_pos@l /* 0x80686A0C@l */
/* 8045CA84  38 00 80 00 */	li r0, -32768
/* 8045CA88  80 A6 00 00 */	lwz r5, 0(r6)
/* 8045CA8C  38 83 F0 5C */	addi r4, r3, ZeroSVec@l /* 0x8065F05C@l */
/* 8045CA90  80 66 00 04 */	lwz r3, 4(r6)
/* 8045CA94  90 BE 00 1C */	stw r5, 0x1c(r30)
/* 8045CA98  90 7E 00 20 */	stw r3, 0x20(r30)
/* 8045CA9C  80 66 00 08 */	lwz r3, 8(r6)
/* 8045CAA0  90 7E 00 24 */	stw r3, 0x24(r30)
/* 8045CAA4  80 64 00 00 */	lwz r3, 0(r4)
/* 8045CAA8  90 7E 00 68 */	stw r3, 0x68(r30)
/* 8045CAAC  A0 64 00 04 */	lhz r3, 4(r4)
/* 8045CAB0  B0 7E 00 6C */	sth r3, 0x6c(r30)
/* 8045CAB4  B0 1E 00 6A */	sth r0, 0x6a(r30)
lbl_8045CAB8:
/* 8045CAB8  3C 80 80 64 */	lis r4, lit_459@ha /* 0x806445BC@ha */
/* 8045CABC  7F C3 F3 78 */	mr r3, r30
/* 8045CAC0  38 A4 45 BC */	addi r5, r4, lit_459@l /* 0x806445BC@l */
/* 8045CAC4  7F E4 FB 78 */	mr r4, r31
/* 8045CAC8  C0 05 00 00 */	lfs f0, 0(r5)
/* 8045CACC  D0 1E 00 40 */	stfs f0, 0x40(r30)
/* 8045CAD0  48 00 07 45 */	bl minsect_chou_flower_process_init
/* 8045CAD4  38 00 80 00 */	li r0, -32768
/* 8045CAD8  B0 1E 00 76 */	sth r0, 0x76(r30)
lbl_8045CADC:
/* 8045CADC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8045CAE0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8045CAE4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8045CAE8  7C 08 03 A6 */	mtlr r0
/* 8045CAEC  38 21 00 20 */	addi r1, r1, 0x20
/* 8045CAF0  4E 80 00 20 */	blr 
