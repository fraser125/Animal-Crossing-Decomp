lbl_80431BEC:
/* 80431BEC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80431BF0  7C 08 02 A6 */	mflr r0
/* 80431BF4  90 01 00 44 */	stw r0, 0x44(r1)
/* 80431BF8  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80431BFC  7C 7F 1B 78 */	mr r31, r3
/* 80431C00  80 63 05 A0 */	lwz r3, 0x5a0(r3)
/* 80431C04  80 9F 05 A4 */	lwz r4, 0x5a4(r31)
/* 80431C08  80 1F 05 A8 */	lwz r0, 0x5a8(r31)
/* 80431C0C  90 61 00 14 */	stw r3, 0x14(r1)
/* 80431C10  A8 7F 06 0E */	lha r3, 0x60e(r31)
/* 80431C14  90 81 00 18 */	stw r4, 0x18(r1)
/* 80431C18  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80431C1C  4B F8 8E D5 */	bl sin_s
/* 80431C20  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80431C24  3C 00 43 30 */	lis r0, 0x4330
/* 80431C28  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 80431C2C  3C A0 80 64 */	lis r5, lit_568@ha /* 0x80644284@ha */
/* 80431C30  80 84 00 00 */	lwz r4, 0(r4)
/* 80431C34  3C 60 80 64 */	lis r3, lit_570@ha /* 0x8064428C@ha */
/* 80431C38  90 01 00 20 */	stw r0, 0x20(r1)
/* 80431C3C  A8 04 1B A0 */	lha r0, 0x1ba0(r4)
/* 80431C40  C8 63 42 8C */	lfd f3, lit_570@l(r3)  /* 0x8064428C@l */
/* 80431C44  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80431C48  C0 85 42 84 */	lfs f4, lit_568@l(r5)  /* 0x80644284@l */
/* 80431C4C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80431C50  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80431C54  C8 41 00 20 */	lfd f2, 0x20(r1)
/* 80431C58  A8 7F 06 0E */	lha r3, 0x60e(r31)
/* 80431C5C  EC 42 18 28 */	fsubs f2, f2, f3
/* 80431C60  EC 44 10 2A */	fadds f2, f4, f2
/* 80431C64  EC 22 00 72 */	fmuls f1, f2, f1
/* 80431C68  EC 00 08 2A */	fadds f0, f0, f1
/* 80431C6C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80431C70  4B F8 8E 2D */	bl cos_s
/* 80431C74  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 80431C78  3C 00 43 30 */	lis r0, 0x4330
/* 80431C7C  38 83 61 38 */	addi r4, r3, debug_mode@l /* 0x81166138@l */
/* 80431C80  3C 60 80 64 */	lis r3, lit_570@ha /* 0x8064428C@ha */
/* 80431C84  80 84 00 00 */	lwz r4, 0(r4)
/* 80431C88  38 C3 42 8C */	addi r6, r3, lit_570@l /* 0x8064428C@l */
/* 80431C8C  3C 60 80 64 */	lis r3, lit_568@ha /* 0x80644284@ha */
/* 80431C90  90 01 00 28 */	stw r0, 0x28(r1)
/* 80431C94  A8 04 1B A0 */	lha r0, 0x1ba0(r4)
/* 80431C98  38 E3 42 84 */	addi r7, r3, lit_568@l /* 0x80644284@l */
/* 80431C9C  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 80431CA0  7F E3 FB 78 */	mr r3, r31
/* 80431CA4  6C 04 80 00 */	xoris r4, r0, 0x8000
/* 80431CA8  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80431CAC  90 81 00 2C */	stw r4, 0x2c(r1)
/* 80431CB0  38 81 00 08 */	addi r4, r1, 8
/* 80431CB4  C8 46 00 00 */	lfd f2, 0(r6)
/* 80431CB8  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80431CBC  C0 67 00 00 */	lfs f3, 0(r7)
/* 80431CC0  EC 40 10 28 */	fsubs f2, f0, f2
/* 80431CC4  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80431CC8  90 A1 00 08 */	stw r5, 8(r1)
/* 80431CCC  EC 43 10 2A */	fadds f2, f3, f2
/* 80431CD0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80431CD4  EC 22 00 72 */	fmuls f1, f2, f1
/* 80431CD8  EC 00 08 2A */	fadds f0, f0, f1
/* 80431CDC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80431CE0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80431CE4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80431CE8  4B FF FE 11 */	bl mfish_PosWallCheck
/* 80431CEC  30 03 FF FF */	addic r0, r3, -1
/* 80431CF0  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80431CF4  7C 60 19 10 */	subfe r3, r0, r3
/* 80431CF8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80431CFC  7C 08 03 A6 */	mtlr r0
/* 80431D00  38 21 00 40 */	addi r1, r1, 0x40
/* 80431D04  4E 80 00 20 */	blr 
