lbl_804BBD70:
/* 804BBD70  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 804BBD74  7C 08 02 A6 */	mflr r0
/* 804BBD78  90 01 00 64 */	stw r0, 0x64(r1)
/* 804BBD7C  39 61 00 60 */	addi r11, r1, 0x60
/* 804BBD80  4B BD F1 39 */	bl func_8009AEB8
/* 804BBD84  7C B8 2B 78 */	mr r24, r5
/* 804BBD88  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 804BBD8C  7C 76 1B 78 */	mr r22, r3
/* 804BBD90  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 804BBD94  7C 97 23 78 */	mr r23, r4
/* 804BBD98  7C D9 33 78 */	mr r25, r6
/* 804BBD9C  7C FA 3B 78 */	mr r26, r7
/* 804BBDA0  7D 1B 43 78 */	mr r27, r8
/* 804BBDA4  7D 3C 4B 78 */	mr r28, r9
/* 804BBDA8  7D 5D 53 78 */	mr r29, r10
/* 804BBDAC  54 A3 04 3E */	clrlwi r3, r5, 0x10
/* 804BBDB0  4B FF B7 71 */	bl bIT_individual_draw_check
/* 804BBDB4  2C 03 00 00 */	cmpwi r3, 0
/* 804BBDB8  41 82 00 78 */	beq lbl_804BBE30
/* 804BBDBC  80 D9 00 00 */	lwz r6, 0(r25)
/* 804BBDC0  38 61 00 14 */	addi r3, r1, 0x14
/* 804BBDC4  80 19 00 04 */	lwz r0, 4(r25)
/* 804BBDC8  38 81 00 10 */	addi r4, r1, 0x10
/* 804BBDCC  38 A1 00 18 */	addi r5, r1, 0x18
/* 804BBDD0  90 C1 00 18 */	stw r6, 0x18(r1)
/* 804BBDD4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804BBDD8  80 19 00 08 */	lwz r0, 8(r25)
/* 804BBDDC  90 01 00 20 */	stw r0, 0x20(r1)
/* 804BBDE0  4B EE 95 89 */	bl mFI_Wpos2UtNum
/* 804BBDE4  80 61 00 14 */	lwz r3, 0x14(r1)
/* 804BBDE8  80 81 00 10 */	lwz r4, 0x10(r1)
/* 804BBDEC  4B EE A8 05 */	bl mFI_UtNum2UtCol
/* 804BBDF0  80 D7 00 04 */	lwz r6, 4(r23)
/* 804BBDF4  7C 65 1B 78 */	mr r5, r3
/* 804BBDF8  7F 03 C3 78 */	mr r3, r24
/* 804BBDFC  38 81 00 24 */	addi r4, r1, 0x24
/* 804BBE00  4B FF F9 8D */	bl fg_no2fg_type
/* 804BBE04  93 C1 00 08 */	stw r30, 8(r1)
/* 804BBE08  7E C3 B3 78 */	mr r3, r22
/* 804BBE0C  7E E4 BB 78 */	mr r4, r23
/* 804BBE10  7F 26 CB 78 */	mr r6, r25
/* 804BBE14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804BBE18  7F 47 D3 78 */	mr r7, r26
/* 804BBE1C  7F 68 DB 78 */	mr r8, r27
/* 804BBE20  7F 89 E3 78 */	mr r9, r28
/* 804BBE24  7F AA EB 78 */	mr r10, r29
/* 804BBE28  38 A1 00 24 */	addi r5, r1, 0x24
/* 804BBE2C  4B FF FD 5D */	bl bit_cmn_single_draw_BT
lbl_804BBE30:
/* 804BBE30  39 61 00 60 */	addi r11, r1, 0x60
/* 804BBE34  4B BD F0 D1 */	bl func_8009AF04
/* 804BBE38  80 01 00 64 */	lwz r0, 0x64(r1)
/* 804BBE3C  7C 08 03 A6 */	mtlr r0
/* 804BBE40  38 21 00 60 */	addi r1, r1, 0x60
/* 804BBE44  4E 80 00 20 */	blr 
