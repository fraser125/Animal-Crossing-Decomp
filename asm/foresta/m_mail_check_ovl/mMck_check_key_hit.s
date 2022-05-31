lbl_8050F13C:
/* 8050F13C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8050F140  7C 08 02 A6 */	mflr r0
/* 8050F144  90 01 00 34 */	stw r0, 0x34(r1)
/* 8050F148  39 61 00 30 */	addi r11, r1, 0x30
/* 8050F14C  4B B8 BD 79 */	bl func_8009AEC4
/* 8050F150  7C 79 1B 78 */	mr r25, r3
/* 8050F154  38 00 00 00 */	li r0, 0
/* 8050F158  7C 9A 23 78 */	mr r26, r4
/* 8050F15C  90 03 00 00 */	stw r0, 0(r3)
/* 8050F160  7F 43 D3 78 */	mr r3, r26
/* 8050F164  3B A0 00 00 */	li r29, 0
/* 8050F168  3B 80 00 00 */	li r28, 0
/* 8050F16C  3B 60 00 00 */	li r27, 0
/* 8050F170  38 80 00 BD */	li r4, 0xbd
/* 8050F174  4B FF FE 11 */	bl func_8050EF84
/* 8050F178  7C 7F 1B 79 */	or. r31, r3, r3
/* 8050F17C  40 82 00 48 */	bne lbl_8050F1C4
/* 8050F180  38 60 00 00 */	li r3, 0
/* 8050F184  48 00 00 58 */	b lbl_8050F1DC
/* 8050F188  48 00 00 3C */	b lbl_8050F1C4
lbl_8050F18C:
/* 8050F18C  7F 5E D3 78 */	mr r30, r26
/* 8050F190  7F 43 D3 78 */	mr r3, r26
/* 8050F194  3B 7B 00 01 */	addi r27, r27, 1
/* 8050F198  4B FF FE F9 */	bl mMck_cmp_key
/* 8050F19C  2C 03 00 00 */	cmpwi r3, 0
/* 8050F1A0  41 82 00 08 */	beq lbl_8050F1A8
/* 8050F1A4  3B 9C 00 01 */	addi r28, r28, 1
lbl_8050F1A8:
/* 8050F1A8  7C 1D F8 50 */	subf r0, r29, r31
/* 8050F1AC  7F 43 D3 78 */	mr r3, r26
/* 8050F1B0  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 8050F1B4  4B FF FE 69 */	bl mMck_search_sep
/* 8050F1B8  3B 43 00 01 */	addi r26, r3, 1
/* 8050F1BC  7C 1E D0 50 */	subf r0, r30, r26
/* 8050F1C0  7F BD 02 14 */	add r29, r29, r0
lbl_8050F1C4:
/* 8050F1C4  7C 1D F8 00 */	cmpw r29, r31
/* 8050F1C8  40 81 FF C4 */	ble lbl_8050F18C
/* 8050F1CC  1C 7C 27 10 */	mulli r3, r28, 0x2710
/* 8050F1D0  93 79 00 00 */	stw r27, 0(r25)
/* 8050F1D4  1C 1B 00 64 */	mulli r0, r27, 0x64
/* 8050F1D8  7C 63 03 D6 */	divw r3, r3, r0
lbl_8050F1DC:
/* 8050F1DC  39 61 00 30 */	addi r11, r1, 0x30
/* 8050F1E0  4B B8 BD 31 */	bl func_8009AF10
/* 8050F1E4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8050F1E8  7C 08 03 A6 */	mtlr r0
/* 8050F1EC  38 21 00 30 */	addi r1, r1, 0x30
/* 8050F1F0  4E 80 00 20 */	blr 
