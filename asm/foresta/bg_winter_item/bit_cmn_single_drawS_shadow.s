lbl_804C3448:
/* 804C3448  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 804C344C  7C 08 02 A6 */	mflr r0
/* 804C3450  90 01 00 54 */	stw r0, 0x54(r1)
/* 804C3454  39 61 00 48 */	addi r11, r1, 0x48
/* 804C3458  DB E1 00 48 */	stfd f31, 0x48(r1)
/* 804C345C  4B BD 7A 65 */	bl func_8009AEC0
/* 804C3460  FF E0 08 90 */	fmr f31, f1
/* 804C3464  7C BA 2B 78 */	mr r26, r5
/* 804C3468  7C 78 1B 78 */	mr r24, r3
/* 804C346C  7C 99 23 78 */	mr r25, r4
/* 804C3470  7C DB 33 78 */	mr r27, r6
/* 804C3474  7C FC 3B 78 */	mr r28, r7
/* 804C3478  7D 1D 43 78 */	mr r29, r8
/* 804C347C  7D 3E 4B 78 */	mr r30, r9
/* 804C3480  7D 5F 53 78 */	mr r31, r10
/* 804C3484  54 A3 04 3E */	clrlwi r3, r5, 0x10
/* 804C3488  4B FF BB 91 */	bl bIT_individual_draw_check
/* 804C348C  2C 03 00 00 */	cmpwi r3, 0
/* 804C3490  41 82 00 74 */	beq lbl_804C3504
/* 804C3494  80 DB 00 00 */	lwz r6, 0(r27)
/* 804C3498  38 61 00 0C */	addi r3, r1, 0xc
/* 804C349C  80 1B 00 04 */	lwz r0, 4(r27)
/* 804C34A0  38 81 00 08 */	addi r4, r1, 8
/* 804C34A4  38 A1 00 10 */	addi r5, r1, 0x10
/* 804C34A8  90 C1 00 10 */	stw r6, 0x10(r1)
/* 804C34AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804C34B0  80 1B 00 08 */	lwz r0, 8(r27)
/* 804C34B4  90 01 00 18 */	stw r0, 0x18(r1)
/* 804C34B8  4B EE 1E B1 */	bl mFI_Wpos2UtNum
/* 804C34BC  80 61 00 0C */	lwz r3, 0xc(r1)
/* 804C34C0  80 81 00 08 */	lwz r4, 8(r1)
/* 804C34C4  4B EE 31 2D */	bl mFI_UtNum2UtCol
/* 804C34C8  80 D9 00 04 */	lwz r6, 4(r25)
/* 804C34CC  7C 65 1B 78 */	mr r5, r3
/* 804C34D0  7F 43 D3 78 */	mr r3, r26
/* 804C34D4  38 81 00 1C */	addi r4, r1, 0x1c
/* 804C34D8  4B FF FD AD */	bl fg_no2fg_type
/* 804C34DC  FC 20 F8 90 */	fmr f1, f31
/* 804C34E0  7F 03 C3 78 */	mr r3, r24
/* 804C34E4  7F 24 CB 78 */	mr r4, r25
/* 804C34E8  7F 66 DB 78 */	mr r6, r27
/* 804C34EC  7F 87 E3 78 */	mr r7, r28
/* 804C34F0  7F A8 EB 78 */	mr r8, r29
/* 804C34F4  7F C9 F3 78 */	mr r9, r30
/* 804C34F8  7F EA FB 78 */	mr r10, r31
/* 804C34FC  38 A1 00 1C */	addi r5, r1, 0x1c
/* 804C3500  4B FF FC 61 */	bl bit_cmn_single_draw_BT_shadow
lbl_804C3504:
/* 804C3504  39 61 00 48 */	addi r11, r1, 0x48
/* 804C3508  CB E1 00 48 */	lfd f31, 0x48(r1)
/* 804C350C  4B BD 7A 01 */	bl func_8009AF0C
/* 804C3510  80 01 00 54 */	lwz r0, 0x54(r1)
/* 804C3514  7C 08 03 A6 */	mtlr r0
/* 804C3518  38 21 00 50 */	addi r1, r1, 0x50
/* 804C351C  4E 80 00 20 */	blr 
