lbl_8045D914:
/* 8045D914  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8045D918  7C 08 02 A6 */	mflr r0
/* 8045D91C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8045D920  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8045D924  7C 7F 1B 78 */	mr r31, r3
/* 8045D928  3C 60 80 64 */	lis r3, base_high_tbl@ha /* 0x806445A0@ha */
/* 8045D92C  80 1F 00 00 */	lwz r0, 0(r31)
/* 8045D930  38 63 45 A0 */	addi r3, r3, base_high_tbl@l /* 0x806445A0@l */
/* 8045D934  54 00 10 3A */	slwi r0, r0, 2
/* 8045D938  7C 03 04 2E */	lfsx f0, r3, r0
/* 8045D93C  D0 1F 00 58 */	stfs f0, 0x58(r31)
/* 8045D940  80 1F 00 00 */	lwz r0, 0(r31)
/* 8045D944  2C 00 00 03 */	cmpwi r0, 3
/* 8045D948  41 82 00 28 */	beq lbl_8045D970
/* 8045D94C  3C 60 81 1D */	lis r3, data_811CDFD0@ha /* 0x811CDFD0@ha */
/* 8045D950  A8 1F 00 74 */	lha r0, 0x74(r31)
/* 8045D954  38 83 DF D0 */	addi r4, r3, data_811CDFD0@l /* 0x811CDFD0@l */
/* 8045D958  80 84 00 00 */	lwz r4, 0(r4)
/* 8045D95C  38 60 00 01 */	li r3, 1
/* 8045D960  7C 60 00 30 */	slw r0, r3, r0
/* 8045D964  A8 64 2F 9C */	lha r3, 0x2f9c(r4)
/* 8045D968  7C 60 00 78 */	andc r0, r3, r0
/* 8045D96C  B0 04 2F 9C */	sth r0, 0x2f9c(r4)
lbl_8045D970:
/* 8045D970  3C 60 80 64 */	lis r3, lit_460@ha /* 0x806445C0@ha */
/* 8045D974  3C 80 80 46 */	lis r4, minsect_chou_fly_process@ha /* 0x8045D9F4@ha */
/* 8045D978  38 A3 45 C0 */	addi r5, r3, lit_460@l /* 0x806445C0@l */
/* 8045D97C  C0 25 00 00 */	lfs f1, 0(r5)
/* 8045D980  3C 60 80 64 */	lis r3, lit_465@ha /* 0x806445D4@ha */
/* 8045D984  38 04 D9 F4 */	addi r0, r4, minsect_chou_fly_process@l /* 0x8045D9F4@l */
/* 8045D988  C0 03 45 D4 */	lfs f0, lit_465@l(r3)  /* 0x806445D4@l */
/* 8045D98C  D0 3F 00 10 */	stfs f1, 0x10(r31)
/* 8045D990  90 1F 00 04 */	stw r0, 4(r31)
/* 8045D994  D0 1F 00 40 */	stfs f0, 0x40(r31)
/* 8045D998  4B BF F3 5D */	bl fqrand
/* 8045D99C  3C 60 80 64 */	lis r3, lit_507@ha /* 0x806445EC@ha */
/* 8045D9A0  3C 80 80 64 */	lis r4, lit_506@ha /* 0x806445E8@ha */
/* 8045D9A4  38 A3 45 EC */	addi r5, r3, lit_507@l /* 0x806445EC@l */
/* 8045D9A8  C0 44 45 E8 */	lfs f2, lit_506@l(r4)  /* 0x806445E8@l */
/* 8045D9AC  C0 65 00 00 */	lfs f3, 0(r5)
/* 8045D9B0  3C 60 80 64 */	lis r3, lit_462@ha /* 0x806445C8@ha */
/* 8045D9B4  C0 03 45 C8 */	lfs f0, lit_462@l(r3)  /* 0x806445C8@l */
/* 8045D9B8  EC 23 08 2A */	fadds f1, f3, f1
/* 8045D9BC  EC 22 00 72 */	fmuls f1, f2, f1
/* 8045D9C0  D0 3F 00 38 */	stfs f1, 0x38(r31)
/* 8045D9C4  D0 1F 00 48 */	stfs f0, 0x48(r31)
/* 8045D9C8  80 1F 00 00 */	lwz r0, 0(r31)
/* 8045D9CC  2C 00 00 03 */	cmpwi r0, 3
/* 8045D9D0  40 82 00 10 */	bne lbl_8045D9E0
/* 8045D9D4  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 8045D9D8  EC 00 18 2A */	fadds f0, f0, f3
/* 8045D9DC  D0 1F 00 24 */	stfs f0, 0x24(r31)
lbl_8045D9E0:
/* 8045D9E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8045D9E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8045D9E8  7C 08 03 A6 */	mtlr r0
/* 8045D9EC  38 21 00 10 */	addi r1, r1, 0x10
/* 8045D9F0  4E 80 00 20 */	blr 
