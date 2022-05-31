lbl_8040FE4C:
/* 8040FE4C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8040FE50  7C 08 02 A6 */	mflr r0
/* 8040FE54  3C C0 80 64 */	lis r6, lit_597@ha /* 0x80643808@ha */
/* 8040FE58  3C A0 80 64 */	lis r5, lit_587@ha /* 0x80643804@ha */
/* 8040FE5C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8040FE60  C0 26 38 08 */	lfs f1, lit_597@l(r6)  /* 0x80643808@l */
/* 8040FE64  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8040FE68  7C 7F 1B 78 */	mr r31, r3
/* 8040FE6C  C0 45 38 04 */	lfs f2, lit_587@l(r5)  /* 0x80643804@l */
/* 8040FE70  38 7F 01 8C */	addi r3, r31, 0x18c
/* 8040FE74  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8040FE78  7C 9E 23 78 */	mr r30, r4
/* 8040FE7C  4B FF F8 E5 */	bl func_8040F760
/* 8040FE80  3C 60 80 64 */	lis r3, lit_523@ha /* 0x806437E0@ha */
/* 8040FE84  3C 80 80 64 */	lis r4, lit_586@ha /* 0x80643800@ha */
/* 8040FE88  38 A3 37 E0 */	addi r5, r3, lit_523@l /* 0x806437E0@l */
/* 8040FE8C  C0 44 38 00 */	lfs f2, lit_586@l(r4)  /* 0x80643800@l */
/* 8040FE90  C0 25 00 00 */	lfs f1, 0(r5)
/* 8040FE94  38 7F 01 78 */	addi r3, r31, 0x178
/* 8040FE98  4B FF F8 C9 */	bl func_8040F760
/* 8040FE9C  3C 60 80 64 */	lis r3, lit_587@ha /* 0x80643804@ha */
/* 8040FEA0  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 8040FEA4  C0 03 38 04 */	lfs f0, lit_587@l(r3)  /* 0x80643804@l */
/* 8040FEA8  EC 01 00 28 */	fsubs f0, f1, f0
/* 8040FEAC  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 8040FEB0  88 1F 00 98 */	lbz r0, 0x98(r31)
/* 8040FEB4  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 8040FEB8  41 82 00 60 */	beq lbl_8040FF18
/* 8040FEBC  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 8040FEC0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8040FEC4  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 8040FEC8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8040FECC  3C 63 00 02 */	addis r3, r3, 2
/* 8040FED0  7F C7 F3 78 */	mr r7, r30
/* 8040FED4  90 81 00 08 */	stw r4, 8(r1)
/* 8040FED8  38 81 00 08 */	addi r4, r1, 8
/* 8040FEDC  80 C3 60 9C */	lwz r6, 0x609c(r3)
/* 8040FEE0  38 60 00 01 */	li r3, 1
/* 8040FEE4  90 01 00 0C */	stw r0, 0xc(r1)
/* 8040FEE8  38 A0 00 01 */	li r5, 1
/* 8040FEEC  39 20 00 00 */	li r9, 0
/* 8040FEF0  39 40 00 08 */	li r10, 8
/* 8040FEF4  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 8040FEF8  90 01 00 10 */	stw r0, 0x10(r1)
/* 8040FEFC  81 86 00 00 */	lwz r12, 0(r6)
/* 8040FF00  A8 DF 00 36 */	lha r6, 0x36(r31)
/* 8040FF04  A1 1F 00 06 */	lhz r8, 6(r31)
/* 8040FF08  7D 89 03 A6 */	mtctr r12
/* 8040FF0C  4E 80 04 21 */	bctrl 
/* 8040FF10  38 00 00 05 */	li r0, 5
/* 8040FF14  B0 1F 01 74 */	sth r0, 0x174(r31)
lbl_8040FF18:
/* 8040FF18  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8040FF1C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8040FF20  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8040FF24  7C 08 03 A6 */	mtlr r0
/* 8040FF28  38 21 00 20 */	addi r1, r1, 0x20
/* 8040FF2C  4E 80 00 20 */	blr 
