lbl_804C2D7C:
/* 804C2D7C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804C2D80  7C 08 02 A6 */	mflr r0
/* 804C2D84  90 01 00 44 */	stw r0, 0x44(r1)
/* 804C2D88  39 61 00 40 */	addi r11, r1, 0x40
/* 804C2D8C  4B BD 81 49 */	bl func_8009AED4
/* 804C2D90  7C BF 2B 78 */	mr r31, r5
/* 804C2D94  3C C0 80 64 */	lis r6, lit_1546@ha /* 0x80646194@ha */
/* 804C2D98  C0 26 61 94 */	lfs f1, lit_1546@l(r6)  /* 0x80646194@l */
/* 804C2D9C  7C 7D 1B 78 */	mr r29, r3
/* 804C2DA0  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 804C2DA4  7C 9E 23 78 */	mr r30, r4
/* 804C2DA8  38 7F 00 14 */	addi r3, r31, 0x14
/* 804C2DAC  38 9F 00 38 */	addi r4, r31, 0x38
/* 804C2DB0  EC 01 00 32 */	fmuls f0, f1, f0
/* 804C2DB4  38 A1 00 1C */	addi r5, r1, 0x1c
/* 804C2DB8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 804C2DBC  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 804C2DC0  EC 01 00 32 */	fmuls f0, f1, f0
/* 804C2DC4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 804C2DC8  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 804C2DCC  EC 01 00 32 */	fmuls f0, f1, f0
/* 804C2DD0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 804C2DD4  4B EF 81 71 */	bl xyz_t_add
/* 804C2DD8  38 00 00 00 */	li r0, 0
/* 804C2DDC  7F A3 EB 78 */	mr r3, r29
/* 804C2DE0  90 01 00 08 */	stw r0, 8(r1)
/* 804C2DE4  7F C4 F3 78 */	mr r4, r30
/* 804C2DE8  38 C1 00 1C */	addi r6, r1, 0x1c
/* 804C2DEC  38 FF 00 44 */	addi r7, r31, 0x44
/* 804C2DF0  90 01 00 0C */	stw r0, 0xc(r1)
/* 804C2DF4  39 01 00 10 */	addi r8, r1, 0x10
/* 804C2DF8  39 40 00 00 */	li r10, 0
/* 804C2DFC  A0 BF 00 10 */	lhz r5, 0x10(r31)
/* 804C2E00  89 3F 00 72 */	lbz r9, 0x72(r31)
/* 804C2E04  48 00 0A 65 */	bl bit_cmn_single_drawS
/* 804C2E08  39 61 00 40 */	addi r11, r1, 0x40
/* 804C2E0C  4B BD 81 15 */	bl func_8009AF20
/* 804C2E10  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804C2E14  7C 08 03 A6 */	mtlr r0
/* 804C2E18  38 21 00 40 */	addi r1, r1, 0x40
/* 804C2E1C  4E 80 00 20 */	blr 
