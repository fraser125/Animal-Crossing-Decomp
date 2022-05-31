lbl_803CB258:
/* 803CB258  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803CB25C  7C 08 02 A6 */	mflr r0
/* 803CB260  90 01 00 44 */	stw r0, 0x44(r1)
/* 803CB264  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 803CB268  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 803CB26C  39 61 00 30 */	addi r11, r1, 0x30
/* 803CB270  4B CC FC 65 */	bl func_8009AED4
/* 803CB274  6C 86 80 00 */	xoris r6, r4, 0x8000
/* 803CB278  3C 00 43 30 */	lis r0, 0x4330
/* 803CB27C  90 C1 00 0C */	stw r6, 0xc(r1)
/* 803CB280  3C E0 80 64 */	lis r7, data_806428CC@ha /* 0x806428CC@ha */
/* 803CB284  7C 7D 1B 78 */	mr r29, r3
/* 803CB288  7C BE 2B 78 */	mr r30, r5
/* 803CB28C  90 01 00 08 */	stw r0, 8(r1)
/* 803CB290  38 A0 00 00 */	li r5, 0
/* 803CB294  C8 27 28 CC */	lfd f1, data_806428CC@l(r7)  /* 0x806428CC@l */
/* 803CB298  38 60 00 00 */	li r3, 0
/* 803CB29C  C8 01 00 08 */	lfd f0, 8(r1)
/* 803CB2A0  EF E0 08 28 */	fsubs f31, f0, f1
/* 803CB2A4  7C 89 03 A6 */	mtctr r4
/* 803CB2A8  2C 04 00 00 */	cmpwi r4, 0
/* 803CB2AC  40 81 00 58 */	ble lbl_803CB304
lbl_803CB2B0:
/* 803CB2B0  7C BD 19 2E */	stwx r5, r29, r3
/* 803CB2B4  38 A5 00 01 */	addi r5, r5, 1
/* 803CB2B8  38 63 00 04 */	addi r3, r3, 4
/* 803CB2BC  42 00 FF F4 */	bdnz lbl_803CB2B0
/* 803CB2C0  48 00 00 44 */	b lbl_803CB304
lbl_803CB2C4:
/* 803CB2C4  4B C9 1A 31 */	bl fqrand
/* 803CB2C8  EC 1F 00 72 */	fmuls f0, f31, f1
/* 803CB2CC  FC 00 00 1E */	fctiwz f0, f0
/* 803CB2D0  D8 01 00 08 */	stfd f0, 8(r1)
/* 803CB2D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803CB2D8  4B C9 1A 1D */	bl fqrand
/* 803CB2DC  EC 1F 00 72 */	fmuls f0, f31, f1
/* 803CB2E0  57 E4 10 3A */	slwi r4, r31, 2
/* 803CB2E4  7C BD 20 2E */	lwzx r5, r29, r4
/* 803CB2E8  FC 00 00 1E */	fctiwz f0, f0
/* 803CB2EC  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 803CB2F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803CB2F4  54 03 10 3A */	slwi r3, r0, 2
/* 803CB2F8  7C 1D 18 2E */	lwzx r0, r29, r3
/* 803CB2FC  7C 1D 21 2E */	stwx r0, r29, r4
/* 803CB300  7C BD 19 2E */	stwx r5, r29, r3
lbl_803CB304:
/* 803CB304  2C 1E 00 00 */	cmpwi r30, 0
/* 803CB308  3B DE FF FF */	addi r30, r30, -1
/* 803CB30C  40 82 FF B8 */	bne lbl_803CB2C4
/* 803CB310  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 803CB314  39 61 00 30 */	addi r11, r1, 0x30
/* 803CB318  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 803CB31C  4B CC FC 05 */	bl func_8009AF20
/* 803CB320  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803CB324  7C 08 03 A6 */	mtlr r0
/* 803CB328  38 21 00 40 */	addi r1, r1, 0x40
/* 803CB32C  4E 80 00 20 */	blr 
