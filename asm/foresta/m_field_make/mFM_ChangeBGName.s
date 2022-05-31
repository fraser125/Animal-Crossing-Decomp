lbl_803A25A8:
/* 803A25A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803A25AC  7C 08 02 A6 */	mflr r0
/* 803A25B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 803A25B4  39 61 00 20 */	addi r11, r1, 0x20
/* 803A25B8  4B CF 89 1D */	bl func_8009AED4
/* 803A25BC  7C BF 2B 78 */	mr r31, r5
/* 803A25C0  7C 7D 1B 78 */	mr r29, r3
/* 803A25C4  7C 9E 23 78 */	mr r30, r4
/* 803A25C8  7F E3 FB 78 */	mr r3, r31
/* 803A25CC  48 00 27 49 */	bl mFI_CheckShopFieldName
/* 803A25D0  2C 03 00 00 */	cmpwi r3, 0
/* 803A25D4  41 82 00 10 */	beq lbl_803A25E4
/* 803A25D8  48 04 7C 45 */	bl mSP_GetNowShopBgNum
/* 803A25DC  B0 7D 00 00 */	sth r3, 0(r29)
/* 803A25E0  48 00 00 28 */	b lbl_803A2608
lbl_803A25E4:
/* 803A25E4  57 E0 04 26 */	rlwinm r0, r31, 0, 0x10, 0x13
/* 803A25E8  2C 00 60 00 */	cmpwi r0, 0x6000
/* 803A25EC  40 82 00 18 */	bne lbl_803A2604
/* 803A25F0  7F E3 FB 78 */	mr r3, r31
/* 803A25F4  7F C4 F3 78 */	mr r4, r30
/* 803A25F8  48 04 43 C5 */	bl mRmTp_GetPlayerRoomCollisionIdx
/* 803A25FC  B0 7D 00 00 */	sth r3, 0(r29)
/* 803A2600  48 00 00 08 */	b lbl_803A2608
lbl_803A2604:
/* 803A2604  B3 DD 00 00 */	sth r30, 0(r29)
lbl_803A2608:
/* 803A2608  39 61 00 20 */	addi r11, r1, 0x20
/* 803A260C  4B CF 89 15 */	bl func_8009AF20
/* 803A2610  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803A2614  7C 08 03 A6 */	mtlr r0
/* 803A2618  38 21 00 20 */	addi r1, r1, 0x20
/* 803A261C  4E 80 00 20 */	blr 
