lbl_805EB2B0:
/* 805EB2B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805EB2B4  7C 08 02 A6 */	mflr r0
/* 805EB2B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 805EB2BC  39 61 00 20 */	addi r11, r1, 0x20
/* 805EB2C0  4B AA FC 15 */	bl func_8009AED4
/* 805EB2C4  3D 00 80 65 */	lis r8, lit_489@ha /* 0x8064B6E4@ha */
/* 805EB2C8  3C E0 80 65 */	lis r7, lit_565@ha /* 0x8064B6FC@ha */
/* 805EB2CC  3C C0 80 65 */	lis r6, lit_566@ha /* 0x8064B700@ha */
/* 805EB2D0  3C 60 80 65 */	lis r3, lit_567@ha /* 0x8064B704@ha */
/* 805EB2D4  39 28 B6 E4 */	addi r9, r8, lit_489@l /* 0x8064B6E4@l */
/* 805EB2D8  39 07 B6 FC */	addi r8, r7, lit_565@l /* 0x8064B6FC@l */
/* 805EB2DC  38 E6 B7 00 */	addi r7, r6, lit_566@l /* 0x8064B700@l */
/* 805EB2E0  38 C3 B7 04 */	addi r6, r3, lit_567@l /* 0x8064B704@l */
/* 805EB2E4  7C 9D 23 78 */	mr r29, r4
/* 805EB2E8  C0 29 00 00 */	lfs f1, 0(r9)
/* 805EB2EC  C0 48 00 00 */	lfs f2, 0(r8)
/* 805EB2F0  7C BF 2B 78 */	mr r31, r5
/* 805EB2F4  C0 67 00 00 */	lfs f3, 0(r7)
/* 805EB2F8  38 7D 00 18 */	addi r3, r29, 0x18
/* 805EB2FC  C0 86 00 00 */	lfs f4, 0(r6)
/* 805EB300  4B DC FE B1 */	bl add_calc
/* 805EB304  FC 20 0A 10 */	fabs f1, f1
/* 805EB308  3C 60 80 65 */	lis r3, lit_462@ha /* 0x8064B6C0@ha */
/* 805EB30C  C0 03 B6 C0 */	lfs f0, lit_462@l(r3)  /* 0x8064B6C0@l */
/* 805EB310  FC 20 08 18 */	frsp f1, f1
/* 805EB314  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805EB318  40 80 00 20 */	bge lbl_805EB338
/* 805EB31C  3C 60 80 65 */	lis r3, lit_489@ha /* 0x8064B6E4@ha */
/* 805EB320  3B C0 00 01 */	li r30, 1
/* 805EB324  C0 03 B6 E4 */	lfs f0, lit_489@l(r3)  /* 0x8064B6E4@l */
/* 805EB328  D0 1D 00 18 */	stfs f0, 0x18(r29)
/* 805EB32C  88 1F 00 04 */	lbz r0, 4(r31)
/* 805EB330  98 1F 00 05 */	stb r0, 5(r31)
/* 805EB334  48 00 00 08 */	b lbl_805EB33C
lbl_805EB338:
/* 805EB338  3B C0 00 00 */	li r30, 0
lbl_805EB33C:
/* 805EB33C  3C C0 80 65 */	lis r6, lit_489@ha /* 0x8064B6E4@ha */
/* 805EB340  3C A0 80 65 */	lis r5, lit_565@ha /* 0x8064B6FC@ha */
/* 805EB344  3C 80 80 65 */	lis r4, lit_566@ha /* 0x8064B700@ha */
/* 805EB348  3C 60 80 65 */	lis r3, lit_567@ha /* 0x8064B704@ha */
/* 805EB34C  38 E6 B6 E4 */	addi r7, r6, lit_489@l /* 0x8064B6E4@l */
/* 805EB350  38 C5 B6 FC */	addi r6, r5, lit_565@l /* 0x8064B6FC@l */
/* 805EB354  38 A4 B7 00 */	addi r5, r4, lit_566@l /* 0x8064B700@l */
/* 805EB358  38 83 B7 04 */	addi r4, r3, lit_567@l /* 0x8064B704@l */
/* 805EB35C  C0 27 00 00 */	lfs f1, 0(r7)
/* 805EB360  38 7F 00 D0 */	addi r3, r31, 0xd0
/* 805EB364  C0 46 00 00 */	lfs f2, 0(r6)
/* 805EB368  C0 65 00 00 */	lfs f3, 0(r5)
/* 805EB36C  C0 84 00 00 */	lfs f4, 0(r4)
/* 805EB370  4B DC FE 41 */	bl add_calc
/* 805EB374  FC 20 0A 10 */	fabs f1, f1
/* 805EB378  3C 60 80 65 */	lis r3, lit_462@ha /* 0x8064B6C0@ha */
/* 805EB37C  C0 03 B6 C0 */	lfs f0, lit_462@l(r3)  /* 0x8064B6C0@l */
/* 805EB380  FC 20 08 18 */	frsp f1, f1
/* 805EB384  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805EB388  40 80 00 18 */	bge lbl_805EB3A0
/* 805EB38C  3C 60 80 65 */	lis r3, lit_489@ha /* 0x8064B6E4@ha */
/* 805EB390  38 00 00 01 */	li r0, 1
/* 805EB394  C0 03 B6 E4 */	lfs f0, lit_489@l(r3)  /* 0x8064B6E4@l */
/* 805EB398  D0 1F 00 D0 */	stfs f0, 0xd0(r31)
/* 805EB39C  48 00 00 08 */	b lbl_805EB3A4
lbl_805EB3A0:
/* 805EB3A0  38 00 00 00 */	li r0, 0
lbl_805EB3A4:
/* 805EB3A4  2C 1E 00 00 */	cmpwi r30, 0
/* 805EB3A8  41 82 00 14 */	beq lbl_805EB3BC
/* 805EB3AC  2C 00 00 00 */	cmpwi r0, 0
/* 805EB3B0  41 82 00 0C */	beq lbl_805EB3BC
/* 805EB3B4  38 00 00 00 */	li r0, 0
/* 805EB3B8  98 1F 00 00 */	stb r0, 0(r31)
lbl_805EB3BC:
/* 805EB3BC  39 61 00 20 */	addi r11, r1, 0x20
/* 805EB3C0  4B AA FB 61 */	bl func_8009AF20
/* 805EB3C4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805EB3C8  7C 08 03 A6 */	mtlr r0
/* 805EB3CC  38 21 00 20 */	addi r1, r1, 0x20
/* 805EB3D0  4E 80 00 20 */	blr 
