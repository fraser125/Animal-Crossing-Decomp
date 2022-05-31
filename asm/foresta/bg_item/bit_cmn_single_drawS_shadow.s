lbl_804BB950:
/* 804BB950  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 804BB954  7C 08 02 A6 */	mflr r0
/* 804BB958  90 01 00 54 */	stw r0, 0x54(r1)
/* 804BB95C  39 61 00 48 */	addi r11, r1, 0x48
/* 804BB960  DB E1 00 48 */	stfd f31, 0x48(r1)
/* 804BB964  4B BD F5 5D */	bl func_8009AEC0
/* 804BB968  FF E0 08 90 */	fmr f31, f1
/* 804BB96C  7C BA 2B 78 */	mr r26, r5
/* 804BB970  7C 78 1B 78 */	mr r24, r3
/* 804BB974  7C 99 23 78 */	mr r25, r4
/* 804BB978  7C DB 33 78 */	mr r27, r6
/* 804BB97C  7C FC 3B 78 */	mr r28, r7
/* 804BB980  7D 1D 43 78 */	mr r29, r8
/* 804BB984  7D 3E 4B 78 */	mr r30, r9
/* 804BB988  7D 5F 53 78 */	mr r31, r10
/* 804BB98C  54 A3 04 3E */	clrlwi r3, r5, 0x10
/* 804BB990  4B FF BB 91 */	bl bIT_individual_draw_check
/* 804BB994  2C 03 00 00 */	cmpwi r3, 0
/* 804BB998  41 82 00 74 */	beq lbl_804BBA0C
/* 804BB99C  80 DB 00 00 */	lwz r6, 0(r27)
/* 804BB9A0  38 61 00 0C */	addi r3, r1, 0xc
/* 804BB9A4  80 1B 00 04 */	lwz r0, 4(r27)
/* 804BB9A8  38 81 00 08 */	addi r4, r1, 8
/* 804BB9AC  38 A1 00 10 */	addi r5, r1, 0x10
/* 804BB9B0  90 C1 00 10 */	stw r6, 0x10(r1)
/* 804BB9B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804BB9B8  80 1B 00 08 */	lwz r0, 8(r27)
/* 804BB9BC  90 01 00 18 */	stw r0, 0x18(r1)
/* 804BB9C0  4B EE 99 A9 */	bl mFI_Wpos2UtNum
/* 804BB9C4  80 61 00 0C */	lwz r3, 0xc(r1)
/* 804BB9C8  80 81 00 08 */	lwz r4, 8(r1)
/* 804BB9CC  4B EE AC 25 */	bl mFI_UtNum2UtCol
/* 804BB9D0  80 D9 00 04 */	lwz r6, 4(r25)
/* 804BB9D4  7C 65 1B 78 */	mr r5, r3
/* 804BB9D8  7F 43 D3 78 */	mr r3, r26
/* 804BB9DC  38 81 00 1C */	addi r4, r1, 0x1c
/* 804BB9E0  4B FF FD AD */	bl fg_no2fg_type
/* 804BB9E4  FC 20 F8 90 */	fmr f1, f31
/* 804BB9E8  7F 03 C3 78 */	mr r3, r24
/* 804BB9EC  7F 24 CB 78 */	mr r4, r25
/* 804BB9F0  7F 66 DB 78 */	mr r6, r27
/* 804BB9F4  7F 87 E3 78 */	mr r7, r28
/* 804BB9F8  7F A8 EB 78 */	mr r8, r29
/* 804BB9FC  7F C9 F3 78 */	mr r9, r30
/* 804BBA00  7F EA FB 78 */	mr r10, r31
/* 804BBA04  38 A1 00 1C */	addi r5, r1, 0x1c
/* 804BBA08  4B FF FC 61 */	bl bit_cmn_single_draw_BT_shadow
lbl_804BBA0C:
/* 804BBA0C  39 61 00 48 */	addi r11, r1, 0x48
/* 804BBA10  CB E1 00 48 */	lfd f31, 0x48(r1)
/* 804BBA14  4B BD F4 F9 */	bl func_8009AF0C
/* 804BBA18  80 01 00 54 */	lwz r0, 0x54(r1)
/* 804BBA1C  7C 08 03 A6 */	mtlr r0
/* 804BBA20  38 21 00 50 */	addi r1, r1, 0x50
/* 804BBA24  4E 80 00 20 */	blr 
