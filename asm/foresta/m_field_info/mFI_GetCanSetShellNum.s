lbl_803AA498:
/* 803AA498  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803AA49C  7C 08 02 A6 */	mflr r0
/* 803AA4A0  90 01 00 34 */	stw r0, 0x34(r1)
/* 803AA4A4  39 61 00 30 */	addi r11, r1, 0x30
/* 803AA4A8  4B CF 0A 1D */	bl func_8009AEC4
/* 803AA4AC  7C 9B 23 78 */	mr r27, r4
/* 803AA4B0  7C BA 2B 78 */	mr r26, r5
/* 803AA4B4  7C 79 1B 78 */	mr r25, r3
/* 803AA4B8  3B 80 00 00 */	li r28, 0
/* 803AA4BC  7F 63 DB 78 */	mr r3, r27
/* 803AA4C0  7F 44 D3 78 */	mr r4, r26
/* 803AA4C4  4B FF CC 91 */	bl mFI_BkNumtoUtFGTop
/* 803AA4C8  7C 60 1B 78 */	mr r0, r3
/* 803AA4CC  7F 63 DB 78 */	mr r3, r27
/* 803AA4D0  7C 1E 03 78 */	mr r30, r0
/* 803AA4D4  7F 44 D3 78 */	mr r4, r26
/* 803AA4D8  4B FF C0 95 */	bl mFI_GetBkNum2ColTop
/* 803AA4DC  7C 60 1B 78 */	mr r0, r3
/* 803AA4E0  7F 63 DB 78 */	mr r3, r27
/* 803AA4E4  7C 1F 03 78 */	mr r31, r0
/* 803AA4E8  7F 44 D3 78 */	mr r4, r26
/* 803AA4EC  4B FF E7 45 */	bl mFI_GetDepositP
/* 803AA4F0  28 1E 00 00 */	cmplwi r30, 0
/* 803AA4F4  7C 7D 1B 78 */	mr r29, r3
/* 803AA4F8  41 82 00 A4 */	beq lbl_803AA59C
/* 803AA4FC  28 1F 00 00 */	cmplwi r31, 0
/* 803AA500  41 82 00 9C */	beq lbl_803AA59C
/* 803AA504  28 1D 00 00 */	cmplwi r29, 0
/* 803AA508  41 82 00 94 */	beq lbl_803AA59C
/* 803AA50C  3B 60 00 00 */	li r27, 0
lbl_803AA510:
/* 803AA510  3B 40 00 00 */	li r26, 0
lbl_803AA514:
/* 803AA514  A0 1E 00 00 */	lhz r0, 0(r30)
/* 803AA518  28 00 00 00 */	cmplwi r0, 0
/* 803AA51C  40 82 00 20 */	bne lbl_803AA53C
/* 803AA520  88 1F 00 03 */	lbz r0, 3(r31)
/* 803AA524  54 03 06 BE */	clrlwi r3, r0, 0x1a
/* 803AA528  4B FE 9E D9 */	bl mCoBG_CheckWaveAttr
/* 803AA52C  2C 03 00 01 */	cmpwi r3, 1
/* 803AA530  40 82 00 0C */	bne lbl_803AA53C
/* 803AA534  3B 9C 00 01 */	addi r28, r28, 1
/* 803AA538  48 00 00 44 */	b lbl_803AA57C
lbl_803AA53C:
/* 803AA53C  A0 1E 00 00 */	lhz r0, 0(r30)
/* 803AA540  28 00 25 14 */	cmplwi r0, 0x2514
/* 803AA544  41 80 00 0C */	blt lbl_803AA550
/* 803AA548  28 00 25 1B */	cmplwi r0, 0x251b
/* 803AA54C  40 81 00 0C */	ble lbl_803AA558
lbl_803AA550:
/* 803AA550  28 00 28 07 */	cmplwi r0, 0x2807
/* 803AA554  40 82 00 28 */	bne lbl_803AA57C
lbl_803AA558:
/* 803AA558  7F A3 EB 78 */	mr r3, r29
/* 803AA55C  7F 44 D3 78 */	mr r4, r26
/* 803AA560  7F 65 DB 78 */	mr r5, r27
/* 803AA564  4B FF E8 CD */	bl mFI_GetBlockDeposit
/* 803AA568  2C 03 00 00 */	cmpwi r3, 0
/* 803AA56C  40 82 00 10 */	bne lbl_803AA57C
/* 803AA570  88 79 00 00 */	lbz r3, 0(r25)
/* 803AA574  38 03 00 01 */	addi r0, r3, 1
/* 803AA578  98 19 00 00 */	stb r0, 0(r25)
lbl_803AA57C:
/* 803AA57C  3B 5A 00 01 */	addi r26, r26, 1
/* 803AA580  3B FF 00 04 */	addi r31, r31, 4
/* 803AA584  2C 1A 00 10 */	cmpwi r26, 0x10
/* 803AA588  3B DE 00 02 */	addi r30, r30, 2
/* 803AA58C  41 80 FF 88 */	blt lbl_803AA514
/* 803AA590  3B 7B 00 01 */	addi r27, r27, 1
/* 803AA594  2C 1B 00 10 */	cmpwi r27, 0x10
/* 803AA598  41 80 FF 78 */	blt lbl_803AA510
lbl_803AA59C:
/* 803AA59C  7F 83 E3 78 */	mr r3, r28
/* 803AA5A0  39 61 00 30 */	addi r11, r1, 0x30
/* 803AA5A4  4B CF 09 6D */	bl func_8009AF10
/* 803AA5A8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803AA5AC  7C 08 03 A6 */	mtlr r0
/* 803AA5B0  38 21 00 30 */	addi r1, r1, 0x30
/* 803AA5B4  4E 80 00 20 */	blr 
