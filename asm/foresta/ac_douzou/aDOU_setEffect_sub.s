lbl_805AD9FC:
/* 805AD9FC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 805ADA00  7C 08 02 A6 */	mflr r0
/* 805ADA04  90 01 00 54 */	stw r0, 0x54(r1)
/* 805ADA08  39 61 00 50 */	addi r11, r1, 0x50
/* 805ADA0C  4B AE D4 C1 */	bl func_8009AECC
/* 805ADA10  3C E0 80 6C */	lis r7, data_806C4CF0@ha /* 0x806C4CF0@ha */
/* 805ADA14  7C 7B 1B 78 */	mr r27, r3
/* 805ADA18  7C 9E 23 78 */	mr r30, r4
/* 805ADA1C  7C BC 2B 78 */	mr r28, r5
/* 805ADA20  7C DF 33 78 */	mr r31, r6
/* 805ADA24  3B A7 4C F0 */	addi r29, r7, data_806C4CF0@l /* 0x806C4CF0@l */
/* 805ADA28  4B E5 E7 AD */	bl Matrix_push
/* 805ADA2C  38 61 00 14 */	addi r3, r1, 0x14
/* 805ADA30  38 9B 00 28 */	addi r4, r27, 0x28
/* 805ADA34  4B E0 D4 89 */	bl xyz_t_move
/* 805ADA38  57 80 10 3A */	slwi r0, r28, 2
/* 805ADA3C  38 7D 01 34 */	addi r3, r29, 0x134
/* 805ADA40  7C 03 04 2E */	lfsx f0, r3, r0
/* 805ADA44  38 9D 01 24 */	addi r4, r29, 0x124
/* 805ADA48  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 805ADA4C  38 60 00 00 */	li r3, 0
/* 805ADA50  C0 61 00 1C */	lfs f3, 0x1c(r1)
/* 805ADA54  EC 21 00 2A */	fadds f1, f1, f0
/* 805ADA58  7C 04 04 2E */	lfsx f0, r4, r0
/* 805ADA5C  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 805ADA60  EC 63 00 2A */	fadds f3, f3, f0
/* 805ADA64  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 805ADA68  D0 61 00 1C */	stfs f3, 0x1c(r1)
/* 805ADA6C  4B E5 E8 95 */	bl Matrix_translate
/* 805ADA70  1F 9F 00 0C */	mulli r28, r31, 0xc
/* 805ADA74  38 9D 01 68 */	addi r4, r29, 0x168
/* 805ADA78  38 61 00 2C */	addi r3, r1, 0x2c
/* 805ADA7C  7C 84 E2 14 */	add r4, r4, r28
/* 805ADA80  4B E0 D4 3D */	bl xyz_t_move
/* 805ADA84  4B AA F2 71 */	bl fqrand
/* 805ADA88  3C 80 80 65 */	lis r4, lit_530@ha /* 0x8064A6DC@ha */
/* 805ADA8C  38 7D 01 98 */	addi r3, r29, 0x198
/* 805ADA90  C0 64 A6 DC */	lfs f3, lit_530@l(r4)  /* 0x8064A6DC@l */
/* 805ADA94  7C 43 E4 2E */	lfsx f2, r3, r28
/* 805ADA98  EC 21 18 28 */	fsubs f1, f1, f3
/* 805ADA9C  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 805ADAA0  EC 22 00 72 */	fmuls f1, f2, f1
/* 805ADAA4  EC 00 08 2A */	fadds f0, f0, f1
/* 805ADAA8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 805ADAAC  4B AA F2 49 */	bl fqrand
/* 805ADAB0  3C 60 80 65 */	lis r3, lit_530@ha /* 0x8064A6DC@ha */
/* 805ADAB4  38 1D 01 98 */	addi r0, r29, 0x198
/* 805ADAB8  C0 63 A6 DC */	lfs f3, lit_530@l(r3)  /* 0x8064A6DC@l */
/* 805ADABC  7C 60 E2 14 */	add r3, r0, r28
/* 805ADAC0  C0 43 00 04 */	lfs f2, 4(r3)
/* 805ADAC4  EC 21 18 28 */	fsubs f1, f1, f3
/* 805ADAC8  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 805ADACC  EC 22 00 72 */	fmuls f1, f2, f1
/* 805ADAD0  EC 00 08 2A */	fadds f0, f0, f1
/* 805ADAD4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805ADAD8  4B AA F2 1D */	bl fqrand
/* 805ADADC  3C 60 80 65 */	lis r3, lit_530@ha /* 0x8064A6DC@ha */
/* 805ADAE0  38 1D 01 98 */	addi r0, r29, 0x198
/* 805ADAE4  C0 63 A6 DC */	lfs f3, lit_530@l(r3)  /* 0x8064A6DC@l */
/* 805ADAE8  7C 60 E2 14 */	add r3, r0, r28
/* 805ADAEC  C0 43 00 08 */	lfs f2, 8(r3)
/* 805ADAF0  38 61 00 2C */	addi r3, r1, 0x2c
/* 805ADAF4  EC 21 18 28 */	fsubs f1, f1, f3
/* 805ADAF8  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 805ADAFC  38 81 00 20 */	addi r4, r1, 0x20
/* 805ADB00  EC 22 00 72 */	fmuls f1, f2, f1
/* 805ADB04  EC 00 08 2A */	fadds f0, f0, f1
/* 805ADB08  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 805ADB0C  4B E5 F8 F9 */	bl Matrix_Position
/* 805ADB10  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805ADB14  80 81 00 20 */	lwz r4, 0x20(r1)
/* 805ADB18  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805ADB1C  80 A1 00 24 */	lwz r5, 0x24(r1)
/* 805ADB20  80 01 00 28 */	lwz r0, 0x28(r1)
/* 805ADB24  3C 63 00 02 */	addis r3, r3, 2
/* 805ADB28  90 81 00 08 */	stw r4, 8(r1)
/* 805ADB2C  7F C7 F3 78 */	mr r7, r30
/* 805ADB30  81 63 60 9C */	lwz r11, 0x609c(r3)
/* 805ADB34  38 81 00 08 */	addi r4, r1, 8
/* 805ADB38  90 A1 00 0C */	stw r5, 0xc(r1)
/* 805ADB3C  7F E9 07 34 */	extsh r9, r31
/* 805ADB40  38 60 00 65 */	li r3, 0x65
/* 805ADB44  38 A0 00 01 */	li r5, 1
/* 805ADB48  90 01 00 10 */	stw r0, 0x10(r1)
/* 805ADB4C  38 C0 00 00 */	li r6, 0
/* 805ADB50  39 00 58 43 */	li r8, 0x5843
/* 805ADB54  39 40 00 00 */	li r10, 0
/* 805ADB58  81 8B 00 00 */	lwz r12, 0(r11)
/* 805ADB5C  7D 89 03 A6 */	mtctr r12
/* 805ADB60  4E 80 04 21 */	bctrl 
/* 805ADB64  4B E5 E6 B1 */	bl Matrix_pull
/* 805ADB68  38 60 00 01 */	li r3, 1
/* 805ADB6C  39 61 00 50 */	addi r11, r1, 0x50
/* 805ADB70  4B AE D3 A9 */	bl func_8009AF18
/* 805ADB74  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805ADB78  7C 08 03 A6 */	mtlr r0
/* 805ADB7C  38 21 00 50 */	addi r1, r1, 0x50
/* 805ADB80  4E 80 00 20 */	blr 
