lbl_80550AF8:
/* 80550AF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80550AFC  7C 08 02 A6 */	mflr r0
/* 80550B00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80550B04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80550B08  7C 9F 23 78 */	mr r31, r4
/* 80550B0C  38 80 00 09 */	li r4, 9
/* 80550B10  93 C1 00 08 */	stw r30, 8(r1)
/* 80550B14  7C 7E 1B 78 */	mr r30, r3
/* 80550B18  38 60 00 04 */	li r3, 4
/* 80550B1C  4B E4 79 61 */	bl mDemo_Get_OrderValue
/* 80550B20  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 80550B24  41 82 00 24 */	beq lbl_80550B48
/* 80550B28  38 60 00 04 */	li r3, 4
/* 80550B2C  38 80 00 09 */	li r4, 9
/* 80550B30  38 A0 00 00 */	li r5, 0
/* 80550B34  4B E4 79 05 */	bl mDemo_Set_OrderValue
/* 80550B38  7F C3 F3 78 */	mr r3, r30
/* 80550B3C  7F E4 FB 78 */	mr r4, r31
/* 80550B40  38 A0 00 1F */	li r5, 0x1f
/* 80550B44  48 00 1C F1 */	bl aNSC_setupAction
lbl_80550B48:
/* 80550B48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80550B4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80550B50  83 C1 00 08 */	lwz r30, 8(r1)
/* 80550B54  7C 08 03 A6 */	mtlr r0
/* 80550B58  38 21 00 10 */	addi r1, r1, 0x10
/* 80550B5C  4E 80 00 20 */	blr 
