lbl_80513D18:
/* 80513D18  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80513D1C  7C 08 02 A6 */	mflr r0
/* 80513D20  90 01 00 44 */	stw r0, 0x44(r1)
/* 80513D24  39 61 00 40 */	addi r11, r1, 0x40
/* 80513D28  4B B8 71 91 */	bl func_8009AEB8
/* 80513D2C  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 80513D30  39 00 00 00 */	li r8, 0
/* 80513D34  39 26 85 38 */	addi r9, r6, common_data@l /* 0x81138538@l */
/* 80513D38  3C E0 81 1D */	lis r7, data_811D3518@ha /* 0x811D3518@ha */
/* 80513D3C  7C BB 2B 78 */	mr r27, r5
/* 80513D40  3C C0 81 1D */	lis r6, l_candidate_flat_num@ha /* 0x811D3578@ha */
/* 80513D44  3F E9 00 01 */	addis r31, r9, 1
/* 80513D48  38 A7 35 18 */	addi r5, r7, data_811D3518@l /* 0x811D3518@l */
/* 80513D4C  38 06 35 78 */	addi r0, r6, l_candidate_flat_num@l /* 0x811D3578@l */
/* 80513D50  7C 79 1B 78 */	mr r25, r3
/* 80513D54  7C 9A 23 78 */	mr r26, r4
/* 80513D58  99 01 00 09 */	stb r8, 9(r1)
/* 80513D5C  7C BE 2B 78 */	mr r30, r5
/* 80513D60  7C 1D 03 78 */	mr r29, r0
/* 80513D64  99 01 00 08 */	stb r8, 8(r1)
/* 80513D68  7F 7C DB 78 */	mr r28, r27
/* 80513D6C  7C A3 2B 78 */	mr r3, r5
/* 80513D70  38 80 00 1E */	li r4, 0x1e
/* 80513D74  3B FF 37 A8 */	addi r31, r31, 0x37a8
/* 80513D78  4B B4 92 F1 */	bl bzero
/* 80513D7C  3C 60 81 1D */	lis r3, l_candidate_flat_num@ha /* 0x811D3578@ha */
/* 80513D80  38 80 00 1E */	li r4, 0x1e
/* 80513D84  38 63 35 78 */	addi r3, r3, l_candidate_flat_num@l /* 0x811D3578@l */
/* 80513D88  4B B4 92 E1 */	bl bzero
/* 80513D8C  3A E0 00 00 */	li r23, 0
/* 80513D90  3F 00 00 02 */	lis r24, 0x0002 /* 0x00018025@ha */
lbl_80513D94:
/* 80513D94  3A C0 00 00 */	li r22, 0
lbl_80513D98:
/* 80513D98  38 76 00 01 */	addi r3, r22, 1
/* 80513D9C  38 97 00 01 */	addi r4, r23, 1
/* 80513DA0  38 B8 80 25 */	addi r5, r24, 0x8025 /* 0x00018025@l */
/* 80513DA4  4B E9 26 15 */	bl mFI_CheckBlockKind_OR
/* 80513DA8  2C 03 00 00 */	cmpwi r3, 0
/* 80513DAC  40 82 00 58 */	bne lbl_80513E04
/* 80513DB0  38 76 00 01 */	addi r3, r22, 1
/* 80513DB4  38 97 00 01 */	addi r4, r23, 1
/* 80513DB8  4B E9 27 B5 */	bl mFI_GetBkNum2ColTop
/* 80513DBC  7C 66 1B 78 */	mr r6, r3
/* 80513DC0  7F C3 F3 78 */	mr r3, r30
/* 80513DC4  7F A4 EB 78 */	mr r4, r29
/* 80513DC8  7F E5 FB 78 */	mr r5, r31
/* 80513DCC  7F 67 DB 78 */	mr r7, r27
/* 80513DD0  4B FF F9 59 */	bl mAGrw_GetDepositAbleFlatNum
/* 80513DD4  88 1E 00 00 */	lbz r0, 0(r30)
/* 80513DD8  28 00 00 00 */	cmplwi r0, 0
/* 80513DDC  41 82 00 10 */	beq lbl_80513DEC
/* 80513DE0  88 61 00 09 */	lbz r3, 9(r1)
/* 80513DE4  38 03 00 01 */	addi r0, r3, 1
/* 80513DE8  98 01 00 09 */	stb r0, 9(r1)
lbl_80513DEC:
/* 80513DEC  88 1D 00 00 */	lbz r0, 0(r29)
/* 80513DF0  28 00 00 00 */	cmplwi r0, 0
/* 80513DF4  41 82 00 10 */	beq lbl_80513E04
/* 80513DF8  88 61 00 08 */	lbz r3, 8(r1)
/* 80513DFC  38 03 00 01 */	addi r0, r3, 1
/* 80513E00  98 01 00 08 */	stb r0, 8(r1)
lbl_80513E04:
/* 80513E04  3A D6 00 01 */	addi r22, r22, 1
/* 80513E08  3B BD 00 01 */	addi r29, r29, 1
/* 80513E0C  2C 16 00 05 */	cmpwi r22, 5
/* 80513E10  3B FF 02 00 */	addi r31, r31, 0x200
/* 80513E14  3B 7B 00 20 */	addi r27, r27, 0x20
/* 80513E18  3B DE 00 01 */	addi r30, r30, 1
/* 80513E1C  41 80 FF 7C */	blt lbl_80513D98
/* 80513E20  3A F7 00 01 */	addi r23, r23, 1
/* 80513E24  2C 17 00 06 */	cmpwi r23, 6
/* 80513E28  41 80 FF 6C */	blt lbl_80513D94
/* 80513E2C  3C 60 81 1D */	lis r3, l_candidate_flat_num@ha /* 0x811D3578@ha */
/* 80513E30  3C 80 81 1D */	lis r4, data_811D3518@ha /* 0x811D3518@ha */
/* 80513E34  38 A3 35 78 */	addi r5, r3, l_candidate_flat_num@l /* 0x811D3578@l */
/* 80513E38  7F 88 E3 78 */	mr r8, r28
/* 80513E3C  38 E4 35 18 */	addi r7, r4, data_811D3518@l /* 0x811D3518@l */
/* 80513E40  7F 23 CB 78 */	mr r3, r25
/* 80513E44  38 81 00 08 */	addi r4, r1, 8
/* 80513E48  38 C1 00 09 */	addi r6, r1, 9
/* 80513E4C  4B FF FC BD */	bl mAGrw_SetShineGround
/* 80513E50  80 1A 00 00 */	lwz r0, 0(r26)
/* 80513E54  2C 00 00 01 */	cmpwi r0, 1
/* 80513E58  40 82 00 20 */	bne lbl_80513E78
/* 80513E5C  3C 60 81 1D */	lis r3, data_811D3518@ha /* 0x811D3518@ha */
/* 80513E60  7F 85 E3 78 */	mr r5, r28
/* 80513E64  38 83 35 18 */	addi r4, r3, data_811D3518@l /* 0x811D3518@l */
/* 80513E68  38 61 00 09 */	addi r3, r1, 9
/* 80513E6C  4B FF FD 39 */	bl mAGrw_SetHaniwa
/* 80513E70  38 00 00 00 */	li r0, 0
/* 80513E74  90 1A 00 00 */	stw r0, 0(r26)
lbl_80513E78:
/* 80513E78  39 61 00 40 */	addi r11, r1, 0x40
/* 80513E7C  4B B8 70 89 */	bl func_8009AF04
/* 80513E80  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80513E84  7C 08 03 A6 */	mtlr r0
/* 80513E88  38 21 00 40 */	addi r1, r1, 0x40
/* 80513E8C  4E 80 00 20 */	blr 
