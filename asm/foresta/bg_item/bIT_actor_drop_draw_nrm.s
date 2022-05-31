lbl_804BB284:
/* 804BB284  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804BB288  7C 08 02 A6 */	mflr r0
/* 804BB28C  90 01 00 44 */	stw r0, 0x44(r1)
/* 804BB290  39 61 00 40 */	addi r11, r1, 0x40
/* 804BB294  4B BD FC 41 */	bl func_8009AED4
/* 804BB298  7C BF 2B 78 */	mr r31, r5
/* 804BB29C  3C C0 80 64 */	lis r6, lit_1546@ha /* 0x806460E4@ha */
/* 804BB2A0  C0 26 60 E4 */	lfs f1, lit_1546@l(r6)  /* 0x806460E4@l */
/* 804BB2A4  7C 7D 1B 78 */	mr r29, r3
/* 804BB2A8  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 804BB2AC  7C 9E 23 78 */	mr r30, r4
/* 804BB2B0  38 7F 00 14 */	addi r3, r31, 0x14
/* 804BB2B4  38 9F 00 38 */	addi r4, r31, 0x38
/* 804BB2B8  EC 01 00 32 */	fmuls f0, f1, f0
/* 804BB2BC  38 A1 00 1C */	addi r5, r1, 0x1c
/* 804BB2C0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 804BB2C4  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 804BB2C8  EC 01 00 32 */	fmuls f0, f1, f0
/* 804BB2CC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 804BB2D0  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 804BB2D4  EC 01 00 32 */	fmuls f0, f1, f0
/* 804BB2D8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 804BB2DC  4B EF FC 69 */	bl xyz_t_add
/* 804BB2E0  38 00 00 00 */	li r0, 0
/* 804BB2E4  7F A3 EB 78 */	mr r3, r29
/* 804BB2E8  90 01 00 08 */	stw r0, 8(r1)
/* 804BB2EC  7F C4 F3 78 */	mr r4, r30
/* 804BB2F0  38 C1 00 1C */	addi r6, r1, 0x1c
/* 804BB2F4  38 FF 00 44 */	addi r7, r31, 0x44
/* 804BB2F8  90 01 00 0C */	stw r0, 0xc(r1)
/* 804BB2FC  39 01 00 10 */	addi r8, r1, 0x10
/* 804BB300  39 40 00 00 */	li r10, 0
/* 804BB304  A0 BF 00 10 */	lhz r5, 0x10(r31)
/* 804BB308  89 3F 00 72 */	lbz r9, 0x72(r31)
/* 804BB30C  48 00 0A 65 */	bl bit_cmn_single_drawS
/* 804BB310  39 61 00 40 */	addi r11, r1, 0x40
/* 804BB314  4B BD FC 0D */	bl func_8009AF20
/* 804BB318  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804BB31C  7C 08 03 A6 */	mtlr r0
/* 804BB320  38 21 00 40 */	addi r1, r1, 0x40
/* 804BB324  4E 80 00 20 */	blr 
