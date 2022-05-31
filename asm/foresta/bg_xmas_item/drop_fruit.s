lbl_804C84B8:
/* 804C84B8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 804C84BC  7C 08 02 A6 */	mflr r0
/* 804C84C0  90 01 00 54 */	stw r0, 0x54(r1)
/* 804C84C4  39 61 00 50 */	addi r11, r1, 0x50
/* 804C84C8  4B BD 2A 05 */	bl func_8009AECC
/* 804C84CC  3D 00 80 6A */	lis r8, fg_ytable@ha /* 0x8069B9CC@ha */
/* 804C84D0  38 00 00 15 */	li r0, 0x15
/* 804C84D4  7C 9C 23 78 */	mr r28, r4
/* 804C84D8  7C BD 2B 78 */	mr r29, r5
/* 804C84DC  7C DE 33 78 */	mr r30, r6
/* 804C84E0  7C FF 3B 78 */	mr r31, r7
/* 804C84E4  54 64 04 3E */	clrlwi r4, r3, 0x10
/* 804C84E8  38 68 B9 CC */	addi r3, r8, fg_ytable@l /* 0x8069B9CC@l */
/* 804C84EC  3B 60 00 00 */	li r27, 0
/* 804C84F0  7C 09 03 A6 */	mtctr r0
lbl_804C84F4:
/* 804C84F4  7C 03 DA 2E */	lhzx r0, r3, r27
/* 804C84F8  7C 04 00 40 */	cmplw r4, r0
/* 804C84FC  40 82 01 8C */	bne lbl_804C8688
/* 804C8500  3C 60 80 6A */	lis r3, fg_ytable@ha /* 0x8069B9CC@ha */
/* 804C8504  38 03 B9 CC */	addi r0, r3, fg_ytable@l /* 0x8069B9CC@l */
/* 804C8508  7C 60 DA 14 */	add r3, r0, r27
/* 804C850C  A0 03 00 02 */	lhz r0, 2(r3)
/* 804C8510  28 00 10 88 */	cmplwi r0, 0x1088
/* 804C8514  40 82 00 98 */	bne lbl_804C85AC
/* 804C8518  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804C851C  39 20 00 08 */	li r9, 8
/* 804C8520  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804C8524  3C 63 00 02 */	addis r3, r3, 2
/* 804C8528  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 804C852C  88 03 10 A2 */	lbz r0, 0x10a2(r3)
/* 804C8530  28 00 00 05 */	cmplwi r0, 5
/* 804C8534  40 82 00 28 */	bne lbl_804C855C
/* 804C8538  4B B9 47 BD */	bl fqrand
/* 804C853C  3C 60 80 64 */	lis r3, lit_1004@ha /* 0x8064621C@ha */
/* 804C8540  C0 03 62 1C */	lfs f0, lit_1004@l(r3)  /* 0x8064621C@l */
/* 804C8544  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804C8548  4C 41 13 82 */	cror 2, 1, 2
/* 804C854C  40 82 00 0C */	bne lbl_804C8558
/* 804C8550  39 20 00 03 */	li r9, 3
/* 804C8554  48 00 00 08 */	b lbl_804C855C
lbl_804C8558:
/* 804C8558  39 20 00 05 */	li r9, 5
lbl_804C855C:
/* 804C855C  38 81 00 08 */	addi r4, r1, 8
/* 804C8560  38 60 00 00 */	li r3, 0
/* 804C8564  38 A0 00 01 */	li r5, 1
/* 804C8568  38 C0 00 00 */	li r6, 0
/* 804C856C  38 E0 00 00 */	li r7, 0
/* 804C8570  39 00 00 00 */	li r8, 0
/* 804C8574  39 40 00 00 */	li r10, 0
/* 804C8578  4B F1 FE 65 */	bl mSP_SelectRandomItem_New
/* 804C857C  3C 80 80 6A */	lis r4, fg_ytable@ha /* 0x8069B9CC@ha */
/* 804C8580  A0 61 00 08 */	lhz r3, 8(r1)
/* 804C8584  38 04 B9 CC */	addi r0, r4, fg_ytable@l /* 0x8069B9CC@l */
/* 804C8588  7F 84 E3 78 */	mr r4, r28
/* 804C858C  7C C0 DA 14 */	add r6, r0, r27
/* 804C8590  7F A5 EB 78 */	mr r5, r29
/* 804C8594  A8 C6 00 06 */	lha r6, 6(r6)
/* 804C8598  7F C8 F3 78 */	mr r8, r30
/* 804C859C  7F E9 FB 78 */	mr r9, r31
/* 804C85A0  38 E0 00 00 */	li r7, 0
/* 804C85A4  4B FF F8 E1 */	bl fruit_set
/* 804C85A8  48 00 00 68 */	b lbl_804C8610
lbl_804C85AC:
/* 804C85AC  28 04 00 69 */	cmplwi r4, 0x69
/* 804C85B0  7C 03 03 78 */	mr r3, r0
/* 804C85B4  41 82 00 14 */	beq lbl_804C85C8
/* 804C85B8  28 04 00 78 */	cmplwi r4, 0x78
/* 804C85BC  41 82 00 0C */	beq lbl_804C85C8
/* 804C85C0  28 04 00 7F */	cmplwi r4, 0x7f
/* 804C85C4  40 82 00 24 */	bne lbl_804C85E8
lbl_804C85C8:
/* 804C85C8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804C85CC  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 804C85D0  3C 84 00 02 */	addis r4, r4, 2
/* 804C85D4  80 84 61 3C */	lwz r4, 0x613c(r4)
/* 804C85D8  88 04 10 A2 */	lbz r0, 0x10a2(r4)
/* 804C85DC  28 00 00 04 */	cmplwi r0, 4
/* 804C85E0  40 82 00 08 */	bne lbl_804C85E8
/* 804C85E4  38 60 21 00 */	li r3, 0x2100
lbl_804C85E8:
/* 804C85E8  3C 80 80 6A */	lis r4, fg_ytable@ha /* 0x8069B9CC@ha */
/* 804C85EC  7F A5 EB 78 */	mr r5, r29
/* 804C85F0  38 04 B9 CC */	addi r0, r4, fg_ytable@l /* 0x8069B9CC@l */
/* 804C85F4  7F C8 F3 78 */	mr r8, r30
/* 804C85F8  7C C0 DA 14 */	add r6, r0, r27
/* 804C85FC  7F 84 E3 78 */	mr r4, r28
/* 804C8600  A8 C6 00 06 */	lha r6, 6(r6)
/* 804C8604  7F E9 FB 78 */	mr r9, r31
/* 804C8608  38 E0 00 00 */	li r7, 0
/* 804C860C  4B FF F8 79 */	bl fruit_set
lbl_804C8610:
/* 804C8610  7F 84 E3 78 */	mr r4, r28
/* 804C8614  7F A5 EB 78 */	mr r5, r29
/* 804C8618  38 61 00 24 */	addi r3, r1, 0x24
/* 804C861C  4B ED CE 61 */	bl mFI_UtNum2CenterWpos
/* 804C8620  80 C1 00 24 */	lwz r6, 0x24(r1)
/* 804C8624  3C 60 80 64 */	lis r3, lit_664@ha /* 0x806461E4@ha */
/* 804C8628  80 A1 00 28 */	lwz r5, 0x28(r1)
/* 804C862C  38 83 61 E4 */	addi r4, r3, lit_664@l /* 0x806461E4@l */
/* 804C8630  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 804C8634  38 61 00 18 */	addi r3, r1, 0x18
/* 804C8638  90 C1 00 18 */	stw r6, 0x18(r1)
/* 804C863C  C0 24 00 00 */	lfs f1, 0(r4)
/* 804C8640  90 A1 00 1C */	stw r5, 0x1c(r1)
/* 804C8644  90 01 00 20 */	stw r0, 0x20(r1)
/* 804C8648  4B EC 73 51 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 804C864C  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 804C8650  3C 60 80 6A */	lis r3, fg_ytable@ha /* 0x8069B9CC@ha */
/* 804C8654  38 03 B9 CC */	addi r0, r3, fg_ytable@l /* 0x8069B9CC@l */
/* 804C8658  80 A1 00 24 */	lwz r5, 0x24(r1)
/* 804C865C  80 C1 00 28 */	lwz r6, 0x28(r1)
/* 804C8660  7C 60 DA 14 */	add r3, r0, r27
/* 804C8664  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 804C8668  38 81 00 0C */	addi r4, r1, 0xc
/* 804C866C  90 A1 00 0C */	stw r5, 0xc(r1)
/* 804C8670  38 A0 00 01 */	li r5, 1
/* 804C8674  A0 63 00 04 */	lhz r3, 4(r3)
/* 804C8678  90 C1 00 10 */	stw r6, 0x10(r1)
/* 804C867C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804C8680  4B ED F1 B1 */	bl mFI_SetFG_common
/* 804C8684  48 00 00 0C */	b lbl_804C8690
lbl_804C8688:
/* 804C8688  3B 7B 00 08 */	addi r27, r27, 8
/* 804C868C  42 00 FE 68 */	bdnz lbl_804C84F4
lbl_804C8690:
/* 804C8690  39 61 00 50 */	addi r11, r1, 0x50
/* 804C8694  4B BD 28 85 */	bl func_8009AF18
/* 804C8698  80 01 00 54 */	lwz r0, 0x54(r1)
/* 804C869C  7C 08 03 A6 */	mtlr r0
/* 804C86A0  38 21 00 50 */	addi r1, r1, 0x50
/* 804C86A4  4E 80 00 20 */	blr 
