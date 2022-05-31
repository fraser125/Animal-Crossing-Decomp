lbl_80603C70:
/* 80603C70  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80603C74  7C 08 02 A6 */	mflr r0
/* 80603C78  90 01 00 34 */	stw r0, 0x34(r1)
/* 80603C7C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80603C80  7C 7F 1B 78 */	mr r31, r3
/* 80603C84  4B A5 90 71 */	bl fqrand
/* 80603C88  3C 60 80 65 */	lis r3, lit_405@ha /* 0x8064BACC@ha */
/* 80603C8C  C0 03 BA CC */	lfs f0, lit_405@l(r3)  /* 0x8064BACC@l */
/* 80603C90  EC 00 00 72 */	fmuls f0, f0, f1
/* 80603C94  FC 00 00 1E */	fctiwz f0, f0
/* 80603C98  D8 01 00 08 */	stfd f0, 8(r1)
/* 80603C9C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80603CA0  B0 1F 00 22 */	sth r0, 0x22(r31)
/* 80603CA4  4B A5 90 51 */	bl fqrand
/* 80603CA8  3C 60 80 65 */	lis r3, lit_405@ha /* 0x8064BACC@ha */
/* 80603CAC  C0 03 BA CC */	lfs f0, lit_405@l(r3)  /* 0x8064BACC@l */
/* 80603CB0  EC 00 00 72 */	fmuls f0, f0, f1
/* 80603CB4  FC 00 00 1E */	fctiwz f0, f0
/* 80603CB8  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80603CBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80603CC0  B0 1F 00 24 */	sth r0, 0x24(r31)
/* 80603CC4  4B A5 90 31 */	bl fqrand
/* 80603CC8  3C 60 80 65 */	lis r3, lit_405@ha /* 0x8064BACC@ha */
/* 80603CCC  C0 03 BA CC */	lfs f0, lit_405@l(r3)  /* 0x8064BACC@l */
/* 80603CD0  EC 00 00 72 */	fmuls f0, f0, f1
/* 80603CD4  FC 00 00 1E */	fctiwz f0, f0
/* 80603CD8  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80603CDC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80603CE0  B0 1F 00 26 */	sth r0, 0x26(r31)
/* 80603CE4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80603CE8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80603CEC  7C 08 03 A6 */	mtlr r0
/* 80603CF0  38 21 00 30 */	addi r1, r1, 0x30
/* 80603CF4  4E 80 00 20 */	blr 
