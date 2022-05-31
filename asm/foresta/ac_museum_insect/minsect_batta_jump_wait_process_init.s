lbl_80461C98:
/* 80461C98  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80461C9C  7C 08 02 A6 */	mflr r0
/* 80461CA0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80461CA4  38 00 00 00 */	li r0, 0
/* 80461CA8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80461CAC  7C 7F 1B 78 */	mr r31, r3
/* 80461CB0  B0 03 00 74 */	sth r0, 0x74(r3)
/* 80461CB4  4B BF B0 41 */	bl fqrand
/* 80461CB8  3C 60 80 64 */	lis r3, lit_762@ha /* 0x80644664@ha */
/* 80461CBC  C0 03 46 64 */	lfs f0, lit_762@l(r3)  /* 0x80644664@l */
/* 80461CC0  EC 00 00 72 */	fmuls f0, f0, f1
/* 80461CC4  FC 00 00 1E */	fctiwz f0, f0
/* 80461CC8  D8 01 00 08 */	stfd f0, 8(r1)
/* 80461CCC  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80461CD0  38 03 00 78 */	addi r0, r3, 0x78
/* 80461CD4  B0 1F 00 6E */	sth r0, 0x6e(r31)
/* 80461CD8  A8 1F 00 8E */	lha r0, 0x8e(r31)
/* 80461CDC  2C 00 00 00 */	cmpwi r0, 0
/* 80461CE0  40 82 00 10 */	bne lbl_80461CF0
/* 80461CE4  A8 1F 00 6E */	lha r0, 0x6e(r31)
/* 80461CE8  1C 00 00 05 */	mulli r0, r0, 5
/* 80461CEC  B0 1F 00 6E */	sth r0, 0x6e(r31)
lbl_80461CF0:
/* 80461CF0  3C 60 80 46 */	lis r3, minsect_batta_jump_wait_process@ha /* 0x80461D18@ha */
/* 80461CF4  38 00 00 00 */	li r0, 0
/* 80461CF8  38 63 1D 18 */	addi r3, r3, minsect_batta_jump_wait_process@l /* 0x80461D18@l */
/* 80461CFC  90 7F 00 04 */	stw r3, 4(r31)
/* 80461D00  B0 1F 00 78 */	sth r0, 0x78(r31)
/* 80461D04  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80461D08  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80461D0C  7C 08 03 A6 */	mtlr r0
/* 80461D10  38 21 00 20 */	addi r1, r1, 0x20
/* 80461D14  4E 80 00 20 */	blr 
