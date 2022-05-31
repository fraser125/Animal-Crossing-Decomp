lbl_803A4AD0:
/* 803A4AD0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803A4AD4  7C 08 02 A6 */	mflr r0
/* 803A4AD8  90 01 00 34 */	stw r0, 0x34(r1)
/* 803A4ADC  39 61 00 30 */	addi r11, r1, 0x30
/* 803A4AE0  4B CF 63 E1 */	bl func_8009AEC0
/* 803A4AE4  7C 78 1B 78 */	mr r24, r3
/* 803A4AE8  7C 99 23 78 */	mr r25, r4
/* 803A4AEC  3B C0 00 00 */	li r30, 0
/* 803A4AF0  38 60 00 18 */	li r3, 0x18
/* 803A4AF4  4B C6 21 B5 */	bl JW_GetResSizeFileNo
/* 803A4AF8  7C 7F 1B 78 */	mr r31, r3
/* 803A4AFC  28 18 00 00 */	cmplwi r24, 0
/* 803A4B00  38 1F 00 1F */	addi r0, r31, 0x1f
/* 803A4B04  54 1B 00 34 */	rlwinm r27, r0, 0, 0, 0x1a
/* 803A4B08  41 82 00 08 */	beq lbl_803A4B10
/* 803A4B0C  3B D8 00 88 */	addi r30, r24, 0x88
lbl_803A4B10:
/* 803A4B10  2C 19 00 01 */	cmpwi r25, 1
/* 803A4B14  40 82 00 18 */	bne lbl_803A4B2C
/* 803A4B18  7F 63 DB 78 */	mr r3, r27
/* 803A4B1C  38 80 00 20 */	li r4, 0x20
/* 803A4B20  48 01 79 09 */	bl func_803BC428
/* 803A4B24  7C 7C 1B 78 */	mr r28, r3
/* 803A4B28  48 00 00 38 */	b lbl_803A4B60
lbl_803A4B2C:
/* 803A4B2C  28 18 00 00 */	cmplwi r24, 0
/* 803A4B30  41 82 00 20 */	beq lbl_803A4B50
/* 803A4B34  7F C3 F3 78 */	mr r3, r30
/* 803A4B38  38 9B 00 20 */	addi r4, r27, 0x20
/* 803A4B3C  48 06 07 4D */	bl func_80405288
/* 803A4B40  7C 7D 1B 78 */	mr r29, r3
/* 803A4B44  38 1D 00 1F */	addi r0, r29, 0x1f
/* 803A4B48  54 1C 00 34 */	rlwinm r28, r0, 0, 0, 0x1a
/* 803A4B4C  48 00 00 14 */	b lbl_803A4B60
lbl_803A4B50:
/* 803A4B50  7F 63 DB 78 */	mr r3, r27
/* 803A4B54  38 80 00 20 */	li r4, 0x20
/* 803A4B58  48 01 78 D1 */	bl func_803BC428
/* 803A4B5C  7C 7C 1B 78 */	mr r28, r3
lbl_803A4B60:
/* 803A4B60  28 1C 00 00 */	cmplwi r28, 0
/* 803A4B64  41 82 01 04 */	beq lbl_803A4C68
/* 803A4B68  38 00 02 06 */	li r0, 0x206
/* 803A4B6C  38 60 00 18 */	li r3, 0x18
/* 803A4B70  7F 5F 03 96 */	divwu r26, r31, r0
/* 803A4B74  4B C6 20 61 */	bl JW_GetAramAddress
/* 803A4B78  7F 84 E3 78 */	mr r4, r28
/* 803A4B7C  7F 65 DB 78 */	mr r5, r27
/* 803A4B80  4B C6 20 F5 */	bl _JW_GetResourceAram
/* 803A4B84  2C 19 00 01 */	cmpwi r25, 1
/* 803A4B88  40 82 00 14 */	bne lbl_803A4B9C
/* 803A4B8C  38 60 08 60 */	li r3, 0x860
/* 803A4B90  48 01 78 CD */	bl zelda_malloc
/* 803A4B94  7C 7F 1B 78 */	mr r31, r3
/* 803A4B98  48 00 00 2C */	b lbl_803A4BC4
lbl_803A4B9C:
/* 803A4B9C  28 18 00 00 */	cmplwi r24, 0
/* 803A4BA0  41 82 00 18 */	beq lbl_803A4BB8
/* 803A4BA4  7F C3 F3 78 */	mr r3, r30
/* 803A4BA8  38 80 08 60 */	li r4, 0x860
/* 803A4BAC  48 06 06 DD */	bl func_80405288
/* 803A4BB0  7C 7F 1B 78 */	mr r31, r3
/* 803A4BB4  48 00 00 10 */	b lbl_803A4BC4
lbl_803A4BB8:
/* 803A4BB8  38 60 08 60 */	li r3, 0x860
/* 803A4BBC  48 01 78 A1 */	bl zelda_malloc
/* 803A4BC0  7C 7F 1B 78 */	mr r31, r3
lbl_803A4BC4:
/* 803A4BC4  28 1F 00 00 */	cmplwi r31, 0
/* 803A4BC8  41 82 00 64 */	beq lbl_803A4C2C
/* 803A4BCC  7F E3 FB 78 */	mr r3, r31
/* 803A4BD0  7F 84 E3 78 */	mr r4, r28
/* 803A4BD4  7F 46 D3 78 */	mr r6, r26
/* 803A4BD8  38 A0 02 18 */	li r5, 0x218
/* 803A4BDC  38 E0 01 A0 */	li r7, 0x1a0
/* 803A4BE0  4B FF D6 45 */	bl mFM_SortFGData
/* 803A4BE4  7F E3 FB 78 */	mr r3, r31
/* 803A4BE8  38 80 01 A0 */	li r4, 0x1a0
/* 803A4BEC  48 02 F8 15 */	bl mNpc_IslandNpcRoomDataSet
/* 803A4BF0  28 1F 00 00 */	cmplwi r31, 0
/* 803A4BF4  41 82 00 38 */	beq lbl_803A4C2C
/* 803A4BF8  2C 19 00 01 */	cmpwi r25, 1
/* 803A4BFC  40 82 00 10 */	bne lbl_803A4C0C
/* 803A4C00  7F E3 FB 78 */	mr r3, r31
/* 803A4C04  48 01 78 B1 */	bl zelda_free
/* 803A4C08  48 00 00 24 */	b lbl_803A4C2C
lbl_803A4C0C:
/* 803A4C0C  28 18 00 00 */	cmplwi r24, 0
/* 803A4C10  41 82 00 14 */	beq lbl_803A4C24
/* 803A4C14  7F C3 F3 78 */	mr r3, r30
/* 803A4C18  7F E4 FB 78 */	mr r4, r31
/* 803A4C1C  48 06 06 E5 */	bl gamealloc_free
/* 803A4C20  48 00 00 0C */	b lbl_803A4C2C
lbl_803A4C24:
/* 803A4C24  7F E3 FB 78 */	mr r3, r31
/* 803A4C28  48 01 78 8D */	bl zelda_free
lbl_803A4C2C:
/* 803A4C2C  28 1D 00 00 */	cmplwi r29, 0
/* 803A4C30  41 82 00 38 */	beq lbl_803A4C68
/* 803A4C34  2C 19 00 01 */	cmpwi r25, 1
/* 803A4C38  40 82 00 10 */	bne lbl_803A4C48
/* 803A4C3C  7F 83 E3 78 */	mr r3, r28
/* 803A4C40  48 01 78 75 */	bl zelda_free
/* 803A4C44  48 00 00 24 */	b lbl_803A4C68
lbl_803A4C48:
/* 803A4C48  28 18 00 00 */	cmplwi r24, 0
/* 803A4C4C  41 82 00 14 */	beq lbl_803A4C60
/* 803A4C50  7F C3 F3 78 */	mr r3, r30
/* 803A4C54  7F A4 EB 78 */	mr r4, r29
/* 803A4C58  48 06 06 A9 */	bl gamealloc_free
/* 803A4C5C  48 00 00 0C */	b lbl_803A4C68
lbl_803A4C60:
/* 803A4C60  7F 83 E3 78 */	mr r3, r28
/* 803A4C64  48 01 78 51 */	bl zelda_free
lbl_803A4C68:
/* 803A4C68  39 61 00 30 */	addi r11, r1, 0x30
/* 803A4C6C  4B CF 62 A1 */	bl func_8009AF0C
/* 803A4C70  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803A4C74  7C 08 03 A6 */	mtlr r0
/* 803A4C78  38 21 00 30 */	addi r1, r1, 0x30
/* 803A4C7C  4E 80 00 20 */	blr 
