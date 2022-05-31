lbl_80551DA4:
/* 80551DA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80551DA8  7C 08 02 A6 */	mflr r0
/* 80551DAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80551DB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80551DB4  7C 9F 23 78 */	mr r31, r4
/* 80551DB8  4B E6 D8 F1 */	bl func_803BF6A8
/* 80551DBC  4B E6 D9 85 */	bl mMsg_Check_main_wait
/* 80551DC0  2C 03 00 01 */	cmpwi r3, 1
/* 80551DC4  40 82 00 40 */	bne lbl_80551E04
/* 80551DC8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80551DCC  7F E3 FB 78 */	mr r3, r31
/* 80551DD0  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80551DD4  38 A0 00 01 */	li r5, 1
/* 80551DD8  3C 84 00 03 */	addis r4, r4, 3
/* 80551DDC  38 84 85 44 */	addi r4, r4, -31420
/* 80551DE0  4B E9 F3 C9 */	bl goto_other_scene
/* 80551DE4  88 1F 20 D3 */	lbz r0, 0x20d3(r31)
/* 80551DE8  28 00 00 00 */	cmplwi r0, 0
/* 80551DEC  40 82 00 18 */	bne lbl_80551E04
/* 80551DF0  38 60 00 0E */	li r3, 0xe
/* 80551DF4  4B E2 AA 2D */	bl mBGMPsComp_scene_mode
/* 80551DF8  4B E2 A9 59 */	bl mBGMPsComp_volume_talk_end
/* 80551DFC  38 60 01 95 */	li r3, 0x195
/* 80551E00  4B E2 9D 0D */	bl mBGMPsComp_make_ps_wipe
lbl_80551E04:
/* 80551E04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80551E08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80551E0C  7C 08 03 A6 */	mtlr r0
/* 80551E10  38 21 00 10 */	addi r1, r1, 0x10
/* 80551E14  4E 80 00 20 */	blr 
