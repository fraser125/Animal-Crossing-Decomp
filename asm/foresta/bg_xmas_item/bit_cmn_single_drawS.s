lbl_804CAC80:
/* 804CAC80  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 804CAC84  7C 08 02 A6 */	mflr r0
/* 804CAC88  90 01 00 64 */	stw r0, 0x64(r1)
/* 804CAC8C  39 61 00 60 */	addi r11, r1, 0x60
/* 804CAC90  4B BD 02 29 */	bl func_8009AEB8
/* 804CAC94  7C B8 2B 78 */	mr r24, r5
/* 804CAC98  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 804CAC9C  7C 76 1B 78 */	mr r22, r3
/* 804CACA0  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 804CACA4  7C 97 23 78 */	mr r23, r4
/* 804CACA8  7C D9 33 78 */	mr r25, r6
/* 804CACAC  7C FA 3B 78 */	mr r26, r7
/* 804CACB0  7D 1B 43 78 */	mr r27, r8
/* 804CACB4  7D 3C 4B 78 */	mr r28, r9
/* 804CACB8  7D 5D 53 78 */	mr r29, r10
/* 804CACBC  54 A3 04 3E */	clrlwi r3, r5, 0x10
/* 804CACC0  4B FF B7 71 */	bl bIT_individual_draw_check
/* 804CACC4  2C 03 00 00 */	cmpwi r3, 0
/* 804CACC8  41 82 00 78 */	beq lbl_804CAD40
/* 804CACCC  80 D9 00 00 */	lwz r6, 0(r25)
/* 804CACD0  38 61 00 14 */	addi r3, r1, 0x14
/* 804CACD4  80 19 00 04 */	lwz r0, 4(r25)
/* 804CACD8  38 81 00 10 */	addi r4, r1, 0x10
/* 804CACDC  38 A1 00 18 */	addi r5, r1, 0x18
/* 804CACE0  90 C1 00 18 */	stw r6, 0x18(r1)
/* 804CACE4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804CACE8  80 19 00 08 */	lwz r0, 8(r25)
/* 804CACEC  90 01 00 20 */	stw r0, 0x20(r1)
/* 804CACF0  4B ED A6 79 */	bl mFI_Wpos2UtNum
/* 804CACF4  80 61 00 14 */	lwz r3, 0x14(r1)
/* 804CACF8  80 81 00 10 */	lwz r4, 0x10(r1)
/* 804CACFC  4B ED B8 F5 */	bl mFI_UtNum2UtCol
/* 804CAD00  80 D7 00 04 */	lwz r6, 4(r23)
/* 804CAD04  7C 65 1B 78 */	mr r5, r3
/* 804CAD08  7F 03 C3 78 */	mr r3, r24
/* 804CAD0C  38 81 00 24 */	addi r4, r1, 0x24
/* 804CAD10  4B FF F9 8D */	bl fg_no2fg_type
/* 804CAD14  93 C1 00 08 */	stw r30, 8(r1)
/* 804CAD18  7E C3 B3 78 */	mr r3, r22
/* 804CAD1C  7E E4 BB 78 */	mr r4, r23
/* 804CAD20  7F 26 CB 78 */	mr r6, r25
/* 804CAD24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804CAD28  7F 47 D3 78 */	mr r7, r26
/* 804CAD2C  7F 68 DB 78 */	mr r8, r27
/* 804CAD30  7F 89 E3 78 */	mr r9, r28
/* 804CAD34  7F AA EB 78 */	mr r10, r29
/* 804CAD38  38 A1 00 24 */	addi r5, r1, 0x24
/* 804CAD3C  4B FF FD 5D */	bl bit_cmn_single_draw_BT
lbl_804CAD40:
/* 804CAD40  39 61 00 60 */	addi r11, r1, 0x60
/* 804CAD44  4B BD 01 C1 */	bl func_8009AF04
/* 804CAD48  80 01 00 64 */	lwz r0, 0x64(r1)
/* 804CAD4C  7C 08 03 A6 */	mtlr r0
/* 804CAD50  38 21 00 60 */	addi r1, r1, 0x60
/* 804CAD54  4E 80 00 20 */	blr 
