lbl_804CA860:
/* 804CA860  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 804CA864  7C 08 02 A6 */	mflr r0
/* 804CA868  90 01 00 54 */	stw r0, 0x54(r1)
/* 804CA86C  39 61 00 48 */	addi r11, r1, 0x48
/* 804CA870  DB E1 00 48 */	stfd f31, 0x48(r1)
/* 804CA874  4B BD 06 4D */	bl func_8009AEC0
/* 804CA878  FF E0 08 90 */	fmr f31, f1
/* 804CA87C  7C BA 2B 78 */	mr r26, r5
/* 804CA880  7C 78 1B 78 */	mr r24, r3
/* 804CA884  7C 99 23 78 */	mr r25, r4
/* 804CA888  7C DB 33 78 */	mr r27, r6
/* 804CA88C  7C FC 3B 78 */	mr r28, r7
/* 804CA890  7D 1D 43 78 */	mr r29, r8
/* 804CA894  7D 3E 4B 78 */	mr r30, r9
/* 804CA898  7D 5F 53 78 */	mr r31, r10
/* 804CA89C  54 A3 04 3E */	clrlwi r3, r5, 0x10
/* 804CA8A0  4B FF BB 91 */	bl bIT_individual_draw_check
/* 804CA8A4  2C 03 00 00 */	cmpwi r3, 0
/* 804CA8A8  41 82 00 74 */	beq lbl_804CA91C
/* 804CA8AC  80 DB 00 00 */	lwz r6, 0(r27)
/* 804CA8B0  38 61 00 0C */	addi r3, r1, 0xc
/* 804CA8B4  80 1B 00 04 */	lwz r0, 4(r27)
/* 804CA8B8  38 81 00 08 */	addi r4, r1, 8
/* 804CA8BC  38 A1 00 10 */	addi r5, r1, 0x10
/* 804CA8C0  90 C1 00 10 */	stw r6, 0x10(r1)
/* 804CA8C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804CA8C8  80 1B 00 08 */	lwz r0, 8(r27)
/* 804CA8CC  90 01 00 18 */	stw r0, 0x18(r1)
/* 804CA8D0  4B ED AA 99 */	bl mFI_Wpos2UtNum
/* 804CA8D4  80 61 00 0C */	lwz r3, 0xc(r1)
/* 804CA8D8  80 81 00 08 */	lwz r4, 8(r1)
/* 804CA8DC  4B ED BD 15 */	bl mFI_UtNum2UtCol
/* 804CA8E0  80 D9 00 04 */	lwz r6, 4(r25)
/* 804CA8E4  7C 65 1B 78 */	mr r5, r3
/* 804CA8E8  7F 43 D3 78 */	mr r3, r26
/* 804CA8EC  38 81 00 1C */	addi r4, r1, 0x1c
/* 804CA8F0  4B FF FD AD */	bl fg_no2fg_type
/* 804CA8F4  FC 20 F8 90 */	fmr f1, f31
/* 804CA8F8  7F 03 C3 78 */	mr r3, r24
/* 804CA8FC  7F 24 CB 78 */	mr r4, r25
/* 804CA900  7F 66 DB 78 */	mr r6, r27
/* 804CA904  7F 87 E3 78 */	mr r7, r28
/* 804CA908  7F A8 EB 78 */	mr r8, r29
/* 804CA90C  7F C9 F3 78 */	mr r9, r30
/* 804CA910  7F EA FB 78 */	mr r10, r31
/* 804CA914  38 A1 00 1C */	addi r5, r1, 0x1c
/* 804CA918  4B FF FC 61 */	bl bit_cmn_single_draw_BT_shadow
lbl_804CA91C:
/* 804CA91C  39 61 00 48 */	addi r11, r1, 0x48
/* 804CA920  CB E1 00 48 */	lfd f31, 0x48(r1)
/* 804CA924  4B BD 05 E9 */	bl func_8009AF0C
/* 804CA928  80 01 00 54 */	lwz r0, 0x54(r1)
/* 804CA92C  7C 08 03 A6 */	mtlr r0
/* 804CA930  38 21 00 50 */	addi r1, r1, 0x50
/* 804CA934  4E 80 00 20 */	blr 
