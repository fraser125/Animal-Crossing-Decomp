lbl_80514D28:
/* 80514D28  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80514D2C  7C 08 02 A6 */	mflr r0
/* 80514D30  90 01 00 84 */	stw r0, 0x84(r1)
/* 80514D34  39 61 00 80 */	addi r11, r1, 0x80
/* 80514D38  4B B8 61 95 */	bl func_8009AECC
/* 80514D3C  3B 83 00 14 */	addi r28, r3, 0x14
/* 80514D40  38 61 00 10 */	addi r3, r1, 0x10
/* 80514D44  4B FF B0 35 */	bl mAGrw_ClearGrowInfo
/* 80514D48  38 00 00 01 */	li r0, 1
/* 80514D4C  38 61 00 08 */	addi r3, r1, 8
/* 80514D50  90 01 00 34 */	stw r0, 0x34(r1)
/* 80514D54  4B E9 17 85 */	bl mFI_GetIslandBlockNumX
/* 80514D58  3B A1 00 08 */	addi r29, r1, 8
/* 80514D5C  3B 60 00 00 */	li r27, 0
/* 80514D60  3B E0 00 00 */	li r31, 0
/* 80514D64  3B C0 00 08 */	li r30, 8
lbl_80514D68:
/* 80514D68  7C 7D F8 2E */	lwzx r3, r29, r31
/* 80514D6C  38 80 00 08 */	li r4, 8
/* 80514D70  93 C1 00 3C */	stw r30, 0x3c(r1)
/* 80514D74  90 61 00 38 */	stw r3, 0x38(r1)
/* 80514D78  4B E9 17 F5 */	bl mFI_GetBkNum2ColTop
/* 80514D7C  7C 64 1B 79 */	or. r4, r3, r3
/* 80514D80  41 82 00 10 */	beq lbl_80514D90
/* 80514D84  7F 83 E3 78 */	mr r3, r28
/* 80514D88  38 A1 00 10 */	addi r5, r1, 0x10
/* 80514D8C  4B FF FD ED */	bl mAgrw_ZuruSpoilKabuBlockFgItem
lbl_80514D90:
/* 80514D90  3B 7B 00 01 */	addi r27, r27, 1
/* 80514D94  3B FF 00 04 */	addi r31, r31, 4
/* 80514D98  2C 1B 00 02 */	cmpwi r27, 2
/* 80514D9C  3B 9C 02 00 */	addi r28, r28, 0x200
/* 80514DA0  41 80 FF C8 */	blt lbl_80514D68
/* 80514DA4  39 61 00 80 */	addi r11, r1, 0x80
/* 80514DA8  4B B8 61 71 */	bl func_8009AF18
/* 80514DAC  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80514DB0  7C 08 03 A6 */	mtlr r0
/* 80514DB4  38 21 00 80 */	addi r1, r1, 0x80
/* 80514DB8  4E 80 00 20 */	blr 
