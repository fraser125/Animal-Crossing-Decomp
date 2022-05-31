lbl_804B95A8:
/* 804B95A8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 804B95AC  7C 08 02 A6 */	mflr r0
/* 804B95B0  90 01 00 54 */	stw r0, 0x54(r1)
/* 804B95B4  39 61 00 50 */	addi r11, r1, 0x50
/* 804B95B8  4B BE 19 15 */	bl func_8009AECC
/* 804B95BC  3D 00 80 69 */	lis r8, fg_ytable@ha /* 0x806957FC@ha */
/* 804B95C0  38 00 00 15 */	li r0, 0x15
/* 804B95C4  7C 9C 23 78 */	mr r28, r4
/* 804B95C8  7C BD 2B 78 */	mr r29, r5
/* 804B95CC  7C DE 33 78 */	mr r30, r6
/* 804B95D0  7C FF 3B 78 */	mr r31, r7
/* 804B95D4  54 64 04 3E */	clrlwi r4, r3, 0x10
/* 804B95D8  38 68 57 FC */	addi r3, r8, fg_ytable@l /* 0x806957FC@l */
/* 804B95DC  3B 60 00 00 */	li r27, 0
/* 804B95E0  7C 09 03 A6 */	mtctr r0
lbl_804B95E4:
/* 804B95E4  7C 03 DA 2E */	lhzx r0, r3, r27
/* 804B95E8  7C 04 00 40 */	cmplw r4, r0
/* 804B95EC  40 82 01 8C */	bne lbl_804B9778
/* 804B95F0  3C 60 80 69 */	lis r3, fg_ytable@ha /* 0x806957FC@ha */
/* 804B95F4  38 03 57 FC */	addi r0, r3, fg_ytable@l /* 0x806957FC@l */
/* 804B95F8  7C 60 DA 14 */	add r3, r0, r27
/* 804B95FC  A0 03 00 02 */	lhz r0, 2(r3)
/* 804B9600  28 00 10 88 */	cmplwi r0, 0x1088
/* 804B9604  40 82 00 98 */	bne lbl_804B969C
/* 804B9608  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804B960C  39 20 00 08 */	li r9, 8
/* 804B9610  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804B9614  3C 63 00 02 */	addis r3, r3, 2
/* 804B9618  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 804B961C  88 03 10 A2 */	lbz r0, 0x10a2(r3)
/* 804B9620  28 00 00 05 */	cmplwi r0, 5
/* 804B9624  40 82 00 28 */	bne lbl_804B964C
/* 804B9628  4B BA 36 CD */	bl fqrand
/* 804B962C  3C 60 80 64 */	lis r3, lit_1004@ha /* 0x806460CC@ha */
/* 804B9630  C0 03 60 CC */	lfs f0, lit_1004@l(r3)  /* 0x806460CC@l */
/* 804B9634  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B9638  4C 41 13 82 */	cror 2, 1, 2
/* 804B963C  40 82 00 0C */	bne lbl_804B9648
/* 804B9640  39 20 00 03 */	li r9, 3
/* 804B9644  48 00 00 08 */	b lbl_804B964C
lbl_804B9648:
/* 804B9648  39 20 00 05 */	li r9, 5
lbl_804B964C:
/* 804B964C  38 81 00 08 */	addi r4, r1, 8
/* 804B9650  38 60 00 00 */	li r3, 0
/* 804B9654  38 A0 00 01 */	li r5, 1
/* 804B9658  38 C0 00 00 */	li r6, 0
/* 804B965C  38 E0 00 00 */	li r7, 0
/* 804B9660  39 00 00 00 */	li r8, 0
/* 804B9664  39 40 00 00 */	li r10, 0
/* 804B9668  4B F2 ED 75 */	bl mSP_SelectRandomItem_New
/* 804B966C  3C 80 80 69 */	lis r4, fg_ytable@ha /* 0x806957FC@ha */
/* 804B9670  A0 61 00 08 */	lhz r3, 8(r1)
/* 804B9674  38 04 57 FC */	addi r0, r4, fg_ytable@l /* 0x806957FC@l */
/* 804B9678  7F 84 E3 78 */	mr r4, r28
/* 804B967C  7C C0 DA 14 */	add r6, r0, r27
/* 804B9680  7F A5 EB 78 */	mr r5, r29
/* 804B9684  A8 C6 00 06 */	lha r6, 6(r6)
/* 804B9688  7F C8 F3 78 */	mr r8, r30
/* 804B968C  7F E9 FB 78 */	mr r9, r31
/* 804B9690  38 E0 00 00 */	li r7, 0
/* 804B9694  4B FF F8 E1 */	bl fruit_set
/* 804B9698  48 00 00 68 */	b lbl_804B9700
lbl_804B969C:
/* 804B969C  28 04 00 69 */	cmplwi r4, 0x69
/* 804B96A0  7C 03 03 78 */	mr r3, r0
/* 804B96A4  41 82 00 14 */	beq lbl_804B96B8
/* 804B96A8  28 04 00 78 */	cmplwi r4, 0x78
/* 804B96AC  41 82 00 0C */	beq lbl_804B96B8
/* 804B96B0  28 04 00 7F */	cmplwi r4, 0x7f
/* 804B96B4  40 82 00 24 */	bne lbl_804B96D8
lbl_804B96B8:
/* 804B96B8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804B96BC  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 804B96C0  3C 84 00 02 */	addis r4, r4, 2
/* 804B96C4  80 84 61 3C */	lwz r4, 0x613c(r4)
/* 804B96C8  88 04 10 A2 */	lbz r0, 0x10a2(r4)
/* 804B96CC  28 00 00 04 */	cmplwi r0, 4
/* 804B96D0  40 82 00 08 */	bne lbl_804B96D8
/* 804B96D4  38 60 21 00 */	li r3, 0x2100
lbl_804B96D8:
/* 804B96D8  3C 80 80 69 */	lis r4, fg_ytable@ha /* 0x806957FC@ha */
/* 804B96DC  7F A5 EB 78 */	mr r5, r29
/* 804B96E0  38 04 57 FC */	addi r0, r4, fg_ytable@l /* 0x806957FC@l */
/* 804B96E4  7F C8 F3 78 */	mr r8, r30
/* 804B96E8  7C C0 DA 14 */	add r6, r0, r27
/* 804B96EC  7F 84 E3 78 */	mr r4, r28
/* 804B96F0  A8 C6 00 06 */	lha r6, 6(r6)
/* 804B96F4  7F E9 FB 78 */	mr r9, r31
/* 804B96F8  38 E0 00 00 */	li r7, 0
/* 804B96FC  4B FF F8 79 */	bl fruit_set
lbl_804B9700:
/* 804B9700  7F 84 E3 78 */	mr r4, r28
/* 804B9704  7F A5 EB 78 */	mr r5, r29
/* 804B9708  38 61 00 24 */	addi r3, r1, 0x24
/* 804B970C  4B EE BD 71 */	bl mFI_UtNum2CenterWpos
/* 804B9710  80 C1 00 24 */	lwz r6, 0x24(r1)
/* 804B9714  3C 60 80 64 */	lis r3, lit_664@ha /* 0x80646094@ha */
/* 804B9718  80 A1 00 28 */	lwz r5, 0x28(r1)
/* 804B971C  38 83 60 94 */	addi r4, r3, lit_664@l /* 0x80646094@l */
/* 804B9720  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 804B9724  38 61 00 18 */	addi r3, r1, 0x18
/* 804B9728  90 C1 00 18 */	stw r6, 0x18(r1)
/* 804B972C  C0 24 00 00 */	lfs f1, 0(r4)
/* 804B9730  90 A1 00 1C */	stw r5, 0x1c(r1)
/* 804B9734  90 01 00 20 */	stw r0, 0x20(r1)
/* 804B9738  4B ED 62 61 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 804B973C  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 804B9740  3C 60 80 69 */	lis r3, fg_ytable@ha /* 0x806957FC@ha */
/* 804B9744  38 03 57 FC */	addi r0, r3, fg_ytable@l /* 0x806957FC@l */
/* 804B9748  80 A1 00 24 */	lwz r5, 0x24(r1)
/* 804B974C  80 C1 00 28 */	lwz r6, 0x28(r1)
/* 804B9750  7C 60 DA 14 */	add r3, r0, r27
/* 804B9754  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 804B9758  38 81 00 0C */	addi r4, r1, 0xc
/* 804B975C  90 A1 00 0C */	stw r5, 0xc(r1)
/* 804B9760  38 A0 00 01 */	li r5, 1
/* 804B9764  A0 63 00 04 */	lhz r3, 4(r3)
/* 804B9768  90 C1 00 10 */	stw r6, 0x10(r1)
/* 804B976C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804B9770  4B EE E0 C1 */	bl mFI_SetFG_common
/* 804B9774  48 00 00 0C */	b lbl_804B9780
lbl_804B9778:
/* 804B9778  3B 7B 00 08 */	addi r27, r27, 8
/* 804B977C  42 00 FE 68 */	bdnz lbl_804B95E4
lbl_804B9780:
/* 804B9780  39 61 00 50 */	addi r11, r1, 0x50
/* 804B9784  4B BE 17 95 */	bl func_8009AF18
/* 804B9788  80 01 00 54 */	lwz r0, 0x54(r1)
/* 804B978C  7C 08 03 A6 */	mtlr r0
/* 804B9790  38 21 00 50 */	addi r1, r1, 0x50
/* 804B9794  4E 80 00 20 */	blr 
