lbl_80415544:
/* 80415544  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80415548  7C 08 02 A6 */	mflr r0
/* 8041554C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80415550  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80415554  7C 9F 23 78 */	mr r31, r4
/* 80415558  93 C1 00 08 */	stw r30, 8(r1)
/* 8041555C  7C 7E 1B 78 */	mr r30, r3
/* 80415560  4B FA A1 49 */	bl func_803BF6A8
/* 80415564  4B FA AA 69 */	bl mMsg_Get_msg_num
/* 80415568  80 1E 01 B4 */	lwz r0, 0x1b4(r30)
/* 8041556C  7C 03 00 00 */	cmpw r3, r0
/* 80415570  40 82 00 14 */	bne lbl_80415584
/* 80415574  7F C3 F3 78 */	mr r3, r30
/* 80415578  7F E4 FB 78 */	mr r4, r31
/* 8041557C  38 A0 00 09 */	li r5, 9
/* 80415580  48 00 04 C1 */	bl aBTD_setupAction
lbl_80415584:
/* 80415584  7F C3 F3 78 */	mr r3, r30
/* 80415588  4B FF FA AD */	bl aBTD_chg_regist_island_npc_info
/* 8041558C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80415590  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80415594  83 C1 00 08 */	lwz r30, 8(r1)
/* 80415598  7C 08 03 A6 */	mtlr r0
/* 8041559C  38 21 00 10 */	addi r1, r1, 0x10
/* 804155A0  4E 80 00 20 */	blr 