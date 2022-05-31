lbl_803A7280:
/* 803A7280  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803A7284  7C 08 02 A6 */	mflr r0
/* 803A7288  90 01 00 34 */	stw r0, 0x34(r1)
/* 803A728C  39 61 00 30 */	addi r11, r1, 0x30
/* 803A7290  4B CF 3C 45 */	bl func_8009AED4
/* 803A7294  7C 7D 1B 78 */	mr r29, r3
/* 803A7298  7C 9E 23 78 */	mr r30, r4
/* 803A729C  4B FF DB 3D */	bl mFI_GetBlockZMax
/* 803A72A0  54 7F 06 3E */	clrlwi r31, r3, 0x18
/* 803A72A4  4B FF DA ED */	bl mFI_GetBlockXMax
/* 803A72A8  54 65 06 3E */	clrlwi r5, r3, 0x18
/* 803A72AC  7F A3 EB 78 */	mr r3, r29
/* 803A72B0  7F C4 F3 78 */	mr r4, r30
/* 803A72B4  7F E6 FB 78 */	mr r6, r31
/* 803A72B8  4B FF DF ED */	bl mFI_UtNumCheck
/* 803A72BC  2C 03 00 00 */	cmpwi r3, 0
/* 803A72C0  40 82 00 0C */	bne lbl_803A72CC
/* 803A72C4  38 60 00 00 */	li r3, 0
/* 803A72C8  48 00 00 8C */	b lbl_803A7354
lbl_803A72CC:
/* 803A72CC  7F A5 EB 78 */	mr r5, r29
/* 803A72D0  7F C6 F3 78 */	mr r6, r30
/* 803A72D4  38 61 00 14 */	addi r3, r1, 0x14
/* 803A72D8  38 81 00 10 */	addi r4, r1, 0x10
/* 803A72DC  4B FF E5 95 */	bl mFI_UtNum2BlockNum
/* 803A72E0  2C 03 00 00 */	cmpwi r3, 0
/* 803A72E4  40 82 00 0C */	bne lbl_803A72F0
/* 803A72E8  38 60 00 00 */	li r3, 0
/* 803A72EC  48 00 00 68 */	b lbl_803A7354
lbl_803A72F0:
/* 803A72F0  7F A5 EB 78 */	mr r5, r29
/* 803A72F4  7F C6 F3 78 */	mr r6, r30
/* 803A72F8  38 61 00 0C */	addi r3, r1, 0xc
/* 803A72FC  38 81 00 08 */	addi r4, r1, 8
/* 803A7300  4B FF E5 C9 */	bl mFI_GetUtNumInBK
/* 803A7304  80 61 00 14 */	lwz r3, 0x14(r1)
/* 803A7308  80 81 00 10 */	lwz r4, 0x10(r1)
/* 803A730C  4B FF DE AD */	bl mFI_GetBlockNum
/* 803A7310  3C 80 81 16 */	lis r4, g_fdinfo@ha /* 0x81167A58@ha */
/* 803A7314  38 84 7A 58 */	addi r4, r4, g_fdinfo@l /* 0x81167A58@l */
/* 803A7318  80 84 00 00 */	lwz r4, 0(r4)
/* 803A731C  1C 03 06 14 */	mulli r0, r3, 0x614
/* 803A7320  80 64 00 74 */	lwz r3, 0x74(r4)
/* 803A7324  7C 63 02 14 */	add r3, r3, r0
/* 803A7328  80 83 05 84 */	lwz r4, 0x584(r3)
/* 803A732C  28 04 00 00 */	cmplwi r4, 0
/* 803A7330  40 82 00 0C */	bne lbl_803A733C
/* 803A7334  38 60 00 00 */	li r3, 0
/* 803A7338  48 00 00 1C */	b lbl_803A7354
lbl_803A733C:
/* 803A733C  80 01 00 08 */	lwz r0, 8(r1)
/* 803A7340  80 61 00 0C */	lwz r3, 0xc(r1)
/* 803A7344  54 00 20 36 */	slwi r0, r0, 4
/* 803A7348  7C 03 02 14 */	add r0, r3, r0
/* 803A734C  54 00 08 3C */	slwi r0, r0, 1
/* 803A7350  7C 64 02 14 */	add r3, r4, r0
lbl_803A7354:
/* 803A7354  39 61 00 30 */	addi r11, r1, 0x30
/* 803A7358  4B CF 3B C9 */	bl func_8009AF20
/* 803A735C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803A7360  7C 08 03 A6 */	mtlr r0
/* 803A7364  38 21 00 30 */	addi r1, r1, 0x30
/* 803A7368  4E 80 00 20 */	blr 
