lbl_803E97D8:
/* 803E97D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803E97DC  7C 08 02 A6 */	mflr r0
/* 803E97E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803E97E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803E97E8  7C 7F 1B 78 */	mr r31, r3
/* 803E97EC  4B FF F9 B9 */	bl mSP_CheckExchangeDay2
/* 803E97F0  2C 03 00 00 */	cmpwi r3, 0
/* 803E97F4  41 82 00 54 */	beq lbl_803E9848
/* 803E97F8  4B FF F9 FD */	bl mSP_CheckExchangeMonth
/* 803E97FC  2C 03 00 00 */	cmpwi r3, 0
/* 803E9800  41 82 00 0C */	beq lbl_803E980C
/* 803E9804  7F E3 FB 78 */	mr r3, r31
/* 803E9808  48 00 08 29 */	bl mSP_LotteryLineUp_GameAlloc
lbl_803E980C:
/* 803E980C  4B FF FA 39 */	bl mSP_NewExchangeDay
/* 803E9810  7F E3 FB 78 */	mr r3, r31
/* 803E9814  48 00 07 E5 */	bl mSP_ExchangeLineUp_GameAlloc
/* 803E9818  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803E981C  38 E0 00 01 */	li r7, 1
/* 803E9820  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803E9824  7F E6 FB 78 */	mr r6, r31
/* 803E9828  3C 83 00 02 */	addis r4, r3, 2
/* 803E982C  38 A0 00 27 */	li r5, 0x27
/* 803E9830  88 04 04 66 */	lbz r0, 0x466(r4)
/* 803E9834  50 E0 1F 38 */	rlwimi r0, r7, 3, 0x1c, 0x1c
/* 803E9838  88 64 60 03 */	lbz r3, 0x6003(r4)
/* 803E983C  98 04 04 66 */	stb r0, 0x466(r4)
/* 803E9840  38 84 04 0E */	addi r4, r4, 0x40e
/* 803E9844  4B FF FB 8D */	bl mSP_SetShopRareFurnitureChirashi
lbl_803E9848:
/* 803E9848  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E984C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803E9850  7C 08 03 A6 */	mtlr r0
/* 803E9854  38 21 00 10 */	addi r1, r1, 0x10
/* 803E9858  4E 80 00 20 */	blr 
