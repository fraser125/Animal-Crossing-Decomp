lbl_80464350:
/* 80464350  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80464354  7C 08 02 A6 */	mflr r0
/* 80464358  90 01 00 24 */	stw r0, 0x24(r1)
/* 8046435C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80464360  7C 7F 1B 78 */	mr r31, r3
/* 80464364  4B BF 89 91 */	bl fqrand
/* 80464368  3C 60 80 64 */	lis r3, lit_823@ha /* 0x8064469C@ha */
/* 8046436C  C0 03 46 9C */	lfs f0, lit_823@l(r3)  /* 0x8064469C@l */
/* 80464370  EC 00 00 72 */	fmuls f0, f0, f1
/* 80464374  FC 00 00 1E */	fctiwz f0, f0
/* 80464378  D8 01 00 08 */	stfd f0, 8(r1)
/* 8046437C  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80464380  38 03 00 28 */	addi r0, r3, 0x28
/* 80464384  B0 1F 00 6E */	sth r0, 0x6e(r31)
/* 80464388  A8 1F 00 8E */	lha r0, 0x8e(r31)
/* 8046438C  2C 00 00 00 */	cmpwi r0, 0
/* 80464390  40 82 00 10 */	bne lbl_804643A0
/* 80464394  A8 1F 00 6E */	lha r0, 0x6e(r31)
/* 80464398  1C 00 00 0A */	mulli r0, r0, 0xa
/* 8046439C  B0 1F 00 6E */	sth r0, 0x6e(r31)
lbl_804643A0:
/* 804643A0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804643A4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804643A8  7C 08 03 A6 */	mtlr r0
/* 804643AC  38 21 00 20 */	addi r1, r1, 0x20
/* 804643B0  4E 80 00 20 */	blr 