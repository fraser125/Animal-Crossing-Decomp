lbl_804B45CC:
/* 804B45CC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 804B45D0  7C 08 02 A6 */	mflr r0
/* 804B45D4  90 01 00 54 */	stw r0, 0x54(r1)
/* 804B45D8  39 61 00 48 */	addi r11, r1, 0x48
/* 804B45DC  DB E1 00 48 */	stfd f31, 0x48(r1)
/* 804B45E0  4B BE 68 E1 */	bl func_8009AEC0
/* 804B45E4  FF E0 08 90 */	fmr f31, f1
/* 804B45E8  7C BA 2B 78 */	mr r26, r5
/* 804B45EC  7C 78 1B 78 */	mr r24, r3
/* 804B45F0  7C 99 23 78 */	mr r25, r4
/* 804B45F4  7C DB 33 78 */	mr r27, r6
/* 804B45F8  7C FC 3B 78 */	mr r28, r7
/* 804B45FC  7D 1D 43 78 */	mr r29, r8
/* 804B4600  7D 3E 4B 78 */	mr r30, r9
/* 804B4604  7D 5F 53 78 */	mr r31, r10
/* 804B4608  54 A3 04 3E */	clrlwi r3, r5, 0x10
/* 804B460C  4B FF BB 91 */	bl bIT_individual_draw_check
/* 804B4610  2C 03 00 00 */	cmpwi r3, 0
/* 804B4614  41 82 00 74 */	beq lbl_804B4688
/* 804B4618  80 DB 00 00 */	lwz r6, 0(r27)
/* 804B461C  38 61 00 0C */	addi r3, r1, 0xc
/* 804B4620  80 1B 00 04 */	lwz r0, 4(r27)
/* 804B4624  38 81 00 08 */	addi r4, r1, 8
/* 804B4628  38 A1 00 10 */	addi r5, r1, 0x10
/* 804B462C  90 C1 00 10 */	stw r6, 0x10(r1)
/* 804B4630  90 01 00 14 */	stw r0, 0x14(r1)
/* 804B4634  80 1B 00 08 */	lwz r0, 8(r27)
/* 804B4638  90 01 00 18 */	stw r0, 0x18(r1)
/* 804B463C  4B EF 0D 2D */	bl mFI_Wpos2UtNum
/* 804B4640  80 61 00 0C */	lwz r3, 0xc(r1)
/* 804B4644  80 81 00 08 */	lwz r4, 8(r1)
/* 804B4648  4B EF 1F A9 */	bl mFI_UtNum2UtCol
/* 804B464C  80 D9 00 04 */	lwz r6, 4(r25)
/* 804B4650  7C 65 1B 78 */	mr r5, r3
/* 804B4654  7F 43 D3 78 */	mr r3, r26
/* 804B4658  38 81 00 1C */	addi r4, r1, 0x1c
/* 804B465C  4B FF FD AD */	bl fg_no2fg_type
/* 804B4660  FC 20 F8 90 */	fmr f1, f31
/* 804B4664  7F 03 C3 78 */	mr r3, r24
/* 804B4668  7F 24 CB 78 */	mr r4, r25
/* 804B466C  7F 66 DB 78 */	mr r6, r27
/* 804B4670  7F 87 E3 78 */	mr r7, r28
/* 804B4674  7F A8 EB 78 */	mr r8, r29
/* 804B4678  7F C9 F3 78 */	mr r9, r30
/* 804B467C  7F EA FB 78 */	mr r10, r31
/* 804B4680  38 A1 00 1C */	addi r5, r1, 0x1c
/* 804B4684  4B FF FC 61 */	bl bit_cmn_single_draw_BT_shadow
lbl_804B4688:
/* 804B4688  39 61 00 48 */	addi r11, r1, 0x48
/* 804B468C  CB E1 00 48 */	lfd f31, 0x48(r1)
/* 804B4690  4B BE 68 7D */	bl func_8009AF0C
/* 804B4694  80 01 00 54 */	lwz r0, 0x54(r1)
/* 804B4698  7C 08 03 A6 */	mtlr r0
/* 804B469C  38 21 00 50 */	addi r1, r1, 0x50
/* 804B46A0  4E 80 00 20 */	blr 
