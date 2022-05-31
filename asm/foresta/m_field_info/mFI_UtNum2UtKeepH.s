lbl_803A6770:
/* 803A6770  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803A6774  7C 08 02 A6 */	mflr r0
/* 803A6778  90 01 00 34 */	stw r0, 0x34(r1)
/* 803A677C  39 61 00 30 */	addi r11, r1, 0x30
/* 803A6780  4B CF 47 55 */	bl func_8009AED4
/* 803A6784  7C 7D 1B 78 */	mr r29, r3
/* 803A6788  7C 9E 23 78 */	mr r30, r4
/* 803A678C  4B FF E6 4D */	bl mFI_GetBlockZMax
/* 803A6790  54 7F 06 3E */	clrlwi r31, r3, 0x18
/* 803A6794  4B FF E5 FD */	bl mFI_GetBlockXMax
/* 803A6798  54 65 06 3E */	clrlwi r5, r3, 0x18
/* 803A679C  7F A3 EB 78 */	mr r3, r29
/* 803A67A0  7F C4 F3 78 */	mr r4, r30
/* 803A67A4  7F E6 FB 78 */	mr r6, r31
/* 803A67A8  4B FF EA FD */	bl mFI_UtNumCheck
/* 803A67AC  2C 03 00 00 */	cmpwi r3, 0
/* 803A67B0  40 82 00 0C */	bne lbl_803A67BC
/* 803A67B4  38 60 00 1F */	li r3, 0x1f
/* 803A67B8  48 00 00 78 */	b lbl_803A6830
lbl_803A67BC:
/* 803A67BC  7F A5 EB 78 */	mr r5, r29
/* 803A67C0  7F C6 F3 78 */	mr r6, r30
/* 803A67C4  38 61 00 0C */	addi r3, r1, 0xc
/* 803A67C8  38 81 00 08 */	addi r4, r1, 8
/* 803A67CC  4B FF F0 A5 */	bl mFI_UtNum2BlockNum
/* 803A67D0  2C 03 00 00 */	cmpwi r3, 0
/* 803A67D4  40 82 00 0C */	bne lbl_803A67E0
/* 803A67D8  38 60 00 1F */	li r3, 0x1f
/* 803A67DC  48 00 00 54 */	b lbl_803A6830
lbl_803A67E0:
/* 803A67E0  7F A5 EB 78 */	mr r5, r29
/* 803A67E4  7F C6 F3 78 */	mr r6, r30
/* 803A67E8  38 61 00 14 */	addi r3, r1, 0x14
/* 803A67EC  38 81 00 10 */	addi r4, r1, 0x10
/* 803A67F0  4B FF F0 D9 */	bl mFI_GetUtNumInBK
/* 803A67F4  80 61 00 0C */	lwz r3, 0xc(r1)
/* 803A67F8  80 81 00 08 */	lwz r4, 8(r1)
/* 803A67FC  4B FF E9 BD */	bl mFI_GetBlockNum
/* 803A6800  3C 80 81 16 */	lis r4, g_fdinfo@ha /* 0x81167A58@ha */
/* 803A6804  80 01 00 10 */	lwz r0, 0x10(r1)
/* 803A6808  38 A4 7A 58 */	addi r5, r4, g_fdinfo@l /* 0x81167A58@l */
/* 803A680C  80 81 00 14 */	lwz r4, 0x14(r1)
/* 803A6810  1C 63 06 14 */	mulli r3, r3, 0x614
/* 803A6814  80 A5 00 00 */	lwz r5, 0(r5)
/* 803A6818  54 00 20 36 */	slwi r0, r0, 4
/* 803A681C  80 A5 00 74 */	lwz r5, 0x74(r5)
/* 803A6820  38 63 04 20 */	addi r3, r3, 0x420
/* 803A6824  7C 65 1A 14 */	add r3, r5, r3
/* 803A6828  7C 60 1A 14 */	add r3, r0, r3
/* 803A682C  7C 64 18 AE */	lbzx r3, r4, r3
lbl_803A6830:
/* 803A6830  39 61 00 30 */	addi r11, r1, 0x30
/* 803A6834  4B CF 46 ED */	bl func_8009AF20
/* 803A6838  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803A683C  7C 08 03 A6 */	mtlr r0
/* 803A6840  38 21 00 30 */	addi r1, r1, 0x30
/* 803A6844  4E 80 00 20 */	blr 
