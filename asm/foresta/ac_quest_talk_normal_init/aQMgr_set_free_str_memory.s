lbl_80492900:
/* 80492900  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80492904  7C 08 02 A6 */	mflr r0
/* 80492908  38 80 00 0E */	li r4, 0xe
/* 8049290C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80492910  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80492914  7C 7F 1B 78 */	mr r31, r3
/* 80492918  38 7F 00 08 */	addi r3, r31, 8
/* 8049291C  4B F2 10 ED */	bl mLd_SetFreeStrLandMuraName
/* 80492920  4B F2 CD 89 */	bl func_803BF6A8
/* 80492924  7F E5 FB 78 */	mr r5, r31
/* 80492928  38 80 00 0F */	li r4, 0xf
/* 8049292C  38 C0 00 08 */	li r6, 8
/* 80492930  4B F2 D3 25 */	bl mMsg_Set_free_str
/* 80492934  38 7F 00 1C */	addi r3, r31, 0x1c
/* 80492938  38 80 00 10 */	li r4, 0x10
/* 8049293C  4B F2 10 CD */	bl mLd_SetFreeStrLandMuraName
/* 80492940  A0 7F 00 1A */	lhz r3, 0x1a(r31)
/* 80492944  38 80 00 11 */	li r4, 0x11
/* 80492948  4B FF EC CD */	bl aQMgr_set_number_free_str_add_nen
/* 8049294C  88 7F 00 19 */	lbz r3, 0x19(r31)
/* 80492950  38 80 00 12 */	li r4, 0x12
/* 80492954  4B FF ED 39 */	bl aQMgr_set_number_free_str_add_gatu
/* 80492958  88 7F 00 17 */	lbz r3, 0x17(r31)
/* 8049295C  38 80 00 13 */	li r4, 0x13
/* 80492960  4B FF ED B9 */	bl aQMgr_set_number_free_str_add_nichi
/* 80492964  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80492968  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8049296C  7C 08 03 A6 */	mtlr r0
/* 80492970  38 21 00 10 */	addi r1, r1, 0x10
/* 80492974  4E 80 00 20 */	blr 
