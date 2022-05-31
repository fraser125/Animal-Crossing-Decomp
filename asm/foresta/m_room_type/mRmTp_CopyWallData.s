lbl_803E6AF0:
/* 803E6AF0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803E6AF4  7C 08 02 A6 */	mflr r0
/* 803E6AF8  90 01 00 24 */	stw r0, 0x24(r1)
/* 803E6AFC  39 61 00 20 */	addi r11, r1, 0x20
/* 803E6B00  4B CB 43 D1 */	bl func_8009AED0
/* 803E6B04  7C 7F 1B 79 */	or. r31, r3, r3
/* 803E6B08  7C 9C 23 78 */	mr r28, r4
/* 803E6B0C  41 82 01 34 */	beq lbl_803E6C40
/* 803E6B10  2C 1C 00 48 */	cmpwi r28, 0x48
/* 803E6B14  41 80 00 0C */	blt lbl_803E6B20
/* 803E6B18  2C 1C 00 4F */	cmpwi r28, 0x4f
/* 803E6B1C  40 81 00 18 */	ble lbl_803E6B34
lbl_803E6B20:
/* 803E6B20  2C 1C 00 00 */	cmpwi r28, 0
/* 803E6B24  41 80 00 0C */	blt lbl_803E6B30
/* 803E6B28  2C 1C 00 47 */	cmpwi r28, 0x47
/* 803E6B2C  41 80 00 08 */	blt lbl_803E6B34
lbl_803E6B30:
/* 803E6B30  3B 80 00 00 */	li r28, 0
lbl_803E6B34:
/* 803E6B34  2C 1C 00 48 */	cmpwi r28, 0x48
/* 803E6B38  41 80 00 D0 */	blt lbl_803E6C08
/* 803E6B3C  2C 1C 00 4F */	cmpwi r28, 0x4f
/* 803E6B40  41 81 00 C8 */	bgt lbl_803E6C08
/* 803E6B44  2C 1C 00 48 */	cmpwi r28, 0x48
/* 803E6B48  38 00 00 00 */	li r0, 0
/* 803E6B4C  41 80 00 10 */	blt lbl_803E6B5C
/* 803E6B50  2C 1C 00 4F */	cmpwi r28, 0x4f
/* 803E6B54  41 81 00 08 */	bgt lbl_803E6B5C
/* 803E6B58  38 00 00 01 */	li r0, 1
lbl_803E6B5C:
/* 803E6B5C  2C 00 00 00 */	cmpwi r0, 0
/* 803E6B60  3B A0 FF FF */	li r29, -1
/* 803E6B64  41 82 00 0C */	beq lbl_803E6B70
/* 803E6B68  38 1C FF B8 */	addi r0, r28, -72
/* 803E6B6C  54 1D 07 7E */	clrlwi r29, r0, 0x1d
lbl_803E6B70:
/* 803E6B70  4B FF FF 41 */	bl mRmTp_GetPlayerRoomIdx
/* 803E6B74  3B C0 00 00 */	li r30, 0
/* 803E6B78  7C 7C 1B 78 */	mr r28, r3
/* 803E6B7C  4B FC CA 99 */	bl mHS_get_pl_no_detail
/* 803E6B80  2C 03 00 00 */	cmpwi r3, 0
/* 803E6B84  41 80 00 18 */	blt lbl_803E6B9C
/* 803E6B88  7F 83 E3 78 */	mr r3, r28
/* 803E6B8C  4B FC CA 89 */	bl mHS_get_pl_no_detail
/* 803E6B90  2C 03 00 04 */	cmpwi r3, 4
/* 803E6B94  40 80 00 08 */	bge lbl_803E6B9C
/* 803E6B98  3B C0 00 01 */	li r30, 1
lbl_803E6B9C:
/* 803E6B9C  2C 1E 00 00 */	cmpwi r30, 0
/* 803E6BA0  41 82 00 10 */	beq lbl_803E6BB0
/* 803E6BA4  7F 83 E3 78 */	mr r3, r28
/* 803E6BA8  4B FC CA 6D */	bl mHS_get_pl_no_detail
/* 803E6BAC  48 00 00 08 */	b lbl_803E6BB4
lbl_803E6BB0:
/* 803E6BB0  38 60 00 00 */	li r3, 0
lbl_803E6BB4:
/* 803E6BB4  57 A0 07 7E */	clrlwi r0, r29, 0x1d
/* 803E6BB8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803E6BBC  1C A3 24 40 */	mulli r5, r3, 0x2440
/* 803E6BC0  7F E3 FB 78 */	mr r3, r31
/* 803E6BC4  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803E6BC8  1C 00 02 20 */	mulli r0, r0, 0x220
/* 803E6BCC  7C 84 2A 14 */	add r4, r4, r5
/* 803E6BD0  7C 84 02 14 */	add r4, r4, r0
/* 803E6BD4  3B 84 12 60 */	addi r28, r4, 0x1260
/* 803E6BD8  7F 84 E3 78 */	mr r4, r28
/* 803E6BDC  4B FE 30 81 */	bl mNW_CopyOriginalPalette
/* 803E6BE0  7F 84 E3 78 */	mr r4, r28
/* 803E6BE4  38 7F 00 20 */	addi r3, r31, 0x20
/* 803E6BE8  4B FE 30 2D */	bl mNW_CopyOriginalTexture
/* 803E6BEC  7F 84 E3 78 */	mr r4, r28
/* 803E6BF0  38 7F 08 20 */	addi r3, r31, 0x820
/* 803E6BF4  4B FE 30 21 */	bl mNW_CopyOriginalTexture
/* 803E6BF8  7F E3 FB 78 */	mr r3, r31
/* 803E6BFC  38 80 10 20 */	li r4, 0x1020
/* 803E6C00  4B C9 30 1D */	bl DCStoreRangeNoSync
/* 803E6C04  48 00 00 3C */	b lbl_803E6C40
lbl_803E6C08:
/* 803E6C08  2C 1C 00 00 */	cmpwi r28, 0
/* 803E6C0C  41 80 00 34 */	blt lbl_803E6C40
/* 803E6C10  2C 1C 00 47 */	cmpwi r28, 0x47
/* 803E6C14  40 80 00 2C */	bge lbl_803E6C40
/* 803E6C18  38 60 00 1E */	li r3, 0x1e
/* 803E6C1C  4B C1 FF B9 */	bl JW_GetAramAddress
/* 803E6C20  1C 1C 10 20 */	mulli r0, r28, 0x1020
/* 803E6C24  7F E4 FB 78 */	mr r4, r31
/* 803E6C28  38 A0 10 20 */	li r5, 0x1020
/* 803E6C2C  7C 63 02 14 */	add r3, r3, r0
/* 803E6C30  4B C2 00 45 */	bl _JW_GetResourceAram
/* 803E6C34  7F E3 FB 78 */	mr r3, r31
/* 803E6C38  38 80 10 20 */	li r4, 0x1020
/* 803E6C3C  4B C9 2F E1 */	bl DCStoreRangeNoSync
lbl_803E6C40:
/* 803E6C40  39 61 00 20 */	addi r11, r1, 0x20
/* 803E6C44  4B CB 42 D9 */	bl func_8009AF1C
/* 803E6C48  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803E6C4C  7C 08 03 A6 */	mtlr r0
/* 803E6C50  38 21 00 20 */	addi r1, r1, 0x20
/* 803E6C54  4E 80 00 20 */	blr 
