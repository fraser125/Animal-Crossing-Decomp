lbl_805AF1B0:
/* 805AF1B0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805AF1B4  7C 08 02 A6 */	mflr r0
/* 805AF1B8  3C 80 80 65 */	lis r4, lit_447@ha /* 0x8064A774@ha */
/* 805AF1BC  90 01 00 44 */	stw r0, 0x44(r1)
/* 805AF1C0  38 E4 A7 74 */	addi r7, r4, lit_447@l /* 0x8064A774@l */
/* 805AF1C4  3C 80 80 65 */	lis r4, data_8064A76C@ha /* 0x8064A76C@ha */
/* 805AF1C8  C0 07 00 00 */	lfs f0, 0(r7)
/* 805AF1CC  81 63 00 28 */	lwz r11, 0x28(r3)
/* 805AF1D0  38 C4 A7 6C */	addi r6, r4, data_8064A76C@l /* 0x8064A76C@l */
/* 805AF1D4  81 43 00 2C */	lwz r10, 0x2c(r3)
/* 805AF1D8  3C 80 80 6C */	lis r4, lit_448@ha /* 0x806C50F4@ha */
/* 805AF1DC  91 61 00 30 */	stw r11, 0x30(r1)
/* 805AF1E0  38 A4 50 F4 */	addi r5, r4, lit_448@l /* 0x806C50F4@l */
/* 805AF1E4  81 23 00 30 */	lwz r9, 0x30(r3)
/* 805AF1E8  38 61 00 24 */	addi r3, r1, 0x24
/* 805AF1EC  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 805AF1F0  38 81 00 10 */	addi r4, r1, 0x10
/* 805AF1F4  81 06 00 00 */	lwz r8, 0(r6)
/* 805AF1F8  EC 01 00 2A */	fadds f0, f1, f0
/* 805AF1FC  A0 E6 00 04 */	lhz r7, 4(r6)
/* 805AF200  88 06 00 06 */	lbz r0, 6(r6)
/* 805AF204  38 C0 00 A3 */	li r6, 0xa3
/* 805AF208  91 41 00 34 */	stw r10, 0x34(r1)
/* 805AF20C  91 21 00 38 */	stw r9, 0x38(r1)
/* 805AF210  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805AF214  91 01 00 10 */	stw r8, 0x10(r1)
/* 805AF218  B0 E1 00 14 */	sth r7, 0x14(r1)
/* 805AF21C  98 01 00 16 */	stb r0, 0x16(r1)
/* 805AF220  91 61 00 24 */	stw r11, 0x24(r1)
/* 805AF224  91 41 00 28 */	stw r10, 0x28(r1)
/* 805AF228  91 21 00 2C */	stw r9, 0x2c(r1)
/* 805AF22C  4B DE 2B 4D */	bl mCoBG_SetPluss5PointOffset_file
/* 805AF230  3C 60 80 65 */	lis r3, data_8064A76C@ha /* 0x8064A76C@ha */
/* 805AF234  81 01 00 30 */	lwz r8, 0x30(r1)
/* 805AF238  38 C3 A7 6C */	addi r6, r3, data_8064A76C@l /* 0x8064A76C@l */
/* 805AF23C  80 E1 00 34 */	lwz r7, 0x34(r1)
/* 805AF240  80 86 00 00 */	lwz r4, 0(r6)
/* 805AF244  3C 60 80 6C */	lis r3, lit_448@ha /* 0x806C50F4@ha */
/* 805AF248  A1 46 00 04 */	lhz r10, 4(r6)
/* 805AF24C  38 A3 50 F4 */	addi r5, r3, lit_448@l /* 0x806C50F4@l */
/* 805AF250  89 26 00 06 */	lbz r9, 6(r6)
/* 805AF254  38 61 00 18 */	addi r3, r1, 0x18
/* 805AF258  80 01 00 38 */	lwz r0, 0x38(r1)
/* 805AF25C  38 C0 00 A4 */	li r6, 0xa4
/* 805AF260  90 81 00 08 */	stw r4, 8(r1)
/* 805AF264  38 81 00 08 */	addi r4, r1, 8
/* 805AF268  B1 41 00 0C */	sth r10, 0xc(r1)
/* 805AF26C  99 21 00 0E */	stb r9, 0xe(r1)
/* 805AF270  91 01 00 18 */	stw r8, 0x18(r1)
/* 805AF274  90 E1 00 1C */	stw r7, 0x1c(r1)
/* 805AF278  90 01 00 20 */	stw r0, 0x20(r1)
/* 805AF27C  4B DE 2A FD */	bl mCoBG_SetPluss5PointOffset_file
/* 805AF280  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805AF284  7C 08 03 A6 */	mtlr r0
/* 805AF288  38 21 00 40 */	addi r1, r1, 0x40
/* 805AF28C  4E 80 00 20 */	blr 
