lbl_803E4D40:
/* 803E4D40  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803E4D44  7C 08 02 A6 */	mflr r0
/* 803E4D48  90 01 00 24 */	stw r0, 0x24(r1)
/* 803E4D4C  39 61 00 20 */	addi r11, r1, 0x20
/* 803E4D50  4B CB 61 7D */	bl func_8009AECC
/* 803E4D54  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803E4D58  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803E4D5C  80 03 00 14 */	lwz r0, 0x14(r3)
/* 803E4D60  2C 00 00 07 */	cmpwi r0, 7
/* 803E4D64  40 82 00 6C */	bne lbl_803E4DD0
/* 803E4D68  4B FC 00 29 */	bl mFI_GetBlockXMax
/* 803E4D6C  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 803E4D70  3B E3 FF FF */	addi r31, r3, -1
/* 803E4D74  4B FC 00 65 */	bl mFI_GetBlockZMax
/* 803E4D78  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 803E4D7C  3B 80 00 01 */	li r28, 1
/* 803E4D80  3B C3 FF FF */	addi r30, r3, -1
/* 803E4D84  48 00 00 44 */	b lbl_803E4DC8
lbl_803E4D88:
/* 803E4D88  3B A0 00 01 */	li r29, 1
/* 803E4D8C  48 00 00 30 */	b lbl_803E4DBC
lbl_803E4D90:
/* 803E4D90  7F A3 EB 78 */	mr r3, r29
/* 803E4D94  7F 84 E3 78 */	mr r4, r28
/* 803E4D98  4B FC 17 D5 */	bl mFI_GetBkNum2ColTop
/* 803E4D9C  7C 60 1B 78 */	mr r0, r3
/* 803E4DA0  7F A3 EB 78 */	mr r3, r29
/* 803E4DA4  7C 1B 03 78 */	mr r27, r0
/* 803E4DA8  7F 84 E3 78 */	mr r4, r28
/* 803E4DAC  4B FC 14 39 */	bl mFI_BkNum2BlockType
/* 803E4DB0  7F 64 DB 78 */	mr r4, r27
/* 803E4DB4  4B FF FE 45 */	bl mRF_BlockInf2CheckBeastRoad
/* 803E4DB8  3B BD 00 01 */	addi r29, r29, 1
lbl_803E4DBC:
/* 803E4DBC  7C 1D F8 00 */	cmpw r29, r31
/* 803E4DC0  41 80 FF D0 */	blt lbl_803E4D90
/* 803E4DC4  3B 9C 00 01 */	addi r28, r28, 1
lbl_803E4DC8:
/* 803E4DC8  7C 1C F0 00 */	cmpw r28, r30
/* 803E4DCC  41 80 FF BC */	blt lbl_803E4D88
lbl_803E4DD0:
/* 803E4DD0  39 61 00 20 */	addi r11, r1, 0x20
/* 803E4DD4  4B CB 61 45 */	bl func_8009AF18
/* 803E4DD8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803E4DDC  7C 08 03 A6 */	mtlr r0
/* 803E4DE0  38 21 00 20 */	addi r1, r1, 0x20
/* 803E4DE4  4E 80 00 20 */	blr 
