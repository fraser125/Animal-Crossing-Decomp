lbl_803E5D8C:
/* 803E5D8C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 803E5D90  7C 08 02 A6 */	mflr r0
/* 803E5D94  90 01 00 54 */	stw r0, 0x54(r1)
/* 803E5D98  39 61 00 50 */	addi r11, r1, 0x50
/* 803E5D9C  4B CB 51 2D */	bl func_8009AEC8
/* 803E5DA0  38 A0 00 00 */	li r5, 0
/* 803E5DA4  38 00 01 00 */	li r0, 0x100
/* 803E5DA8  7C 7E 1B 78 */	mr r30, r3
/* 803E5DAC  7C 9F 23 78 */	mr r31, r4
/* 803E5DB0  7C A3 2B 78 */	mr r3, r5
/* 803E5DB4  7C 09 03 A6 */	mtctr r0
lbl_803E5DB8:
/* 803E5DB8  7C 7E 2B 2E */	sthx r3, r30, r5
/* 803E5DBC  38 A5 00 02 */	addi r5, r5, 2
/* 803E5DC0  42 00 FF F8 */	bdnz lbl_803E5DB8
/* 803E5DC4  3B 80 00 00 */	li r28, 0
/* 803E5DC8  3B A0 00 00 */	li r29, 0
lbl_803E5DCC:
/* 803E5DCC  3B 60 00 00 */	li r27, 0
lbl_803E5DD0:
/* 803E5DD0  7C 1B EA 14 */	add r0, r27, r29
/* 803E5DD4  54 00 08 3C */	slwi r0, r0, 1
/* 803E5DD8  7F 5F 02 2E */	lhzx r26, r31, r0
/* 803E5DDC  57 40 A7 3E */	rlwinm r0, r26, 0x14, 0x1c, 0x1f
/* 803E5DE0  2C 00 00 01 */	cmpwi r0, 1
/* 803E5DE4  41 82 00 0C */	beq lbl_803E5DF0
/* 803E5DE8  2C 00 00 03 */	cmpwi r0, 3
/* 803E5DEC  40 82 00 58 */	bne lbl_803E5E44
lbl_803E5DF0:
/* 803E5DF0  7F 43 D3 78 */	mr r3, r26
/* 803E5DF4  7F 64 DB 78 */	mr r4, r27
/* 803E5DF8  7F 85 E3 78 */	mr r5, r28
/* 803E5DFC  38 C1 00 08 */	addi r6, r1, 8
/* 803E5E00  4B FF FE C5 */	bl mRmTp_GetFurnitureData
/* 803E5E04  2C 03 00 03 */	cmpwi r3, 3
/* 803E5E08  41 82 00 3C */	beq lbl_803E5E44
/* 803E5E0C  38 00 00 04 */	li r0, 4
/* 803E5E10  38 81 00 08 */	addi r4, r1, 8
/* 803E5E14  7C 09 03 A6 */	mtctr r0
lbl_803E5E18:
/* 803E5E18  80 04 00 00 */	lwz r0, 0(r4)
/* 803E5E1C  2C 00 00 00 */	cmpwi r0, 0
/* 803E5E20  41 82 00 1C */	beq lbl_803E5E3C
/* 803E5E24  80 04 00 08 */	lwz r0, 8(r4)
/* 803E5E28  80 64 00 04 */	lwz r3, 4(r4)
/* 803E5E2C  54 00 20 36 */	slwi r0, r0, 4
/* 803E5E30  7C 03 02 14 */	add r0, r3, r0
/* 803E5E34  54 00 08 3C */	slwi r0, r0, 1
/* 803E5E38  7F 5E 03 2E */	sthx r26, r30, r0
lbl_803E5E3C:
/* 803E5E3C  38 84 00 0C */	addi r4, r4, 0xc
/* 803E5E40  42 00 FF D8 */	bdnz lbl_803E5E18
lbl_803E5E44:
/* 803E5E44  3B 7B 00 01 */	addi r27, r27, 1
/* 803E5E48  2C 1B 00 10 */	cmpwi r27, 0x10
/* 803E5E4C  41 80 FF 84 */	blt lbl_803E5DD0
/* 803E5E50  3B 9C 00 01 */	addi r28, r28, 1
/* 803E5E54  3B BD 00 10 */	addi r29, r29, 0x10
/* 803E5E58  2C 1C 00 10 */	cmpwi r28, 0x10
/* 803E5E5C  41 80 FF 70 */	blt lbl_803E5DCC
/* 803E5E60  39 61 00 50 */	addi r11, r1, 0x50
/* 803E5E64  4B CB 50 B1 */	bl func_8009AF14
/* 803E5E68  80 01 00 54 */	lwz r0, 0x54(r1)
/* 803E5E6C  7C 08 03 A6 */	mtlr r0
/* 803E5E70  38 21 00 50 */	addi r1, r1, 0x50
/* 803E5E74  4E 80 00 20 */	blr 
