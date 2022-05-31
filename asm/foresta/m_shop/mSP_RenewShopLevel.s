lbl_803E997C:
/* 803E997C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803E9980  7C 08 02 A6 */	mflr r0
/* 803E9984  90 01 00 14 */	stw r0, 0x14(r1)
/* 803E9988  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803E998C  48 00 00 55 */	bl mSP_GetRealShopLevel
/* 803E9990  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803E9994  54 65 06 3E */	clrlwi r5, r3, 0x18
/* 803E9998  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 803E999C  3F E3 00 02 */	addis r31, r3, 2
/* 803E99A0  88 1F 04 66 */	lbz r0, 0x466(r31)
/* 803E99A4  54 00 D7 BE */	rlwinm r0, r0, 0x1a, 0x1e, 0x1f
/* 803E99A8  7C 00 28 40 */	cmplw r0, r5
/* 803E99AC  41 82 00 1C */	beq lbl_803E99C8
/* 803E99B0  48 00 00 31 */	bl mSP_GetRealShopLevel
/* 803E99B4  88 1F 04 66 */	lbz r0, 0x466(r31)
/* 803E99B8  50 60 36 32 */	rlwimi r0, r3, 6, 0x18, 0x19
/* 803E99BC  38 60 00 01 */	li r3, 1
/* 803E99C0  98 1F 04 66 */	stb r0, 0x466(r31)
/* 803E99C4  48 00 00 08 */	b lbl_803E99CC
lbl_803E99C8:
/* 803E99C8  38 60 00 00 */	li r3, 0
lbl_803E99CC:
/* 803E99CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E99D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803E99D4  7C 08 03 A6 */	mtlr r0
/* 803E99D8  38 21 00 10 */	addi r1, r1, 0x10
/* 803E99DC  4E 80 00 20 */	blr 
