lbl_80580340:
/* 80580340  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80580344  7C 08 02 A6 */	mflr r0
/* 80580348  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058034C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80580350  7C 9F 23 78 */	mr r31, r4
/* 80580354  88 03 09 A9 */	lbz r0, 0x9a9(r3)
/* 80580358  28 00 00 01 */	cmplwi r0, 1
/* 8058035C  40 82 00 10 */	bne lbl_8058036C
/* 80580360  7F E3 FB 78 */	mr r3, r31
/* 80580364  4B FF F3 D9 */	bl aNPS2_setup_game_start
/* 80580368  48 00 00 20 */	b lbl_80580388
lbl_8058036C:
/* 8058036C  38 60 32 8A */	li r3, 0x328a
/* 80580370  4B DF B7 9D */	bl mBGMPsComp_make_ps_wipe
/* 80580374  38 00 00 05 */	li r0, 5
/* 80580378  7F E3 FB 78 */	mr r3, r31
/* 8058037C  98 1F 20 D0 */	stb r0, 0x20d0(r31)
/* 80580380  98 1F 20 D1 */	stb r0, 0x20d1(r31)
/* 80580384  4B E5 9D CD */	bl mPlib_request_main_invade_type1
lbl_80580388:
/* 80580388  38 60 00 0B */	li r3, 0xb
/* 8058038C  4B DF C4 95 */	bl mBGMPsComp_scene_mode
/* 80580390  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80580394  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80580398  7C 08 03 A6 */	mtlr r0
/* 8058039C  38 21 00 10 */	addi r1, r1, 0x10
/* 805803A0  4E 80 00 20 */	blr 
