lbl_8054A48C:
/* 8054A48C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054A490  7C 08 02 A6 */	mflr r0
/* 8054A494  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054A498  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8054A49C  7C 9F 23 78 */	mr r31, r4
/* 8054A4A0  4B E7 52 09 */	bl func_803BF6A8
/* 8054A4A4  4B E7 52 9D */	bl mMsg_Check_main_wait
/* 8054A4A8  2C 03 00 01 */	cmpwi r3, 1
/* 8054A4AC  40 82 00 40 */	bne lbl_8054A4EC
/* 8054A4B0  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8054A4B4  7F E3 FB 78 */	mr r3, r31
/* 8054A4B8  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8054A4BC  38 A0 00 01 */	li r5, 1
/* 8054A4C0  3C 84 00 03 */	addis r4, r4, 3
/* 8054A4C4  38 84 85 44 */	addi r4, r4, -31420
/* 8054A4C8  4B EA 6C E1 */	bl goto_other_scene
/* 8054A4CC  88 1F 20 D3 */	lbz r0, 0x20d3(r31)
/* 8054A4D0  28 00 00 00 */	cmplwi r0, 0
/* 8054A4D4  40 82 00 18 */	bne lbl_8054A4EC
/* 8054A4D8  38 60 00 0E */	li r3, 0xe
/* 8054A4DC  4B E3 23 45 */	bl mBGMPsComp_scene_mode
/* 8054A4E0  4B E3 22 71 */	bl mBGMPsComp_volume_talk_end
/* 8054A4E4  38 60 01 95 */	li r3, 0x195
/* 8054A4E8  4B E3 16 25 */	bl mBGMPsComp_make_ps_wipe
lbl_8054A4EC:
/* 8054A4EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054A4F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8054A4F4  7C 08 03 A6 */	mtlr r0
/* 8054A4F8  38 21 00 10 */	addi r1, r1, 0x10
/* 8054A4FC  4E 80 00 20 */	blr 
