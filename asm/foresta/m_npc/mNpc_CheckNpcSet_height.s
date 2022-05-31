lbl_803D31B8:
/* 803D31B8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803D31BC  7C 08 02 A6 */	mflr r0
/* 803D31C0  90 01 00 44 */	stw r0, 0x44(r1)
/* 803D31C4  39 61 00 40 */	addi r11, r1, 0x40
/* 803D31C8  4B CC 7D 05 */	bl func_8009AECC
/* 803D31CC  28 08 00 00 */	cmplwi r8, 0
/* 803D31D0  7C 7B 1B 78 */	mr r27, r3
/* 803D31D4  7C 9C 23 78 */	mr r28, r4
/* 803D31D8  7C BD 2B 78 */	mr r29, r5
/* 803D31DC  7C DE 33 78 */	mr r30, r6
/* 803D31E0  3B E0 00 00 */	li r31, 0
/* 803D31E4  41 82 00 60 */	beq lbl_803D3244
/* 803D31E8  88 08 00 03 */	lbz r0, 3(r8)
/* 803D31EC  7C E3 3B 78 */	mr r3, r7
/* 803D31F0  54 04 06 BE */	clrlwi r4, r0, 0x1a
/* 803D31F4  4B FF FA F9 */	bl mNpc_CheckNpcSet_fgcol
/* 803D31F8  2C 03 00 00 */	cmpwi r3, 0
/* 803D31FC  41 82 00 48 */	beq lbl_803D3244
/* 803D3200  7F 64 DB 78 */	mr r4, r27
/* 803D3204  7F 85 E3 78 */	mr r5, r28
/* 803D3208  7F A6 EB 78 */	mr r6, r29
/* 803D320C  7F C7 F3 78 */	mr r7, r30
/* 803D3210  38 61 00 14 */	addi r3, r1, 0x14
/* 803D3214  4B FD 2A 51 */	bl mFI_BkandUtNum2Wpos
/* 803D3218  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 803D321C  38 61 00 08 */	addi r3, r1, 8
/* 803D3220  80 81 00 18 */	lwz r4, 0x18(r1)
/* 803D3224  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 803D3228  90 A1 00 08 */	stw r5, 8(r1)
/* 803D322C  90 81 00 0C */	stw r4, 0xc(r1)
/* 803D3230  90 01 00 10 */	stw r0, 0x10(r1)
/* 803D3234  4B FB D8 B5 */	bl mCoBG_ExistHeightGap_KeepAndNow
/* 803D3238  2C 03 00 00 */	cmpwi r3, 0
/* 803D323C  40 82 00 08 */	bne lbl_803D3244
/* 803D3240  3B E0 00 01 */	li r31, 1
lbl_803D3244:
/* 803D3244  7F E3 FB 78 */	mr r3, r31
/* 803D3248  39 61 00 40 */	addi r11, r1, 0x40
/* 803D324C  4B CC 7C CD */	bl func_8009AF18
/* 803D3250  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803D3254  7C 08 03 A6 */	mtlr r0
/* 803D3258  38 21 00 40 */	addi r1, r1, 0x40
/* 803D325C  4E 80 00 20 */	blr 
