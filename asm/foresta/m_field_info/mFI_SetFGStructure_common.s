lbl_803A9C9C:
/* 803A9C9C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803A9CA0  7C 08 02 A6 */	mflr r0
/* 803A9CA4  90 01 00 44 */	stw r0, 0x44(r1)
/* 803A9CA8  39 61 00 40 */	addi r11, r1, 0x40
/* 803A9CAC  4B CF 12 09 */	bl func_8009AEB4
/* 803A9CB0  3D 20 80 65 */	lis r9, data_80653D28@ha /* 0x80653D28@ha */
/* 803A9CB4  7D 1B 43 78 */	mr r27, r8
/* 803A9CB8  3B E9 3D 28 */	addi r31, r9, data_80653D28@l /* 0x80653D28@l */
/* 803A9CBC  7C 76 1B 78 */	mr r22, r3
/* 803A9CC0  55 00 10 3A */	slwi r0, r8, 2
/* 803A9CC4  7C 97 23 78 */	mr r23, r4
/* 803A9CC8  38 7F 02 98 */	addi r3, r31, 0x298
/* 803A9CCC  7C B8 2B 78 */	mr r24, r5
/* 803A9CD0  7F A3 00 2E */	lwzx r29, r3, r0
/* 803A9CD4  7C D9 33 78 */	mr r25, r6
/* 803A9CD8  7C FA 3B 78 */	mr r26, r7
/* 803A9CDC  3B C0 00 00 */	li r30, 0
/* 803A9CE0  3B 80 00 00 */	li r28, 0
/* 803A9CE4  4B FF AF AD */	bl mFI_CheckFieldData
/* 803A9CE8  2C 03 00 01 */	cmpwi r3, 1
/* 803A9CEC  40 82 01 1C */	bne lbl_803A9E08
/* 803A9CF0  4B FF AF DD */	bl mFI_GetFieldId
/* 803A9CF4  54 60 04 27 */	rlwinm. r0, r3, 0, 0x10, 0x13
/* 803A9CF8  40 82 00 38 */	bne lbl_803A9D30
/* 803A9CFC  7E E3 BB 78 */	mr r3, r23
/* 803A9D00  7F 04 C3 78 */	mr r4, r24
/* 803A9D04  4B FF B5 05 */	bl mFI_BlockCheck
/* 803A9D08  2C 03 00 01 */	cmpwi r3, 1
/* 803A9D0C  40 82 00 68 */	bne lbl_803A9D74
/* 803A9D10  56 C0 A7 3E */	rlwinm r0, r22, 0x14, 0x1c, 0x1f
/* 803A9D14  2C 00 00 05 */	cmpwi r0, 5
/* 803A9D18  40 82 00 5C */	bne lbl_803A9D74
/* 803A9D1C  7E E3 BB 78 */	mr r3, r23
/* 803A9D20  7F 04 C3 78 */	mr r4, r24
/* 803A9D24  4B FF D4 31 */	bl mFI_BkNumtoUtFGTop
/* 803A9D28  7C 7E 1B 78 */	mr r30, r3
/* 803A9D2C  48 00 00 48 */	b lbl_803A9D74
lbl_803A9D30:
/* 803A9D30  34 17 FF FF */	addic. r0, r23, -1
/* 803A9D34  38 78 FF FF */	addi r3, r24, -1
/* 803A9D38  41 80 00 3C */	blt lbl_803A9D74
/* 803A9D3C  2C 00 00 05 */	cmpwi r0, 5
/* 803A9D40  40 80 00 34 */	bge lbl_803A9D74
/* 803A9D44  2C 03 00 00 */	cmpwi r3, 0
/* 803A9D48  41 80 00 2C */	blt lbl_803A9D74
/* 803A9D4C  2C 03 00 06 */	cmpwi r3, 6
/* 803A9D50  40 80 00 24 */	bge lbl_803A9D74
/* 803A9D54  1C 83 0A 00 */	mulli r4, r3, 0xa00
/* 803A9D58  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803A9D5C  54 00 48 2C */	slwi r0, r0, 9
/* 803A9D60  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803A9D64  7C 63 22 14 */	add r3, r3, r4
/* 803A9D68  7C 63 02 14 */	add r3, r3, r0
/* 803A9D6C  3F C3 00 01 */	addis r30, r3, 1
/* 803A9D70  3B DE 37 A8 */	addi r30, r30, 0x37a8
lbl_803A9D74:
/* 803A9D74  28 1E 00 00 */	cmplwi r30, 0
/* 803A9D78  41 82 00 90 */	beq lbl_803A9E08
/* 803A9D7C  56 C3 04 3E */	clrlwi r3, r22, 0x10
/* 803A9D80  38 63 AA 10 */	addi r3, r3, -22000
/* 803A9D84  7E A3 F8 AE */	lbzx r21, r3, r31
/* 803A9D88  28 15 00 0C */	cmplwi r21, 0xc
/* 803A9D8C  40 80 00 7C */	bge lbl_803A9E08
/* 803A9D90  2C 1B 00 01 */	cmpwi r27, 1
/* 803A9D94  57 60 08 3C */	slwi r0, r27, 1
/* 803A9D98  38 7F 02 94 */	addi r3, r31, 0x294
/* 803A9D9C  7F 63 02 2E */	lhzx r27, r3, r0
/* 803A9DA0  40 82 00 24 */	bne lbl_803A9DC4
/* 803A9DA4  28 15 00 07 */	cmplwi r21, 7
/* 803A9DA8  41 80 00 18 */	blt lbl_803A9DC0
/* 803A9DAC  7E E3 BB 78 */	mr r3, r23
/* 803A9DB0  7F 04 C3 78 */	mr r4, r24
/* 803A9DB4  4B FF A8 B9 */	bl mFM_GetReseveName
/* 803A9DB8  7C 76 1B 78 */	mr r22, r3
/* 803A9DBC  48 00 00 08 */	b lbl_803A9DC4
lbl_803A9DC0:
/* 803A9DC0  7F 76 DB 78 */	mr r22, r27
lbl_803A9DC4:
/* 803A9DC4  56 A0 15 BA */	rlwinm r0, r21, 2, 0x16, 0x1d
/* 803A9DC8  38 7F 02 64 */	addi r3, r31, 0x264
/* 803A9DCC  7D 83 00 2E */	lwzx r12, r3, r0
/* 803A9DD0  7F C3 F3 78 */	mr r3, r30
/* 803A9DD4  7E C4 B3 78 */	mr r4, r22
/* 803A9DD8  7F 65 DB 78 */	mr r5, r27
/* 803A9DDC  7E E6 BB 78 */	mr r6, r23
/* 803A9DE0  7F 07 C3 78 */	mr r7, r24
/* 803A9DE4  7F 28 CB 78 */	mr r8, r25
/* 803A9DE8  7F 49 D3 78 */	mr r9, r26
/* 803A9DEC  7F AA EB 78 */	mr r10, r29
/* 803A9DF0  7D 89 03 A6 */	mtctr r12
/* 803A9DF4  4E 80 04 21 */	bctrl 
/* 803A9DF8  7C 7C 1B 78 */	mr r28, r3
/* 803A9DFC  2C 1C 00 01 */	cmpwi r28, 1
/* 803A9E00  40 82 00 08 */	bne lbl_803A9E08
/* 803A9E04  4B FF E0 31 */	bl mFI_SetFGUpData
lbl_803A9E08:
/* 803A9E08  7F 83 E3 78 */	mr r3, r28
/* 803A9E0C  39 61 00 40 */	addi r11, r1, 0x40
/* 803A9E10  4B CF 10 F1 */	bl func_8009AF00
/* 803A9E14  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803A9E18  7C 08 03 A6 */	mtlr r0
/* 803A9E1C  38 21 00 40 */	addi r1, r1, 0x40
/* 803A9E20  4E 80 00 20 */	blr 
