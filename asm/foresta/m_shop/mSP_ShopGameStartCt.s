lbl_803EA1E4:
/* 803EA1E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803EA1E8  7C 08 02 A6 */	mflr r0
/* 803EA1EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803EA1F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803EA1F4  7C 7F 1B 78 */	mr r31, r3
/* 803EA1F8  4B FF FF 91 */	bl mSP_DecideGoodsCommonList
/* 803EA1FC  4B FF FE 55 */	bl mSP_InitShopSaveData
/* 803EA200  7F E3 FB 78 */	mr r3, r31
/* 803EA204  4B FF F5 D5 */	bl mSP_ExchangeLineUp_InGame
/* 803EA208  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803EA20C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803EA210  7C 08 03 A6 */	mtlr r0
/* 803EA214  38 21 00 10 */	addi r1, r1, 0x10
/* 803EA218  4E 80 00 20 */	blr 
