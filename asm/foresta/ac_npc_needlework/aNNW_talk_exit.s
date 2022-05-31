lbl_8056371C:
/* 8056371C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80563720  7C 08 02 A6 */	mflr r0
/* 80563724  90 01 00 14 */	stw r0, 0x14(r1)
/* 80563728  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8056372C  7C 9F 23 78 */	mr r31, r4
/* 80563730  4B E5 BF 79 */	bl func_803BF6A8
/* 80563734  4B E5 C0 0D */	bl mMsg_Check_main_wait
/* 80563738  2C 03 00 01 */	cmpwi r3, 1
/* 8056373C  40 82 00 40 */	bne lbl_8056377C
/* 80563740  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80563744  7F E3 FB 78 */	mr r3, r31
/* 80563748  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8056374C  38 A0 00 01 */	li r5, 1
/* 80563750  3C 84 00 03 */	addis r4, r4, 3
/* 80563754  38 84 85 44 */	addi r4, r4, -31420
/* 80563758  4B E8 DA 51 */	bl goto_other_scene
/* 8056375C  88 1F 20 D3 */	lbz r0, 0x20d3(r31)
/* 80563760  28 00 00 00 */	cmplwi r0, 0
/* 80563764  40 82 00 18 */	bne lbl_8056377C
/* 80563768  38 60 00 0E */	li r3, 0xe
/* 8056376C  4B E1 90 B5 */	bl mBGMPsComp_scene_mode
/* 80563770  4B E1 8F E1 */	bl mBGMPsComp_volume_talk_end
/* 80563774  38 60 01 95 */	li r3, 0x195
/* 80563778  4B E1 83 95 */	bl mBGMPsComp_make_ps_wipe
lbl_8056377C:
/* 8056377C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80563780  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80563784  7C 08 03 A6 */	mtlr r0
/* 80563788  38 21 00 10 */	addi r1, r1, 0x10
/* 8056378C  4E 80 00 20 */	blr 
