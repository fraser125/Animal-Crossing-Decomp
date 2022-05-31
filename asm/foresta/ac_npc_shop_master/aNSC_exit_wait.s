lbl_8057BA24:
/* 8057BA24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057BA28  7C 08 02 A6 */	mflr r0
/* 8057BA2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057BA30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057BA34  7C 9F 23 78 */	mr r31, r4
/* 8057BA38  4B E4 3C 71 */	bl func_803BF6A8
/* 8057BA3C  4B E4 3D 05 */	bl mMsg_Check_main_wait
/* 8057BA40  2C 03 00 01 */	cmpwi r3, 1
/* 8057BA44  40 82 00 40 */	bne lbl_8057BA84
/* 8057BA48  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8057BA4C  7F E3 FB 78 */	mr r3, r31
/* 8057BA50  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8057BA54  38 A0 00 01 */	li r5, 1
/* 8057BA58  3C 84 00 03 */	addis r4, r4, 3
/* 8057BA5C  38 84 85 44 */	addi r4, r4, -31420
/* 8057BA60  4B E7 57 49 */	bl goto_other_scene
/* 8057BA64  88 1F 20 D3 */	lbz r0, 0x20d3(r31)
/* 8057BA68  28 00 00 00 */	cmplwi r0, 0
/* 8057BA6C  40 82 00 18 */	bne lbl_8057BA84
/* 8057BA70  38 60 00 0E */	li r3, 0xe
/* 8057BA74  4B E0 0D AD */	bl mBGMPsComp_scene_mode
/* 8057BA78  4B E0 0C D9 */	bl mBGMPsComp_volume_talk_end
/* 8057BA7C  38 60 01 95 */	li r3, 0x195
/* 8057BA80  4B E0 00 8D */	bl mBGMPsComp_make_ps_wipe
lbl_8057BA84:
/* 8057BA84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057BA88  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057BA8C  7C 08 03 A6 */	mtlr r0
/* 8057BA90  38 21 00 10 */	addi r1, r1, 0x10
/* 8057BA94  4E 80 00 20 */	blr 
