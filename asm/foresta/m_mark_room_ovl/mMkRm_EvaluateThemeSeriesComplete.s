lbl_804D2D34:
/* 804D2D34  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804D2D38  7C 08 02 A6 */	mflr r0
/* 804D2D3C  90 01 00 44 */	stw r0, 0x44(r1)
/* 804D2D40  39 61 00 40 */	addi r11, r1, 0x40
/* 804D2D44  4B BC 81 6D */	bl func_8009AEB0
/* 804D2D48  3D 20 80 6A */	lis r9, data_8069C9F0@ha /* 0x8069C9F0@ha */
/* 804D2D4C  7C 76 1B 78 */	mr r22, r3
/* 804D2D50  7C 97 23 78 */	mr r23, r4
/* 804D2D54  7C B8 2B 78 */	mr r24, r5
/* 804D2D58  7C D9 33 78 */	mr r25, r6
/* 804D2D5C  7C FA 3B 78 */	mr r26, r7
/* 804D2D60  7D 1B 43 78 */	mr r27, r8
/* 804D2D64  3B E9 C9 F0 */	addi r31, r9, data_8069C9F0@l /* 0x8069C9F0@l */
/* 804D2D68  3B C0 00 00 */	li r30, 0
/* 804D2D6C  3A A0 00 00 */	li r21, 0
/* 804D2D70  3A 80 00 00 */	li r20, 0
lbl_804D2D74:
/* 804D2D74  7C 9F A2 14 */	add r4, r31, r20
/* 804D2D78  88 04 00 00 */	lbz r0, 0(r4)
/* 804D2D7C  2C 00 00 02 */	cmpwi r0, 2
/* 804D2D80  40 82 01 90 */	bne lbl_804D2F10
/* 804D2D84  8B A4 00 01 */	lbz r29, 1(r4)
/* 804D2D88  2C 1D 00 00 */	cmpwi r29, 0
/* 804D2D8C  41 82 01 84 */	beq lbl_804D2F10
/* 804D2D90  3C 60 81 1D */	lis r3, mMkRm_search_table@ha /* 0x811D2F18@ha */
/* 804D2D94  8B 84 00 02 */	lbz r28, 2(r4)
/* 804D2D98  38 63 2F 18 */	addi r3, r3, mMkRm_search_table@l /* 0x811D2F18@l */
/* 804D2D9C  38 80 00 00 */	li r4, 0
/* 804D2DA0  7C C3 A8 2E */	lwzx r6, r3, r21
/* 804D2DA4  38 A0 00 00 */	li r5, 0
/* 804D2DA8  38 60 00 01 */	li r3, 1
/* 804D2DAC  7F A9 03 A6 */	mtctr r29
/* 804D2DB0  40 81 00 14 */	ble lbl_804D2DC4
lbl_804D2DB4:
/* 804D2DB4  7C 60 28 30 */	slw r0, r3, r5
/* 804D2DB8  38 A5 00 01 */	addi r5, r5, 1
/* 804D2DBC  7C 84 03 78 */	or r4, r4, r0
/* 804D2DC0  42 00 FF F4 */	bdnz lbl_804D2DB4
lbl_804D2DC4:
/* 804D2DC4  7C 06 20 40 */	cmplw r6, r4
/* 804D2DC8  40 82 00 B4 */	bne lbl_804D2E7C
/* 804D2DCC  7F 23 CB 78 */	mr r3, r25
/* 804D2DD0  7F C4 F3 78 */	mr r4, r30
/* 804D2DD4  4B FF F2 A9 */	bl func_804D207C
/* 804D2DD8  7C 1A E0 00 */	cmpw r26, r28
/* 804D2DDC  40 82 00 40 */	bne lbl_804D2E1C
/* 804D2DE0  7C 1B E0 00 */	cmpw r27, r28
/* 804D2DE4  40 82 00 38 */	bne lbl_804D2E1C
/* 804D2DE8  1C 1D 1B 58 */	mulli r0, r29, 0x1b58
/* 804D2DEC  80 B6 00 00 */	lwz r5, 0(r22)
/* 804D2DF0  3C 80 81 1D */	lis r4, data_811D2D10@ha /* 0x811D2D10@ha */
/* 804D2DF4  38 60 00 01 */	li r3, 1
/* 804D2DF8  7C C0 2A 14 */	add r6, r0, r5
/* 804D2DFC  38 A4 2D 10 */	addi r5, r4, data_811D2D10@l /* 0x811D2D10@l */
/* 804D2E00  38 06 3A 98 */	addi r0, r6, 0x3a98
/* 804D2E04  90 16 00 00 */	stw r0, 0(r22)
/* 804D2E08  93 D7 00 00 */	stw r30, 0(r23)
/* 804D2E0C  80 05 00 04 */	lwz r0, 4(r5)
/* 804D2E10  60 00 00 40 */	ori r0, r0, 0x40
/* 804D2E14  90 05 00 04 */	stw r0, 4(r5)
/* 804D2E18  48 00 01 84 */	b lbl_804D2F9C
lbl_804D2E1C:
/* 804D2E1C  7C 1A E0 00 */	cmpw r26, r28
/* 804D2E20  40 82 00 2C */	bne lbl_804D2E4C
/* 804D2E24  7C 1B E0 00 */	cmpw r27, r28
/* 804D2E28  41 82 00 24 */	beq lbl_804D2E4C
/* 804D2E2C  3C 60 81 1D */	lis r3, data_811D2D10@ha /* 0x811D2D10@ha */
/* 804D2E30  38 1B 26 00 */	addi r0, r27, 0x2600
/* 804D2E34  38 A3 2D 10 */	addi r5, r3, data_811D2D10@l /* 0x811D2D10@l */
/* 804D2E38  80 65 00 00 */	lwz r3, 0(r5)
/* 804D2E3C  60 63 00 08 */	ori r3, r3, 8
/* 804D2E40  90 65 00 00 */	stw r3, 0(r5)
/* 804D2E44  B0 18 00 00 */	sth r0, 0(r24)
/* 804D2E48  48 00 00 C8 */	b lbl_804D2F10
lbl_804D2E4C:
/* 804D2E4C  7C 1A E0 00 */	cmpw r26, r28
/* 804D2E50  41 82 00 C0 */	beq lbl_804D2F10
/* 804D2E54  7C 1B E0 00 */	cmpw r27, r28
/* 804D2E58  40 82 00 B8 */	bne lbl_804D2F10
/* 804D2E5C  3C 60 81 1D */	lis r3, data_811D2D10@ha /* 0x811D2D10@ha */
/* 804D2E60  38 1A 27 00 */	addi r0, r26, 0x2700
/* 804D2E64  38 A3 2D 10 */	addi r5, r3, data_811D2D10@l /* 0x811D2D10@l */
/* 804D2E68  80 65 00 00 */	lwz r3, 0(r5)
/* 804D2E6C  60 63 00 08 */	ori r3, r3, 8
/* 804D2E70  90 65 00 00 */	stw r3, 0(r5)
/* 804D2E74  B0 18 00 00 */	sth r0, 0(r24)
/* 804D2E78  48 00 00 98 */	b lbl_804D2F10
lbl_804D2E7C:
/* 804D2E7C  38 A0 00 00 */	li r5, 0
/* 804D2E80  38 60 00 00 */	li r3, 0
/* 804D2E84  38 80 00 00 */	li r4, 0
/* 804D2E88  7F A9 03 A6 */	mtctr r29
/* 804D2E8C  2C 1D 00 00 */	cmpwi r29, 0
/* 804D2E90  40 81 00 28 */	ble lbl_804D2EB8
lbl_804D2E94:
/* 804D2E94  7C C0 24 30 */	srw r0, r6, r4
/* 804D2E98  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804D2E9C  41 82 00 08 */	beq lbl_804D2EA4
/* 804D2EA0  38 A5 00 01 */	addi r5, r5, 1
lbl_804D2EA4:
/* 804D2EA4  28 00 00 00 */	cmplwi r0, 0
/* 804D2EA8  40 82 00 08 */	bne lbl_804D2EB0
/* 804D2EAC  7C 83 23 78 */	mr r3, r4
lbl_804D2EB0:
/* 804D2EB0  38 84 00 01 */	addi r4, r4, 1
/* 804D2EB4  42 00 FF E0 */	bdnz lbl_804D2E94
lbl_804D2EB8:
/* 804D2EB8  38 05 00 01 */	addi r0, r5, 1
/* 804D2EBC  7C 1D 00 00 */	cmpw r29, r0
/* 804D2EC0  40 82 00 34 */	bne lbl_804D2EF4
/* 804D2EC4  7C 1A E0 00 */	cmpw r26, r28
/* 804D2EC8  40 82 00 48 */	bne lbl_804D2F10
/* 804D2ECC  7C 1B E0 00 */	cmpw r27, r28
/* 804D2ED0  40 82 00 40 */	bne lbl_804D2F10
/* 804D2ED4  7F C4 F3 78 */	mr r4, r30
/* 804D2ED8  4B FF F1 E5 */	bl mMkRm_GetRemainOneFtr
/* 804D2EDC  B0 78 00 00 */	sth r3, 0(r24)
/* 804D2EE0  3C 80 81 1D */	lis r4, data_811D2D10@ha /* 0x811D2D10@ha */
/* 804D2EE4  84 04 2D 10 */	lwzu r0, data_811D2D10@l(r4)  /* 0x811D2D10@l */
/* 804D2EE8  60 00 00 08 */	ori r0, r0, 8
/* 804D2EEC  90 04 00 00 */	stw r0, 0(r4)
/* 804D2EF0  48 00 00 20 */	b lbl_804D2F10
lbl_804D2EF4:
/* 804D2EF4  2C 05 00 06 */	cmpwi r5, 6
/* 804D2EF8  41 80 00 18 */	blt lbl_804D2F10
/* 804D2EFC  3C 60 81 1D */	lis r3, data_811D2D10@ha /* 0x811D2D10@ha */
/* 804D2F00  38 83 2D 10 */	addi r4, r3, data_811D2D10@l /* 0x811D2D10@l */
/* 804D2F04  80 04 00 00 */	lwz r0, 0(r4)
/* 804D2F08  60 00 00 02 */	ori r0, r0, 2
/* 804D2F0C  90 04 00 00 */	stw r0, 0(r4)
lbl_804D2F10:
/* 804D2F10  3B DE 00 01 */	addi r30, r30, 1
/* 804D2F14  3A 94 00 03 */	addi r20, r20, 3
/* 804D2F18  2C 1E 00 3C */	cmpwi r30, 0x3c
/* 804D2F1C  3A B5 00 04 */	addi r21, r21, 4
/* 804D2F20  41 80 FE 54 */	blt lbl_804D2D74
/* 804D2F24  3C 60 80 6A */	lis r3, data_8069C9F0@ha /* 0x8069C9F0@ha */
/* 804D2F28  38 00 00 3C */	li r0, 0x3c
/* 804D2F2C  38 83 C9 F0 */	addi r4, r3, data_8069C9F0@l /* 0x8069C9F0@l */
/* 804D2F30  38 60 00 00 */	li r3, 0
/* 804D2F34  7C 09 03 A6 */	mtctr r0
lbl_804D2F38:
/* 804D2F38  7C A4 1A 14 */	add r5, r4, r3
/* 804D2F3C  88 05 00 00 */	lbz r0, 0(r5)
/* 804D2F40  2C 00 00 02 */	cmpwi r0, 2
/* 804D2F44  40 82 00 4C */	bne lbl_804D2F90
/* 804D2F48  88 05 00 01 */	lbz r0, 1(r5)
/* 804D2F4C  28 00 00 00 */	cmplwi r0, 0
/* 804D2F50  41 82 00 40 */	beq lbl_804D2F90
/* 804D2F54  88 05 00 02 */	lbz r0, 2(r5)
/* 804D2F58  7C 1A 00 00 */	cmpw r26, r0
/* 804D2F5C  40 82 00 34 */	bne lbl_804D2F90
/* 804D2F60  7C 1B 00 00 */	cmpw r27, r0
/* 804D2F64  40 82 00 2C */	bne lbl_804D2F90
/* 804D2F68  80 96 00 00 */	lwz r4, 0(r22)
/* 804D2F6C  3C 60 81 1D */	lis r3, data_811D2D10@ha /* 0x811D2D10@ha */
/* 804D2F70  38 A3 2D 10 */	addi r5, r3, data_811D2D10@l /* 0x811D2D10@l */
/* 804D2F74  38 04 27 10 */	addi r0, r4, 0x2710
/* 804D2F78  38 60 00 00 */	li r3, 0
/* 804D2F7C  90 16 00 00 */	stw r0, 0(r22)
/* 804D2F80  80 05 00 04 */	lwz r0, 4(r5)
/* 804D2F84  60 00 00 20 */	ori r0, r0, 0x20
/* 804D2F88  90 05 00 04 */	stw r0, 4(r5)
/* 804D2F8C  48 00 00 10 */	b lbl_804D2F9C
lbl_804D2F90:
/* 804D2F90  38 63 00 03 */	addi r3, r3, 3
/* 804D2F94  42 00 FF A4 */	bdnz lbl_804D2F38
/* 804D2F98  38 60 00 00 */	li r3, 0
lbl_804D2F9C:
/* 804D2F9C  39 61 00 40 */	addi r11, r1, 0x40
/* 804D2FA0  4B BC 7F 5D */	bl func_8009AEFC
/* 804D2FA4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804D2FA8  7C 08 03 A6 */	mtlr r0
/* 804D2FAC  38 21 00 40 */	addi r1, r1, 0x40
/* 804D2FB0  4E 80 00 20 */	blr 
