lbl_80585530:
/* 80585530  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80585534  7C 08 02 A6 */	mflr r0
/* 80585538  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058553C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80585540  7C 9F 23 78 */	mr r31, r4
/* 80585544  4B E3 A1 65 */	bl func_803BF6A8
/* 80585548  4B E3 A1 F9 */	bl mMsg_Check_main_wait
/* 8058554C  2C 03 00 01 */	cmpwi r3, 1
/* 80585550  40 82 00 40 */	bne lbl_80585590
/* 80585554  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80585558  7F E3 FB 78 */	mr r3, r31
/* 8058555C  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80585560  38 A0 00 01 */	li r5, 1
/* 80585564  3C 84 00 03 */	addis r4, r4, 3
/* 80585568  38 84 85 44 */	addi r4, r4, -31420
/* 8058556C  4B E6 BC 3D */	bl goto_other_scene
/* 80585570  88 1F 20 D3 */	lbz r0, 0x20d3(r31)
/* 80585574  28 00 00 00 */	cmplwi r0, 0
/* 80585578  40 82 00 18 */	bne lbl_80585590
/* 8058557C  38 60 00 0E */	li r3, 0xe
/* 80585580  4B DF 72 A1 */	bl mBGMPsComp_scene_mode
/* 80585584  4B DF 71 CD */	bl mBGMPsComp_volume_talk_end
/* 80585588  38 60 01 95 */	li r3, 0x195
/* 8058558C  4B DF 65 81 */	bl mBGMPsComp_make_ps_wipe
lbl_80585590:
/* 80585590  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80585594  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80585598  7C 08 03 A6 */	mtlr r0
/* 8058559C  38 21 00 10 */	addi r1, r1, 0x10
/* 805855A0  4E 80 00 20 */	blr 
