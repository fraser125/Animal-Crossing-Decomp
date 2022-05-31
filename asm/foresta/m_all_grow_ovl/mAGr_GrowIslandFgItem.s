lbl_80512D8C:
/* 80512D8C  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80512D90  7C 08 02 A6 */	mflr r0
/* 80512D94  90 01 00 94 */	stw r0, 0x94(r1)
/* 80512D98  39 61 00 90 */	addi r11, r1, 0x90
/* 80512D9C  4B B8 81 1D */	bl func_8009AEB8
/* 80512DA0  3D 00 81 14 */	lis r8, common_data@ha /* 0x81138538@ha */
/* 80512DA4  7C 79 1B 78 */	mr r25, r3
/* 80512DA8  38 68 85 38 */	addi r3, r8, common_data@l /* 0x81138538@l */
/* 80512DAC  7C 98 23 78 */	mr r24, r4
/* 80512DB0  3F E3 00 02 */	addis r31, r3, 2
/* 80512DB4  7C B7 2B 78 */	mr r23, r5
/* 80512DB8  3B FF 25 54 */	addi r31, r31, 0x2554
/* 80512DBC  7C D6 33 78 */	mr r22, r6
/* 80512DC0  7C FC 3B 78 */	mr r28, r7
/* 80512DC4  38 61 00 14 */	addi r3, r1, 0x14
/* 80512DC8  7F FE FB 78 */	mr r30, r31
/* 80512DCC  4B FF CF AD */	bl mAGrw_ClearGrowInfo
/* 80512DD0  2C 1C 00 01 */	cmpwi r28, 1
/* 80512DD4  92 C1 00 38 */	stw r22, 0x38(r1)
/* 80512DD8  40 82 00 1C */	bne lbl_80512DF4
/* 80512DDC  7F 23 CB 78 */	mr r3, r25
/* 80512DE0  7F 04 C3 78 */	mr r4, r24
/* 80512DE4  4B FF D1 51 */	bl mAGrw_get_pastDays
/* 80512DE8  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80512DEC  90 01 00 28 */	stw r0, 0x28(r1)
/* 80512DF0  48 00 00 3C */	b lbl_80512E2C
lbl_80512DF4:
/* 80512DF4  2C 1C 00 02 */	cmpwi r28, 2
/* 80512DF8  40 82 00 34 */	bne lbl_80512E2C
/* 80512DFC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80512E00  88 99 00 03 */	lbz r4, 3(r25)
/* 80512E04  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80512E08  3C 63 00 02 */	addis r3, r3, 2
/* 80512E0C  88 03 06 8F */	lbz r0, 0x68f(r3)
/* 80512E10  7C 04 00 40 */	cmplw r4, r0
/* 80512E14  41 82 00 10 */	beq lbl_80512E24
/* 80512E18  38 00 FF FF */	li r0, -1
/* 80512E1C  90 01 00 28 */	stw r0, 0x28(r1)
/* 80512E20  48 00 00 0C */	b lbl_80512E2C
lbl_80512E24:
/* 80512E24  38 00 00 00 */	li r0, 0
/* 80512E28  90 01 00 28 */	stw r0, 0x28(r1)
lbl_80512E2C:
/* 80512E2C  92 E1 00 34 */	stw r23, 0x34(r1)
/* 80512E30  38 61 00 0C */	addi r3, r1, 0xc
/* 80512E34  4B E9 36 A5 */	bl mFI_GetIslandBlockNumX
/* 80512E38  38 00 00 01 */	li r0, 1
/* 80512E3C  3C 60 81 1D */	lis r3, tree0_info_2120@ha /* 0x811D3558@ha */
/* 80512E40  3A E3 35 58 */	addi r23, r3, tree0_info_2120@l /* 0x811D3558@l */
/* 80512E44  90 01 00 30 */	stw r0, 0x30(r1)
/* 80512E48  3B 01 00 0C */	addi r24, r1, 0xc
/* 80512E4C  3B A0 00 00 */	li r29, 0
/* 80512E50  7E F9 BB 78 */	mr r25, r23
/* 80512E54  3B 60 00 00 */	li r27, 0
/* 80512E58  3B 40 00 00 */	li r26, 0
lbl_80512E5C:
/* 80512E5C  38 00 00 00 */	li r0, 0
/* 80512E60  7E E3 BB 78 */	mr r3, r23
/* 80512E64  98 01 00 09 */	stb r0, 9(r1)
/* 80512E68  7F C4 F3 78 */	mr r4, r30
/* 80512E6C  98 01 00 08 */	stb r0, 8(r1)
/* 80512E70  4B FF E8 55 */	bl mAGrw_SetTree0Info
/* 80512E74  7C 78 D0 2E */	lwzx r3, r24, r26
/* 80512E78  38 00 00 08 */	li r0, 8
/* 80512E7C  90 01 00 40 */	stw r0, 0x40(r1)
/* 80512E80  38 80 00 08 */	li r4, 8
/* 80512E84  90 61 00 3C */	stw r3, 0x3c(r1)
/* 80512E88  4B E9 36 E5 */	bl mFI_GetBkNum2ColTop
/* 80512E8C  7C 76 1B 79 */	or. r22, r3, r3
/* 80512E90  41 82 00 40 */	beq lbl_80512ED0
/* 80512E94  2C 1C 00 01 */	cmpwi r28, 1
/* 80512E98  40 82 00 10 */	bne lbl_80512EA8
/* 80512E9C  7F A4 EB 78 */	mr r4, r29
/* 80512EA0  38 61 00 14 */	addi r3, r1, 0x14
/* 80512EA4  4B FF D0 1D */	bl mAGrw_SetAroundBlockInfoIsland
lbl_80512EA8:
/* 80512EA8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80512EAC  7F C3 F3 78 */	mr r3, r30
/* 80512EB0  38 04 85 38 */	addi r0, r4, common_data@l /* 0x81138538@l */
/* 80512EB4  7E C4 B3 78 */	mr r4, r22
/* 80512EB8  7C A0 DA 14 */	add r5, r0, r27
/* 80512EBC  38 C1 00 14 */	addi r6, r1, 0x14
/* 80512EC0  3C A5 00 02 */	addis r5, r5, 2
/* 80512EC4  38 FC 00 03 */	addi r7, r28, 3
/* 80512EC8  38 A5 3D C8 */	addi r5, r5, 0x3dc8
/* 80512ECC  4B FF F4 ED */	bl mAGrw_GrowBlockFgItem
lbl_80512ED0:
/* 80512ED0  7E E3 BB 78 */	mr r3, r23
/* 80512ED4  7F C6 F3 78 */	mr r6, r30
/* 80512ED8  38 81 00 09 */	addi r4, r1, 9
/* 80512EDC  38 A1 00 08 */	addi r5, r1, 8
/* 80512EE0  4B FF E8 CD */	bl mAGrw_ResetTree0Info
/* 80512EE4  88 A1 00 09 */	lbz r5, 9(r1)
/* 80512EE8  7F C3 F3 78 */	mr r3, r30
/* 80512EEC  88 C1 00 08 */	lbz r6, 8(r1)
/* 80512EF0  7F 24 CB 78 */	mr r4, r25
/* 80512EF4  38 E0 00 0F */	li r7, 0xf
/* 80512EF8  4B FF EA B9 */	bl mAGrw_ThinTree
/* 80512EFC  3B BD 00 01 */	addi r29, r29, 1
/* 80512F00  3B 7B 00 20 */	addi r27, r27, 0x20
/* 80512F04  2C 1D 00 02 */	cmpwi r29, 2
/* 80512F08  3B 5A 00 04 */	addi r26, r26, 4
/* 80512F0C  3B DE 02 00 */	addi r30, r30, 0x200
/* 80512F10  41 80 FF 4C */	blt lbl_80512E5C
/* 80512F14  7F E3 FB 78 */	mr r3, r31
/* 80512F18  4B FF FB E5 */	bl mAGrw_LimitTreeLineIsland
/* 80512F1C  39 61 00 90 */	addi r11, r1, 0x90
/* 80512F20  4B B8 7F E5 */	bl func_8009AF04
/* 80512F24  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80512F28  7C 08 03 A6 */	mtlr r0
/* 80512F2C  38 21 00 90 */	addi r1, r1, 0x90
/* 80512F30  4E 80 00 20 */	blr 
