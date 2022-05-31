lbl_803DBB4C:
/* 803DBB4C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803DBB50  7C 08 02 A6 */	mflr r0
/* 803DBB54  90 01 00 24 */	stw r0, 0x24(r1)
/* 803DBB58  39 61 00 20 */	addi r11, r1, 0x20
/* 803DBB5C  4B CB F3 71 */	bl func_8009AECC
/* 803DBB60  A0 A3 00 00 */	lhz r5, 0(r3)
/* 803DBB64  7C 7F 1B 78 */	mr r31, r3
/* 803DBB68  54 A0 A7 3E */	rlwinm r0, r5, 0x14, 0x1c, 0x1f
/* 803DBB6C  2C 00 00 02 */	cmpwi r0, 2
/* 803DBB70  40 82 00 6C */	bne lbl_803DBBDC
/* 803DBB74  54 A0 C7 3E */	rlwinm r0, r5, 0x18, 0x1c, 0x1f
/* 803DBB78  2C 00 00 0C */	cmpwi r0, 0xc
/* 803DBB7C  40 82 00 60 */	bne lbl_803DBBDC
/* 803DBB80  54 A4 07 7E */	clrlwi r4, r5, 0x1d
/* 803DBB84  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803DBB88  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803DBB8C  54 A0 06 78 */	rlwinm r0, r5, 0, 0x19, 0x1c
/* 803DBB90  3B A4 00 01 */	addi r29, r4, 1
/* 803DBB94  38 C0 00 00 */	li r6, 0
/* 803DBB98  60 04 2C 00 */	ori r4, r0, 0x2c00
/* 803DBB9C  3F C3 00 02 */	addis r30, r3, 2
/* 803DBBA0  20 1D 00 05 */	subfic r0, r29, 5
/* 803DBBA4  80 7E 61 3C */	lwz r3, 0x613c(r30)
/* 803DBBA8  7C 04 02 14 */	add r0, r4, r0
/* 803DBBAC  54 84 04 3E */	clrlwi r4, r4, 0x10
/* 803DBBB0  54 05 04 3E */	clrlwi r5, r0, 0x10
/* 803DBBB4  48 00 4D 6D */	bl mPr_GetPossessionItemIdxKindWithCond
/* 803DBBB8  2C 03 00 00 */	cmpwi r3, 0
/* 803DBBBC  41 80 00 B8 */	blt lbl_803DBC74
/* 803DBBC0  80 9E 61 3C */	lwz r4, 0x613c(r30)
/* 803DBBC4  54 60 08 3C */	slwi r0, r3, 1
/* 803DBBC8  7C 84 02 14 */	add r4, r4, r0
/* 803DBBCC  A0 04 00 68 */	lhz r0, 0x68(r4)
/* 803DBBD0  7C 00 EA 14 */	add r0, r0, r29
/* 803DBBD4  B0 1F 00 00 */	sth r0, 0(r31)
/* 803DBBD8  48 00 00 A0 */	b lbl_803DBC78
lbl_803DBBDC:
/* 803DBBDC  28 05 20 00 */	cmplwi r5, 0x2000
/* 803DBBE0  41 80 00 94 */	blt lbl_803DBC74
/* 803DBBE4  28 05 20 FF */	cmplwi r5, 0x20ff
/* 803DBBE8  41 81 00 8C */	bgt lbl_803DBC74
/* 803DBBEC  38 A5 E0 00 */	addi r5, r5, -8192
/* 803DBBF0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803DBBF4  7C A0 36 70 */	srawi r0, r5, 6
/* 803DBBF8  7C 80 01 94 */	addze r4, r0
/* 803DBBFC  54 A0 D0 0A */	slwi r0, r5, 0x1a
/* 803DBC00  54 A5 0F FE */	srwi r5, r5, 0x1f
/* 803DBC04  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803DBC08  7C 05 00 50 */	subf r0, r5, r0
/* 803DBC0C  3B 84 00 01 */	addi r28, r4, 1
/* 803DBC10  54 00 30 3E */	rotlwi r0, r0, 6
/* 803DBC14  3F C3 00 02 */	addis r30, r3, 2
/* 803DBC18  7F A0 2A 14 */	add r29, r0, r5
/* 803DBC1C  23 7C 00 04 */	subfic r27, r28, 4
/* 803DBC20  48 00 00 4C */	b lbl_803DBC6C
lbl_803DBC24:
/* 803DBC24  38 1B FF FF */	addi r0, r27, -1
/* 803DBC28  80 7E 61 3C */	lwz r3, 0x613c(r30)
/* 803DBC2C  54 00 30 32 */	slwi r0, r0, 6
/* 803DBC30  38 A0 00 00 */	li r5, 0
/* 803DBC34  7C 9D 02 14 */	add r4, r29, r0
/* 803DBC38  38 04 20 00 */	addi r0, r4, 0x2000
/* 803DBC3C  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 803DBC40  48 00 4B 31 */	bl mPr_GetPossessionItemIdxWithCond
/* 803DBC44  2C 03 FF FF */	cmpwi r3, -1
/* 803DBC48  41 82 00 20 */	beq lbl_803DBC68
/* 803DBC4C  38 1C FF FF */	addi r0, r28, -1
/* 803DBC50  7C 1B 02 14 */	add r0, r27, r0
/* 803DBC54  54 00 30 32 */	slwi r0, r0, 6
/* 803DBC58  7C 9D 02 14 */	add r4, r29, r0
/* 803DBC5C  38 04 20 00 */	addi r0, r4, 0x2000
/* 803DBC60  B0 1F 00 00 */	sth r0, 0(r31)
/* 803DBC64  48 00 00 14 */	b lbl_803DBC78
lbl_803DBC68:
/* 803DBC68  3B 7B FF FF */	addi r27, r27, -1
lbl_803DBC6C:
/* 803DBC6C  2C 1B 00 00 */	cmpwi r27, 0
/* 803DBC70  41 81 FF B4 */	bgt lbl_803DBC24
lbl_803DBC74:
/* 803DBC74  4B FF FE A1 */	bl mPlib_Get_space_putin_item
lbl_803DBC78:
/* 803DBC78  39 61 00 20 */	addi r11, r1, 0x20
/* 803DBC7C  4B CB F2 9D */	bl func_8009AF18
/* 803DBC80  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803DBC84  7C 08 03 A6 */	mtlr r0
/* 803DBC88  38 21 00 20 */	addi r1, r1, 0x20
/* 803DBC8C  4E 80 00 20 */	blr 
