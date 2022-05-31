lbl_8040FD68:
/* 8040FD68  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8040FD6C  7C 08 02 A6 */	mflr r0
/* 8040FD70  3C C0 80 64 */	lis r6, lit_521@ha /* 0x806437D8@ha */
/* 8040FD74  3C A0 80 64 */	lis r5, lit_522@ha /* 0x806437DC@ha */
/* 8040FD78  90 01 00 24 */	stw r0, 0x24(r1)
/* 8040FD7C  C0 26 37 D8 */	lfs f1, lit_521@l(r6)  /* 0x806437D8@l */
/* 8040FD80  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8040FD84  7C 7F 1B 78 */	mr r31, r3
/* 8040FD88  C0 45 37 DC */	lfs f2, lit_522@l(r5)  /* 0x806437DC@l */
/* 8040FD8C  38 7F 01 8C */	addi r3, r31, 0x18c
/* 8040FD90  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8040FD94  7C 9E 23 78 */	mr r30, r4
/* 8040FD98  4B FF F9 C9 */	bl func_8040F760
/* 8040FD9C  3C 60 80 64 */	lis r3, lit_585@ha /* 0x806437FC@ha */
/* 8040FDA0  3C 80 80 64 */	lis r4, lit_586@ha /* 0x80643800@ha */
/* 8040FDA4  38 A3 37 FC */	addi r5, r3, lit_585@l /* 0x806437FC@l */
/* 8040FDA8  C0 44 38 00 */	lfs f2, lit_586@l(r4)  /* 0x80643800@l */
/* 8040FDAC  C0 25 00 00 */	lfs f1, 0(r5)
/* 8040FDB0  38 7F 01 78 */	addi r3, r31, 0x178
/* 8040FDB4  4B FF F9 AD */	bl func_8040F760
/* 8040FDB8  3C 60 80 64 */	lis r3, lit_587@ha /* 0x80643804@ha */
/* 8040FDBC  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 8040FDC0  C0 03 38 04 */	lfs f0, lit_587@l(r3)  /* 0x80643804@l */
/* 8040FDC4  EC 01 00 28 */	fsubs f0, f1, f0
/* 8040FDC8  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 8040FDCC  88 1F 00 98 */	lbz r0, 0x98(r31)
/* 8040FDD0  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 8040FDD4  41 82 00 60 */	beq lbl_8040FE34
/* 8040FDD8  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 8040FDDC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8040FDE0  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 8040FDE4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8040FDE8  3C 63 00 02 */	addis r3, r3, 2
/* 8040FDEC  7F C7 F3 78 */	mr r7, r30
/* 8040FDF0  90 81 00 08 */	stw r4, 8(r1)
/* 8040FDF4  38 81 00 08 */	addi r4, r1, 8
/* 8040FDF8  80 C3 60 9C */	lwz r6, 0x609c(r3)
/* 8040FDFC  38 60 00 01 */	li r3, 1
/* 8040FE00  90 01 00 0C */	stw r0, 0xc(r1)
/* 8040FE04  38 A0 00 01 */	li r5, 1
/* 8040FE08  39 20 00 00 */	li r9, 0
/* 8040FE0C  39 40 00 08 */	li r10, 8
/* 8040FE10  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 8040FE14  90 01 00 10 */	stw r0, 0x10(r1)
/* 8040FE18  81 86 00 00 */	lwz r12, 0(r6)
/* 8040FE1C  A8 DF 00 36 */	lha r6, 0x36(r31)
/* 8040FE20  A1 1F 00 06 */	lhz r8, 6(r31)
/* 8040FE24  7D 89 03 A6 */	mtctr r12
/* 8040FE28  4E 80 04 21 */	bctrl 
/* 8040FE2C  38 00 00 05 */	li r0, 5
/* 8040FE30  B0 1F 01 74 */	sth r0, 0x174(r31)
lbl_8040FE34:
/* 8040FE34  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8040FE38  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8040FE3C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8040FE40  7C 08 03 A6 */	mtlr r0
/* 8040FE44  38 21 00 20 */	addi r1, r1, 0x20
/* 8040FE48  4E 80 00 20 */	blr 
