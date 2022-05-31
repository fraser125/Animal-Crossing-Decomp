lbl_804C3868:
/* 804C3868  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 804C386C  7C 08 02 A6 */	mflr r0
/* 804C3870  90 01 00 64 */	stw r0, 0x64(r1)
/* 804C3874  39 61 00 60 */	addi r11, r1, 0x60
/* 804C3878  4B BD 76 41 */	bl func_8009AEB8
/* 804C387C  7C B8 2B 78 */	mr r24, r5
/* 804C3880  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 804C3884  7C 76 1B 78 */	mr r22, r3
/* 804C3888  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 804C388C  7C 97 23 78 */	mr r23, r4
/* 804C3890  7C D9 33 78 */	mr r25, r6
/* 804C3894  7C FA 3B 78 */	mr r26, r7
/* 804C3898  7D 1B 43 78 */	mr r27, r8
/* 804C389C  7D 3C 4B 78 */	mr r28, r9
/* 804C38A0  7D 5D 53 78 */	mr r29, r10
/* 804C38A4  54 A3 04 3E */	clrlwi r3, r5, 0x10
/* 804C38A8  4B FF B7 71 */	bl bIT_individual_draw_check
/* 804C38AC  2C 03 00 00 */	cmpwi r3, 0
/* 804C38B0  41 82 00 78 */	beq lbl_804C3928
/* 804C38B4  80 D9 00 00 */	lwz r6, 0(r25)
/* 804C38B8  38 61 00 14 */	addi r3, r1, 0x14
/* 804C38BC  80 19 00 04 */	lwz r0, 4(r25)
/* 804C38C0  38 81 00 10 */	addi r4, r1, 0x10
/* 804C38C4  38 A1 00 18 */	addi r5, r1, 0x18
/* 804C38C8  90 C1 00 18 */	stw r6, 0x18(r1)
/* 804C38CC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804C38D0  80 19 00 08 */	lwz r0, 8(r25)
/* 804C38D4  90 01 00 20 */	stw r0, 0x20(r1)
/* 804C38D8  4B EE 1A 91 */	bl mFI_Wpos2UtNum
/* 804C38DC  80 61 00 14 */	lwz r3, 0x14(r1)
/* 804C38E0  80 81 00 10 */	lwz r4, 0x10(r1)
/* 804C38E4  4B EE 2D 0D */	bl mFI_UtNum2UtCol
/* 804C38E8  80 D7 00 04 */	lwz r6, 4(r23)
/* 804C38EC  7C 65 1B 78 */	mr r5, r3
/* 804C38F0  7F 03 C3 78 */	mr r3, r24
/* 804C38F4  38 81 00 24 */	addi r4, r1, 0x24
/* 804C38F8  4B FF F9 8D */	bl fg_no2fg_type
/* 804C38FC  93 C1 00 08 */	stw r30, 8(r1)
/* 804C3900  7E C3 B3 78 */	mr r3, r22
/* 804C3904  7E E4 BB 78 */	mr r4, r23
/* 804C3908  7F 26 CB 78 */	mr r6, r25
/* 804C390C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804C3910  7F 47 D3 78 */	mr r7, r26
/* 804C3914  7F 68 DB 78 */	mr r8, r27
/* 804C3918  7F 89 E3 78 */	mr r9, r28
/* 804C391C  7F AA EB 78 */	mr r10, r29
/* 804C3920  38 A1 00 24 */	addi r5, r1, 0x24
/* 804C3924  4B FF FD 5D */	bl bit_cmn_single_draw_BT
lbl_804C3928:
/* 804C3928  39 61 00 60 */	addi r11, r1, 0x60
/* 804C392C  4B BD 75 D9 */	bl func_8009AF04
/* 804C3930  80 01 00 64 */	lwz r0, 0x64(r1)
/* 804C3934  7C 08 03 A6 */	mtlr r0
/* 804C3938  38 21 00 60 */	addi r1, r1, 0x60
/* 804C393C  4E 80 00 20 */	blr 
