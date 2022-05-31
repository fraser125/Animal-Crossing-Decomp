lbl_803E6C58:
/* 803E6C58  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803E6C5C  7C 08 02 A6 */	mflr r0
/* 803E6C60  90 01 00 24 */	stw r0, 0x24(r1)
/* 803E6C64  39 61 00 20 */	addi r11, r1, 0x20
/* 803E6C68  4B CB 42 69 */	bl func_8009AED0
/* 803E6C6C  7C 7F 1B 79 */	or. r31, r3, r3
/* 803E6C70  7C 9C 23 78 */	mr r28, r4
/* 803E6C74  41 82 01 4C */	beq lbl_803E6DC0
/* 803E6C78  2C 1C 00 57 */	cmpwi r28, 0x57
/* 803E6C7C  41 80 00 0C */	blt lbl_803E6C88
/* 803E6C80  2C 1C 00 5E */	cmpwi r28, 0x5e
/* 803E6C84  40 81 00 18 */	ble lbl_803E6C9C
lbl_803E6C88:
/* 803E6C88  2C 1C 00 00 */	cmpwi r28, 0
/* 803E6C8C  41 80 00 0C */	blt lbl_803E6C98
/* 803E6C90  2C 1C 00 47 */	cmpwi r28, 0x47
/* 803E6C94  41 80 00 08 */	blt lbl_803E6C9C
lbl_803E6C98:
/* 803E6C98  3B 80 00 00 */	li r28, 0
lbl_803E6C9C:
/* 803E6C9C  2C 1C 00 57 */	cmpwi r28, 0x57
/* 803E6CA0  41 80 00 E8 */	blt lbl_803E6D88
/* 803E6CA4  2C 1C 00 5E */	cmpwi r28, 0x5e
/* 803E6CA8  41 81 00 E0 */	bgt lbl_803E6D88
/* 803E6CAC  2C 1C 00 57 */	cmpwi r28, 0x57
/* 803E6CB0  38 00 00 00 */	li r0, 0
/* 803E6CB4  41 80 00 10 */	blt lbl_803E6CC4
/* 803E6CB8  2C 1C 00 5E */	cmpwi r28, 0x5e
/* 803E6CBC  41 81 00 08 */	bgt lbl_803E6CC4
/* 803E6CC0  38 00 00 01 */	li r0, 1
lbl_803E6CC4:
/* 803E6CC4  2C 00 00 00 */	cmpwi r0, 0
/* 803E6CC8  3B A0 FF FF */	li r29, -1
/* 803E6CCC  41 82 00 0C */	beq lbl_803E6CD8
/* 803E6CD0  38 1C FF A9 */	addi r0, r28, -87
/* 803E6CD4  54 1D 07 7E */	clrlwi r29, r0, 0x1d
lbl_803E6CD8:
/* 803E6CD8  4B FF FD D9 */	bl mRmTp_GetPlayerRoomIdx
/* 803E6CDC  3B C0 00 00 */	li r30, 0
/* 803E6CE0  7C 7C 1B 78 */	mr r28, r3
/* 803E6CE4  4B FC C9 31 */	bl mHS_get_pl_no_detail
/* 803E6CE8  2C 03 00 00 */	cmpwi r3, 0
/* 803E6CEC  41 80 00 18 */	blt lbl_803E6D04
/* 803E6CF0  7F 83 E3 78 */	mr r3, r28
/* 803E6CF4  4B FC C9 21 */	bl mHS_get_pl_no_detail
/* 803E6CF8  2C 03 00 04 */	cmpwi r3, 4
/* 803E6CFC  40 80 00 08 */	bge lbl_803E6D04
/* 803E6D00  3B C0 00 01 */	li r30, 1
lbl_803E6D04:
/* 803E6D04  2C 1E 00 00 */	cmpwi r30, 0
/* 803E6D08  41 82 00 10 */	beq lbl_803E6D18
/* 803E6D0C  7F 83 E3 78 */	mr r3, r28
/* 803E6D10  4B FC C9 05 */	bl mHS_get_pl_no_detail
/* 803E6D14  48 00 00 08 */	b lbl_803E6D1C
lbl_803E6D18:
/* 803E6D18  38 60 00 00 */	li r3, 0
lbl_803E6D1C:
/* 803E6D1C  57 A0 07 7E */	clrlwi r0, r29, 0x1d
/* 803E6D20  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803E6D24  1C A3 24 40 */	mulli r5, r3, 0x2440
/* 803E6D28  7F E3 FB 78 */	mr r3, r31
/* 803E6D2C  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803E6D30  1C 00 02 20 */	mulli r0, r0, 0x220
/* 803E6D34  7C 84 2A 14 */	add r4, r4, r5
/* 803E6D38  7C 84 02 14 */	add r4, r4, r0
/* 803E6D3C  3B 84 12 60 */	addi r28, r4, 0x1260
/* 803E6D40  7F 84 E3 78 */	mr r4, r28
/* 803E6D44  4B FE 2F 19 */	bl mNW_CopyOriginalPalette
/* 803E6D48  7F 84 E3 78 */	mr r4, r28
/* 803E6D4C  38 7F 00 20 */	addi r3, r31, 0x20
/* 803E6D50  4B FE 2E C5 */	bl mNW_CopyOriginalTexture
/* 803E6D54  7F 84 E3 78 */	mr r4, r28
/* 803E6D58  38 7F 08 20 */	addi r3, r31, 0x820
/* 803E6D5C  4B FE 2E B9 */	bl mNW_CopyOriginalTexture
/* 803E6D60  7F 84 E3 78 */	mr r4, r28
/* 803E6D64  38 7F 10 20 */	addi r3, r31, 0x1020
/* 803E6D68  4B FE 2E AD */	bl mNW_CopyOriginalTexture
/* 803E6D6C  7F 84 E3 78 */	mr r4, r28
/* 803E6D70  38 7F 18 20 */	addi r3, r31, 0x1820
/* 803E6D74  4B FE 2E A1 */	bl mNW_CopyOriginalTexture
/* 803E6D78  7F E3 FB 78 */	mr r3, r31
/* 803E6D7C  38 80 20 20 */	li r4, 0x2020
/* 803E6D80  4B C9 2E 9D */	bl DCStoreRangeNoSync
/* 803E6D84  48 00 00 3C */	b lbl_803E6DC0
lbl_803E6D88:
/* 803E6D88  2C 1C 00 00 */	cmpwi r28, 0
/* 803E6D8C  41 80 00 34 */	blt lbl_803E6DC0
/* 803E6D90  2C 1C 00 47 */	cmpwi r28, 0x47
/* 803E6D94  40 80 00 2C */	bge lbl_803E6DC0
/* 803E6D98  38 60 00 1D */	li r3, 0x1d
/* 803E6D9C  4B C1 FE 39 */	bl JW_GetAramAddress
/* 803E6DA0  1C 1C 20 20 */	mulli r0, r28, 0x2020
/* 803E6DA4  7F E4 FB 78 */	mr r4, r31
/* 803E6DA8  38 A0 20 20 */	li r5, 0x2020
/* 803E6DAC  7C 63 02 14 */	add r3, r3, r0
/* 803E6DB0  4B C1 FE C5 */	bl _JW_GetResourceAram
/* 803E6DB4  7F E3 FB 78 */	mr r3, r31
/* 803E6DB8  38 80 20 20 */	li r4, 0x2020
/* 803E6DBC  4B C9 2E 61 */	bl DCStoreRangeNoSync
lbl_803E6DC0:
/* 803E6DC0  39 61 00 20 */	addi r11, r1, 0x20
/* 803E6DC4  4B CB 41 59 */	bl func_8009AF1C
/* 803E6DC8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803E6DCC  7C 08 03 A6 */	mtlr r0
/* 803E6DD0  38 21 00 20 */	addi r1, r1, 0x20
/* 803E6DD4  4E 80 00 20 */	blr 
