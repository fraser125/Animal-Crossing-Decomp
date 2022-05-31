lbl_805E04D8:
/* 805E04D8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805E04DC  7C 08 02 A6 */	mflr r0
/* 805E04E0  90 01 00 44 */	stw r0, 0x44(r1)
/* 805E04E4  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 805E04E8  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 805E04EC  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 805E04F0  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 805E04F4  39 61 00 20 */	addi r11, r1, 0x20
/* 805E04F8  4B AB A9 D9 */	bl func_8009AED0
/* 805E04FC  80 E5 00 3C */	lwz r7, 0x3c(r5)
/* 805E0500  3C A0 DE 00 */	lis r5, 0xde00
/* 805E0504  81 04 02 D0 */	lwz r8, 0x2d0(r4)
/* 805E0508  7C 9F 23 78 */	mr r31, r4
/* 805E050C  3C 80 80 AA */	lis r4, inv_item_mode@ha /* 0x80AA5910@ha */
/* 805E0510  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 805E0514  90 A8 00 00 */	stw r5, 0(r8)
/* 805E0518  38 04 59 10 */	addi r0, r4, inv_item_mode@l /* 0x80AA5910@l */
/* 805E051C  1C A7 26 B0 */	mulli r5, r7, 0x26b0
/* 805E0520  38 86 85 38 */	addi r4, r6, common_data@l /* 0x81138538@l */
/* 805E0524  90 08 00 04 */	stw r0, 4(r8)
/* 805E0528  39 08 00 08 */	addi r8, r8, 8
/* 805E052C  FF C0 08 90 */	fmr f30, f1
/* 805E0530  7C 7C 1B 78 */	mr r28, r3
/* 805E0534  7C 84 2A 14 */	add r4, r4, r5
/* 805E0538  FF E0 10 90 */	fmr f31, f2
/* 805E053C  3F C4 00 01 */	addis r30, r4, 1
/* 805E0540  91 1F 02 D0 */	stw r8, 0x2d0(r31)
/* 805E0544  3B A0 00 00 */	li r29, 0
/* 805E0548  3B DE C2 BC */	addi r30, r30, -15684
lbl_805E054C:
/* 805E054C  A0 1E 00 00 */	lhz r0, 0(r30)
/* 805E0550  28 00 00 00 */	cmplwi r0, 0
/* 805E0554  41 82 00 70 */	beq lbl_805E05C4
/* 805E0558  80 BC 00 2C */	lwz r5, 0x2c(r28)
/* 805E055C  7F 83 E3 78 */	mr r3, r28
/* 805E0560  7F A6 EB 78 */	mr r6, r29
/* 805E0564  38 81 00 08 */	addi r4, r1, 8
/* 805E0568  80 E5 09 7C */	lwz r7, 0x97c(r5)
/* 805E056C  38 A0 00 06 */	li r5, 6
/* 805E0570  81 87 02 D8 */	lwz r12, 0x2d8(r7)
/* 805E0574  7D 89 03 A6 */	mtctr r12
/* 805E0578  4E 80 04 21 */	bctrl 
/* 805E057C  80 9C 00 2C */	lwz r4, 0x2c(r28)
/* 805E0580  3C 60 80 65 */	lis r3, lit_574@ha /* 0x8064B364@ha */
/* 805E0584  C0 21 00 08 */	lfs f1, 8(r1)
/* 805E0588  38 A3 B3 64 */	addi r5, r3, lit_574@l /* 0x8064B364@l */
/* 805E058C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 805E0590  7F E3 FB 78 */	mr r3, r31
/* 805E0594  81 84 09 5C */	lwz r12, 0x95c(r4)
/* 805E0598  EC 3E 08 2A */	fadds f1, f30, f1
/* 805E059C  EC 5F 00 2A */	fadds f2, f31, f0
/* 805E05A0  C0 65 00 00 */	lfs f3, 0(r5)
/* 805E05A4  A0 9E 00 00 */	lhz r4, 0(r30)
/* 805E05A8  38 A0 00 00 */	li r5, 0
/* 805E05AC  38 C0 00 01 */	li r6, 1
/* 805E05B0  38 E0 00 00 */	li r7, 0
/* 805E05B4  39 00 00 00 */	li r8, 0
/* 805E05B8  39 20 00 00 */	li r9, 0
/* 805E05BC  7D 89 03 A6 */	mtctr r12
/* 805E05C0  4E 80 04 21 */	bctrl 
lbl_805E05C4:
/* 805E05C4  3B BD 00 01 */	addi r29, r29, 1
/* 805E05C8  3B DE 00 08 */	addi r30, r30, 8
/* 805E05CC  2C 1D 00 04 */	cmpwi r29, 4
/* 805E05D0  41 80 FF 7C */	blt lbl_805E054C
/* 805E05D4  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 805E05D8  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 805E05DC  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 805E05E0  39 61 00 20 */	addi r11, r1, 0x20
/* 805E05E4  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 805E05E8  4B AB A9 35 */	bl func_8009AF1C
/* 805E05EC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805E05F0  7C 08 03 A6 */	mtlr r0
/* 805E05F4  38 21 00 40 */	addi r1, r1, 0x40
/* 805E05F8  4E 80 00 20 */	blr 
