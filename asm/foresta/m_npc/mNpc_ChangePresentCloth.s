lbl_803CE8CC:
/* 803CE8CC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803CE8D0  7C 08 02 A6 */	mflr r0
/* 803CE8D4  90 01 00 24 */	stw r0, 0x24(r1)
/* 803CE8D8  39 61 00 20 */	addi r11, r1, 0x20
/* 803CE8DC  4B CC C5 F1 */	bl func_8009AECC
/* 803CE8E0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803CE8E4  3B 80 00 00 */	li r28, 0
/* 803CE8E8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803CE8EC  3F E3 00 01 */	addis r31, r3, 1
/* 803CE8F0  3B FF 74 38 */	addi r31, r31, 0x7438
lbl_803CE8F4:
/* 803CE8F4  A3 BF 08 EE */	lhz r29, 0x8ee(r31)
/* 803CE8F8  7F E3 FB 78 */	mr r3, r31
/* 803CE8FC  4B FF CA E1 */	bl mNpc_CheckFreeAnimalPersonalID
/* 803CE900  2C 03 00 00 */	cmpwi r3, 0
/* 803CE904  40 82 00 80 */	bne lbl_803CE984
/* 803CE908  28 1D 00 00 */	cmplwi r29, 0
/* 803CE90C  41 82 00 78 */	beq lbl_803CE984
/* 803CE910  57 A0 A7 3E */	rlwinm r0, r29, 0x14, 0x1c, 0x1f
/* 803CE914  2C 00 00 02 */	cmpwi r0, 2
/* 803CE918  40 82 00 6C */	bne lbl_803CE984
/* 803CE91C  57 A0 C7 3E */	rlwinm r0, r29, 0x18, 0x1c, 0x1f
/* 803CE920  2C 00 00 04 */	cmpwi r0, 4
/* 803CE924  40 82 00 60 */	bne lbl_803CE984
/* 803CE928  3B DF 00 10 */	addi r30, r31, 0x10
/* 803CE92C  3B 60 00 00 */	li r27, 0
lbl_803CE930:
/* 803CE930  7F C3 F3 78 */	mr r3, r30
/* 803CE934  4B FF CF 3D */	bl mNpc_CheckFreeAnimalMemory
/* 803CE938  2C 03 00 00 */	cmpwi r3, 0
/* 803CE93C  40 82 00 38 */	bne lbl_803CE974
/* 803CE940  88 9E 00 31 */	lbz r4, 0x31(r30)
/* 803CE944  54 80 E7 FE */	rlwinm r0, r4, 0x1c, 0x1f, 0x1f
/* 803CE948  28 00 00 01 */	cmplwi r0, 1
/* 803CE94C  40 82 00 28 */	bne lbl_803CE974
/* 803CE950  38 00 00 01 */	li r0, 1
/* 803CE954  38 60 00 00 */	li r3, 0
/* 803CE958  50 04 1F 38 */	rlwimi r4, r0, 3, 0x1c, 0x1c
/* 803CE95C  98 9E 00 31 */	stb r4, 0x31(r30)
/* 803CE960  88 1E 00 31 */	lbz r0, 0x31(r30)
/* 803CE964  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 803CE968  98 1E 00 31 */	stb r0, 0x31(r30)
/* 803CE96C  B3 BF 08 E4 */	sth r29, 0x8e4(r31)
/* 803CE970  48 00 00 14 */	b lbl_803CE984
lbl_803CE974:
/* 803CE974  3B 7B 00 01 */	addi r27, r27, 1
/* 803CE978  3B DE 01 38 */	addi r30, r30, 0x138
/* 803CE97C  2C 1B 00 07 */	cmpwi r27, 7
/* 803CE980  41 80 FF B0 */	blt lbl_803CE930
lbl_803CE984:
/* 803CE984  3B 9C 00 01 */	addi r28, r28, 1
/* 803CE988  3B FF 09 88 */	addi r31, r31, 0x988
/* 803CE98C  2C 1C 00 0F */	cmpwi r28, 0xf
/* 803CE990  41 80 FF 64 */	blt lbl_803CE8F4
/* 803CE994  39 61 00 20 */	addi r11, r1, 0x20
/* 803CE998  4B CC C5 81 */	bl func_8009AF18
/* 803CE99C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803CE9A0  7C 08 03 A6 */	mtlr r0
/* 803CE9A4  38 21 00 20 */	addi r1, r1, 0x20
/* 803CE9A8  4E 80 00 20 */	blr 
