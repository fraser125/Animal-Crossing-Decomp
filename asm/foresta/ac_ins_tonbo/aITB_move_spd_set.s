lbl_805A0B60:
/* 805A0B60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A0B64  7C 08 02 A6 */	mflr r0
/* 805A0B68  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A0B6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A0B70  7C 7F 1B 78 */	mr r31, r3
/* 805A0B74  80 03 01 D0 */	lwz r0, 0x1d0(r3)
/* 805A0B78  2C 00 00 0C */	cmpwi r0, 0xc
/* 805A0B7C  41 82 00 14 */	beq lbl_805A0B90
/* 805A0B80  40 80 00 60 */	bge lbl_805A0BE0
/* 805A0B84  2C 00 00 0B */	cmpwi r0, 0xb
/* 805A0B88  40 80 00 2C */	bge lbl_805A0BB4
/* 805A0B8C  48 00 00 54 */	b lbl_805A0BE0
lbl_805A0B90:
/* 805A0B90  4B AB C1 65 */	bl fqrand
/* 805A0B94  3C 80 80 65 */	lis r4, lit_526@ha /* 0x8064A2F0@ha */
/* 805A0B98  3C 60 80 65 */	lis r3, lit_525@ha /* 0x8064A2EC@ha */
/* 805A0B9C  C0 44 A2 F0 */	lfs f2, lit_526@l(r4)  /* 0x8064A2F0@l */
/* 805A0BA0  C0 03 A2 EC */	lfs f0, lit_525@l(r3)  /* 0x8064A2EC@l */
/* 805A0BA4  EC 22 00 72 */	fmuls f1, f2, f1
/* 805A0BA8  EC 00 08 2A */	fadds f0, f0, f1
/* 805A0BAC  D0 1F 01 EC */	stfs f0, 0x1ec(r31)
/* 805A0BB0  48 00 00 50 */	b lbl_805A0C00
lbl_805A0BB4:
/* 805A0BB4  4B AB C1 41 */	bl fqrand
/* 805A0BB8  3C 80 80 65 */	lis r4, lit_526@ha /* 0x8064A2F0@ha */
/* 805A0BBC  3C 60 80 65 */	lis r3, lit_527@ha /* 0x8064A2F4@ha */
/* 805A0BC0  C0 44 A2 F0 */	lfs f2, lit_526@l(r4)  /* 0x8064A2F0@l */
/* 805A0BC4  38 00 00 18 */	li r0, 0x18
/* 805A0BC8  C0 03 A2 F4 */	lfs f0, lit_527@l(r3)  /* 0x8064A2F4@l */
/* 805A0BCC  EC 22 00 72 */	fmuls f1, f2, f1
/* 805A0BD0  EC 00 08 2A */	fadds f0, f0, f1
/* 805A0BD4  D0 1F 01 EC */	stfs f0, 0x1ec(r31)
/* 805A0BD8  90 1F 02 28 */	stw r0, 0x228(r31)
/* 805A0BDC  48 00 00 24 */	b lbl_805A0C00
lbl_805A0BE0:
/* 805A0BE0  4B AB C1 15 */	bl fqrand
/* 805A0BE4  3C 60 80 65 */	lis r3, lit_526@ha /* 0x8064A2F0@ha */
/* 805A0BE8  38 00 00 14 */	li r0, 0x14
/* 805A0BEC  C0 43 A2 F0 */	lfs f2, lit_526@l(r3)  /* 0x8064A2F0@l */
/* 805A0BF0  EC 02 00 72 */	fmuls f0, f2, f1
/* 805A0BF4  EC 02 00 2A */	fadds f0, f2, f0
/* 805A0BF8  D0 1F 01 EC */	stfs f0, 0x1ec(r31)
/* 805A0BFC  90 1F 02 28 */	stw r0, 0x228(r31)
lbl_805A0C00:
/* 805A0C00  3C 60 80 65 */	lis r3, lit_528@ha /* 0x8064A2F8@ha */
/* 805A0C04  C0 03 A2 F8 */	lfs f0, lit_528@l(r3)  /* 0x8064A2F8@l */
/* 805A0C08  D0 1F 01 E8 */	stfs f0, 0x1e8(r31)
/* 805A0C0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A0C10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A0C14  7C 08 03 A6 */	mtlr r0
/* 805A0C18  38 21 00 10 */	addi r1, r1, 0x10
/* 805A0C1C  4E 80 00 20 */	blr 
