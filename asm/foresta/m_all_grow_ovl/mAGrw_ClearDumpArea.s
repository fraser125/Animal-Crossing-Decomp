lbl_80514194:
/* 80514194  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80514198  7C 08 02 A6 */	mflr r0
/* 8051419C  90 01 00 34 */	stw r0, 0x34(r1)
/* 805141A0  39 61 00 30 */	addi r11, r1, 0x30
/* 805141A4  4B B8 6D 1D */	bl func_8009AEC0
/* 805141A8  7C 78 1B 78 */	mr r24, r3
/* 805141AC  80 63 00 00 */	lwz r3, 0(r3)
/* 805141B0  80 98 00 04 */	lwz r4, 4(r24)
/* 805141B4  4B E9 4A 7D */	bl mFI_GetDepositP
/* 805141B8  80 B8 00 0C */	lwz r5, 0xc(r24)
/* 805141BC  7C 7C 1B 78 */	mr r28, r3
/* 805141C0  80 D8 00 08 */	lwz r6, 8(r24)
/* 805141C4  3B 20 00 00 */	li r25, 0
/* 805141C8  80 98 00 10 */	lwz r4, 0x10(r24)
/* 805141CC  54 A0 28 34 */	slwi r0, r5, 5
/* 805141D0  54 C3 08 3C */	slwi r3, r6, 1
/* 805141D4  3B 66 FF FC */	addi r27, r6, -4
/* 805141D8  7F A3 02 14 */	add r29, r3, r0
/* 805141DC  3B 45 FF FC */	addi r26, r5, -4
/* 805141E0  7F A4 EA 14 */	add r29, r4, r29
/* 805141E4  3B E0 00 00 */	li r31, 0
/* 805141E8  3B BD FF 78 */	addi r29, r29, -136
lbl_805141EC:
/* 805141EC  3B 00 00 00 */	li r24, 0
/* 805141F0  7F DA CA 14 */	add r30, r26, r25
lbl_805141F4:
/* 805141F4  28 1D 00 00 */	cmplwi r29, 0
/* 805141F8  41 82 00 28 */	beq lbl_80514220
/* 805141FC  7F A3 EB 78 */	mr r3, r29
/* 80514200  4B ED D9 6D */	bl mSN_ClearSnowman
/* 80514204  28 1C 00 00 */	cmplwi r28, 0
/* 80514208  B3 FD 00 00 */	sth r31, 0(r29)
/* 8051420C  41 82 00 14 */	beq lbl_80514220
/* 80514210  7F 83 E3 78 */	mr r3, r28
/* 80514214  7F C5 F3 78 */	mr r5, r30
/* 80514218  7C 9B C2 14 */	add r4, r27, r24
/* 8051421C  4B E9 4B F1 */	bl mFI_BlockDepositOFF
lbl_80514220:
/* 80514220  3B 18 00 01 */	addi r24, r24, 1
/* 80514224  3B BD 00 02 */	addi r29, r29, 2
/* 80514228  2C 18 00 04 */	cmpwi r24, 4
/* 8051422C  41 80 FF C8 */	blt lbl_805141F4
/* 80514230  3B 39 00 01 */	addi r25, r25, 1
/* 80514234  3B BD 00 18 */	addi r29, r29, 0x18
/* 80514238  2C 19 00 04 */	cmpwi r25, 4
/* 8051423C  41 80 FF B0 */	blt lbl_805141EC
/* 80514240  39 61 00 30 */	addi r11, r1, 0x30
/* 80514244  4B B8 6C C9 */	bl func_8009AF0C
/* 80514248  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8051424C  7C 08 03 A6 */	mtlr r0
/* 80514250  38 21 00 30 */	addi r1, r1, 0x30
/* 80514254  4E 80 00 20 */	blr 