lbl_804CA194:
/* 804CA194  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804CA198  7C 08 02 A6 */	mflr r0
/* 804CA19C  90 01 00 44 */	stw r0, 0x44(r1)
/* 804CA1A0  39 61 00 40 */	addi r11, r1, 0x40
/* 804CA1A4  4B BD 0D 31 */	bl func_8009AED4
/* 804CA1A8  7C BF 2B 78 */	mr r31, r5
/* 804CA1AC  3C C0 80 64 */	lis r6, lit_1546@ha /* 0x80646234@ha */
/* 804CA1B0  C0 26 62 34 */	lfs f1, lit_1546@l(r6)  /* 0x80646234@l */
/* 804CA1B4  7C 7D 1B 78 */	mr r29, r3
/* 804CA1B8  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 804CA1BC  7C 9E 23 78 */	mr r30, r4
/* 804CA1C0  38 7F 00 14 */	addi r3, r31, 0x14
/* 804CA1C4  38 9F 00 38 */	addi r4, r31, 0x38
/* 804CA1C8  EC 01 00 32 */	fmuls f0, f1, f0
/* 804CA1CC  38 A1 00 1C */	addi r5, r1, 0x1c
/* 804CA1D0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 804CA1D4  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 804CA1D8  EC 01 00 32 */	fmuls f0, f1, f0
/* 804CA1DC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 804CA1E0  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 804CA1E4  EC 01 00 32 */	fmuls f0, f1, f0
/* 804CA1E8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 804CA1EC  4B EF 0D 59 */	bl xyz_t_add
/* 804CA1F0  38 00 00 00 */	li r0, 0
/* 804CA1F4  7F A3 EB 78 */	mr r3, r29
/* 804CA1F8  90 01 00 08 */	stw r0, 8(r1)
/* 804CA1FC  7F C4 F3 78 */	mr r4, r30
/* 804CA200  38 C1 00 1C */	addi r6, r1, 0x1c
/* 804CA204  38 FF 00 44 */	addi r7, r31, 0x44
/* 804CA208  90 01 00 0C */	stw r0, 0xc(r1)
/* 804CA20C  39 01 00 10 */	addi r8, r1, 0x10
/* 804CA210  39 40 00 00 */	li r10, 0
/* 804CA214  A0 BF 00 10 */	lhz r5, 0x10(r31)
/* 804CA218  89 3F 00 72 */	lbz r9, 0x72(r31)
/* 804CA21C  48 00 0A 65 */	bl bit_cmn_single_drawS
/* 804CA220  39 61 00 40 */	addi r11, r1, 0x40
/* 804CA224  4B BD 0C FD */	bl func_8009AF20
/* 804CA228  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804CA22C  7C 08 03 A6 */	mtlr r0
/* 804CA230  38 21 00 40 */	addi r1, r1, 0x40
/* 804CA234  4E 80 00 20 */	blr 
