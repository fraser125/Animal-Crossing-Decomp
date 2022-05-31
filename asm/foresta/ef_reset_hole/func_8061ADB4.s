lbl_8061ADB4:
/* 8061ADB4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8061ADB8  7C 08 02 A6 */	mflr r0
/* 8061ADBC  3D 40 80 65 */	lis r10, data_8064CA1C@ha /* 0x8064CA1C@ha */
/* 8061ADC0  90 01 00 34 */	stw r0, 0x34(r1)
/* 8061ADC4  C0 0A CA 1C */	lfs f0, data_8064CA1C@l(r10)  /* 0x8064CA1C@l */
/* 8061ADC8  7D 0A 43 78 */	mr r10, r8
/* 8061ADCC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8061ADD0  7C E8 3B 78 */	mr r8, r7
/* 8061ADD4  38 E1 00 10 */	addi r7, r1, 0x10
/* 8061ADD8  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8061ADDC  7C 9E 23 78 */	mr r30, r4
/* 8061ADE0  38 81 00 14 */	addi r4, r1, 0x14
/* 8061ADE4  C0 23 00 04 */	lfs f1, 4(r3)
/* 8061ADE8  B0 A1 00 10 */	sth r5, 0x10(r1)
/* 8061ADEC  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8061ADF0  EC 01 00 2A */	fadds f0, f1, f0
/* 8061ADF4  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8061ADF8  3D 65 00 02 */	addis r11, r5, 2
/* 8061ADFC  38 A0 00 00 */	li r5, 0
/* 8061AE00  D0 03 00 04 */	stfs f0, 4(r3)
/* 8061AE04  83 E3 00 00 */	lwz r31, 0(r3)
/* 8061AE08  81 83 00 04 */	lwz r12, 4(r3)
/* 8061AE0C  80 03 00 08 */	lwz r0, 8(r3)
/* 8061AE10  38 60 00 5D */	li r3, 0x5d
/* 8061AE14  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8061AE18  91 81 00 18 */	stw r12, 0x18(r1)
/* 8061AE1C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8061AE20  91 21 00 08 */	stw r9, 8(r1)
/* 8061AE24  7F C9 F3 78 */	mr r9, r30
/* 8061AE28  81 6B 60 9C */	lwz r11, 0x609c(r11)
/* 8061AE2C  81 8B 00 28 */	lwz r12, 0x28(r11)
/* 8061AE30  7D 89 03 A6 */	mtctr r12
/* 8061AE34  4E 80 04 21 */	bctrl 
/* 8061AE38  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8061AE3C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8061AE40  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8061AE44  7C 08 03 A6 */	mtlr r0
/* 8061AE48  38 21 00 30 */	addi r1, r1, 0x30
/* 8061AE4C  4E 80 00 20 */	blr 
