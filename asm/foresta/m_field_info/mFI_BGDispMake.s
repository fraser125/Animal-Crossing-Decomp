lbl_803A6AFC:
/* 803A6AFC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803A6B00  7C 08 02 A6 */	mflr r0
/* 803A6B04  90 01 00 24 */	stw r0, 0x24(r1)
/* 803A6B08  39 61 00 20 */	addi r11, r1, 0x20
/* 803A6B0C  4B CF 43 C5 */	bl func_8009AED0
/* 803A6B10  7C 9C 23 78 */	mr r28, r4
/* 803A6B14  7C BF 2B 78 */	mr r31, r5
/* 803A6B18  7C 7E 1B 78 */	mr r30, r3
/* 803A6B1C  7F 83 E3 78 */	mr r3, r28
/* 803A6B20  7F E4 FB 78 */	mr r4, r31
/* 803A6B24  4B FF E6 95 */	bl mFI_GetBlockNum
/* 803A6B28  7C 7D 1B 78 */	mr r29, r3
/* 803A6B2C  7F 84 E3 78 */	mr r4, r28
/* 803A6B30  7F E5 FB 78 */	mr r5, r31
/* 803A6B34  38 61 00 08 */	addi r3, r1, 8
/* 803A6B38  4B FF FE F9 */	bl mFI_BGDispMatch
/* 803A6B3C  2C 03 00 00 */	cmpwi r3, 0
/* 803A6B40  40 82 00 88 */	bne lbl_803A6BC8
/* 803A6B44  38 61 00 08 */	addi r3, r1, 8
/* 803A6B48  4B FF FF 51 */	bl mFI_SearchNullDisp
/* 803A6B4C  2C 03 00 00 */	cmpwi r3, 0
/* 803A6B50  41 82 00 90 */	beq lbl_803A6BE0
/* 803A6B54  3C 80 81 16 */	lis r4, g_fdinfo@ha /* 0x81167A58@ha */
/* 803A6B58  80 61 00 08 */	lwz r3, 8(r1)
/* 803A6B5C  38 84 7A 58 */	addi r4, r4, g_fdinfo@l /* 0x81167A58@l */
/* 803A6B60  80 84 00 00 */	lwz r4, 0(r4)
/* 803A6B64  1C 1D 06 14 */	mulli r0, r29, 0x614
/* 803A6B68  80 84 00 74 */	lwz r4, 0x74(r4)
/* 803A6B6C  7C A4 02 14 */	add r5, r4, r0
/* 803A6B70  80 85 00 18 */	lwz r4, 0x18(r5)
/* 803A6B74  80 A5 00 1C */	lwz r5, 0x1c(r5)
/* 803A6B78  4B FF F3 A5 */	bl mFI_SetRegisterBgInfo
/* 803A6B7C  80 01 00 08 */	lwz r0, 8(r1)
/* 803A6B80  3C 60 81 16 */	lis r3, g_fdinfo@ha /* 0x81167A58@ha */
/* 803A6B84  38 A3 7A 58 */	addi r5, r3, g_fdinfo@l /* 0x81167A58@l */
/* 803A6B88  1C 00 00 0C */	mulli r0, r0, 0xc
/* 803A6B8C  80 85 00 00 */	lwz r4, 0(r5)
/* 803A6B90  38 60 00 01 */	li r3, 1
/* 803A6B94  7C 84 02 14 */	add r4, r4, r0
/* 803A6B98  93 84 00 08 */	stw r28, 8(r4)
/* 803A6B9C  80 01 00 08 */	lwz r0, 8(r1)
/* 803A6BA0  80 85 00 00 */	lwz r4, 0(r5)
/* 803A6BA4  1C 00 00 0C */	mulli r0, r0, 0xc
/* 803A6BA8  7C 84 02 14 */	add r4, r4, r0
/* 803A6BAC  93 E4 00 0C */	stw r31, 0xc(r4)
/* 803A6BB0  80 01 00 08 */	lwz r0, 8(r1)
/* 803A6BB4  88 9E 00 00 */	lbz r4, 0(r30)
/* 803A6BB8  7C 60 00 30 */	slw r0, r3, r0
/* 803A6BBC  7C 80 03 78 */	or r0, r4, r0
/* 803A6BC0  98 1E 00 00 */	stb r0, 0(r30)
/* 803A6BC4  48 00 00 1C */	b lbl_803A6BE0
lbl_803A6BC8:
/* 803A6BC8  80 01 00 08 */	lwz r0, 8(r1)
/* 803A6BCC  38 60 00 01 */	li r3, 1
/* 803A6BD0  88 9E 00 00 */	lbz r4, 0(r30)
/* 803A6BD4  7C 60 00 30 */	slw r0, r3, r0
/* 803A6BD8  7C 80 03 78 */	or r0, r4, r0
/* 803A6BDC  98 1E 00 00 */	stb r0, 0(r30)
lbl_803A6BE0:
/* 803A6BE0  39 61 00 20 */	addi r11, r1, 0x20
/* 803A6BE4  4B CF 43 39 */	bl func_8009AF1C
/* 803A6BE8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803A6BEC  7C 08 03 A6 */	mtlr r0
/* 803A6BF0  38 21 00 20 */	addi r1, r1, 0x20
/* 803A6BF4  4E 80 00 20 */	blr 
