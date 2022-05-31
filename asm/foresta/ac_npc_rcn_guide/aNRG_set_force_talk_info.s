lbl_8056F3F0:
/* 8056F3F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8056F3F4  7C 08 02 A6 */	mflr r0
/* 8056F3F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8056F3FC  39 61 00 20 */	addi r11, r1, 0x20
/* 8056F400  4B B2 BA D5 */	bl func_8009AED4
/* 8056F404  7C 7D 1B 78 */	mr r29, r3
/* 8056F408  3C 60 80 6C */	lis r3, dt_tbl_555@ha /* 0x806BED80@ha */
/* 8056F40C  83 FD 09 A0 */	lwz r31, 0x9a0(r29)
/* 8056F410  38 03 ED 80 */	addi r0, r3, dt_tbl_555@l /* 0x806BED80@l */
/* 8056F414  1C 7F 00 0C */	mulli r3, r31, 0xc
/* 8056F418  7F C0 1A 14 */	add r30, r0, r3
/* 8056F41C  80 7E 00 00 */	lwz r3, 0(r30)
/* 8056F420  4B E2 90 F5 */	bl mDemo_Set_msg_num
/* 8056F424  88 7E 00 04 */	lbz r3, 4(r30)
/* 8056F428  4B E2 94 21 */	bl mDemo_Set_talk_turn
/* 8056F42C  88 7E 00 05 */	lbz r3, 5(r30)
/* 8056F430  4B E2 94 F1 */	bl mDemo_Set_camera
/* 8056F434  38 60 00 00 */	li r3, 0
/* 8056F438  98 7D 09 A8 */	stb r3, 0x9a8(r29)
/* 8056F43C  80 1E 00 08 */	lwz r0, 8(r30)
/* 8056F440  90 1D 09 A4 */	stw r0, 0x9a4(r29)
/* 8056F444  88 1E 00 06 */	lbz r0, 6(r30)
/* 8056F448  28 00 00 01 */	cmplwi r0, 1
/* 8056F44C  40 82 00 10 */	bne lbl_8056F45C
/* 8056F450  88 1D 09 AA */	lbz r0, 0x9aa(r29)
/* 8056F454  B0 1D 09 78 */	sth r0, 0x978(r29)
/* 8056F458  48 00 00 08 */	b lbl_8056F460
lbl_8056F45C:
/* 8056F45C  B0 7D 09 78 */	sth r3, 0x978(r29)
lbl_8056F460:
/* 8056F460  2C 1F 00 00 */	cmpwi r31, 0
/* 8056F464  40 82 00 0C */	bne lbl_8056F470
/* 8056F468  38 60 00 00 */	li r3, 0
/* 8056F46C  4B E0 C7 19 */	bl mBGMPsComp_make_ps_quiet
lbl_8056F470:
/* 8056F470  39 61 00 20 */	addi r11, r1, 0x20
/* 8056F474  4B B2 BA AD */	bl func_8009AF20
/* 8056F478  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8056F47C  7C 08 03 A6 */	mtlr r0
/* 8056F480  38 21 00 20 */	addi r1, r1, 0x20
/* 8056F484  4E 80 00 20 */	blr 
