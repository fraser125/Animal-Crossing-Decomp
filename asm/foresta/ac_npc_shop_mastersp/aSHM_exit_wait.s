lbl_8057D538:
/* 8057D538  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057D53C  7C 08 02 A6 */	mflr r0
/* 8057D540  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057D544  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057D548  7C 9F 23 78 */	mr r31, r4
/* 8057D54C  4B E4 21 5D */	bl func_803BF6A8
/* 8057D550  4B E4 21 F1 */	bl mMsg_Check_main_wait
/* 8057D554  2C 03 00 01 */	cmpwi r3, 1
/* 8057D558  40 82 00 40 */	bne lbl_8057D598
/* 8057D55C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8057D560  7F E3 FB 78 */	mr r3, r31
/* 8057D564  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8057D568  38 A0 00 01 */	li r5, 1
/* 8057D56C  3C 84 00 03 */	addis r4, r4, 3
/* 8057D570  38 84 85 44 */	addi r4, r4, -31420
/* 8057D574  4B E7 3C 35 */	bl goto_other_scene
/* 8057D578  88 1F 20 D3 */	lbz r0, 0x20d3(r31)
/* 8057D57C  28 00 00 00 */	cmplwi r0, 0
/* 8057D580  40 82 00 18 */	bne lbl_8057D598
/* 8057D584  38 60 00 0E */	li r3, 0xe
/* 8057D588  4B DF F2 99 */	bl mBGMPsComp_scene_mode
/* 8057D58C  4B DF F1 C5 */	bl mBGMPsComp_volume_talk_end
/* 8057D590  38 60 01 95 */	li r3, 0x195
/* 8057D594  4B DF E5 79 */	bl mBGMPsComp_make_ps_wipe
lbl_8057D598:
/* 8057D598  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057D59C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057D5A0  7C 08 03 A6 */	mtlr r0
/* 8057D5A4  38 21 00 10 */	addi r1, r1, 0x10
/* 8057D5A8  4E 80 00 20 */	blr 
