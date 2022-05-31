lbl_803E5CC4:
/* 803E5CC4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803E5CC8  7C 08 02 A6 */	mflr r0
/* 803E5CCC  90 01 00 24 */	stw r0, 0x24(r1)
/* 803E5CD0  39 61 00 20 */	addi r11, r1, 0x20
/* 803E5CD4  4B CB 51 F9 */	bl func_8009AECC
/* 803E5CD8  7C DE 33 78 */	mr r30, r6
/* 803E5CDC  7C 7B 1B 78 */	mr r27, r3
/* 803E5CE0  7C 9C 23 78 */	mr r28, r4
/* 803E5CE4  7C BD 2B 78 */	mr r29, r5
/* 803E5CE8  7F C3 F3 78 */	mr r3, r30
/* 803E5CEC  4B FF FF 31 */	bl func_803E5C1C
/* 803E5CF0  57 60 A7 3E */	rlwinm r0, r27, 0x14, 0x1c, 0x1f
/* 803E5CF4  57 7F 04 3E */	clrlwi r31, r27, 0x10
/* 803E5CF8  2C 00 00 01 */	cmpwi r0, 1
/* 803E5CFC  41 82 00 0C */	beq lbl_803E5D08
/* 803E5D00  2C 00 00 03 */	cmpwi r0, 3
/* 803E5D04  40 82 00 6C */	bne lbl_803E5D70
lbl_803E5D08:
/* 803E5D08  7F 63 DB 78 */	mr r3, r27
/* 803E5D0C  48 00 1A 85 */	bl mRmTp_FtrItemNo2FtrIdx
/* 803E5D10  7F 63 DB 78 */	mr r3, r27
/* 803E5D14  48 08 DE 39 */	bl aMR_GetFurnitureUnit
/* 803E5D18  57 E4 07 BE */	clrlwi r4, r31, 0x1e
/* 803E5D1C  4B FF FF 55 */	bl mRmTp_GetFtrUnitPlaceData
/* 803E5D20  38 00 00 04 */	li r0, 4
/* 803E5D24  38 80 00 00 */	li r4, 0
/* 803E5D28  38 A0 00 00 */	li r5, 0
/* 803E5D2C  7C 09 03 A6 */	mtctr r0
lbl_803E5D30:
/* 803E5D30  7C C3 2A 14 */	add r6, r3, r5
/* 803E5D34  7C FE 22 14 */	add r7, r30, r4
/* 803E5D38  88 06 00 00 */	lbz r0, 0(r6)
/* 803E5D3C  38 84 00 0C */	addi r4, r4, 0xc
/* 803E5D40  38 A5 00 06 */	addi r5, r5, 6
/* 803E5D44  90 07 00 00 */	stw r0, 0(r7)
/* 803E5D48  A8 06 00 02 */	lha r0, 2(r6)
/* 803E5D4C  7C 1C 02 14 */	add r0, r28, r0
/* 803E5D50  90 07 00 04 */	stw r0, 4(r7)
/* 803E5D54  A8 06 00 04 */	lha r0, 4(r6)
/* 803E5D58  7C 1D 02 14 */	add r0, r29, r0
/* 803E5D5C  90 07 00 08 */	stw r0, 8(r7)
/* 803E5D60  42 00 FF D0 */	bdnz lbl_803E5D30
/* 803E5D64  7F 63 DB 78 */	mr r3, r27
/* 803E5D68  48 08 DD E5 */	bl aMR_GetFurnitureUnit
/* 803E5D6C  48 00 00 08 */	b lbl_803E5D74
lbl_803E5D70:
/* 803E5D70  38 60 00 03 */	li r3, 3
lbl_803E5D74:
/* 803E5D74  39 61 00 20 */	addi r11, r1, 0x20
/* 803E5D78  4B CB 51 A1 */	bl func_8009AF18
/* 803E5D7C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803E5D80  7C 08 03 A6 */	mtlr r0
/* 803E5D84  38 21 00 20 */	addi r1, r1, 0x20
/* 803E5D88  4E 80 00 20 */	blr 
