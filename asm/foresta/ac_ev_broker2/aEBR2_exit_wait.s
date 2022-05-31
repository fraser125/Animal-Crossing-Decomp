lbl_8051BA34:
/* 8051BA34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051BA38  7C 08 02 A6 */	mflr r0
/* 8051BA3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051BA40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8051BA44  7C 9F 23 78 */	mr r31, r4
/* 8051BA48  4B EA 3C 61 */	bl func_803BF6A8
/* 8051BA4C  4B EA 3C F5 */	bl mMsg_Check_main_wait
/* 8051BA50  2C 03 00 01 */	cmpwi r3, 1
/* 8051BA54  40 82 00 40 */	bne lbl_8051BA94
/* 8051BA58  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8051BA5C  7F E3 FB 78 */	mr r3, r31
/* 8051BA60  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8051BA64  38 A0 00 01 */	li r5, 1
/* 8051BA68  3C 84 00 03 */	addis r4, r4, 3
/* 8051BA6C  38 84 85 44 */	addi r4, r4, -31420
/* 8051BA70  4B ED 57 39 */	bl goto_other_scene
/* 8051BA74  88 1F 20 D3 */	lbz r0, 0x20d3(r31)
/* 8051BA78  28 00 00 00 */	cmplwi r0, 0
/* 8051BA7C  40 82 00 18 */	bne lbl_8051BA94
/* 8051BA80  38 60 00 0E */	li r3, 0xe
/* 8051BA84  4B E6 0D 9D */	bl mBGMPsComp_scene_mode
/* 8051BA88  38 60 01 95 */	li r3, 0x195
/* 8051BA8C  4B E6 00 81 */	bl mBGMPsComp_make_ps_wipe
/* 8051BA90  4B E6 0C C1 */	bl mBGMPsComp_volume_talk_end
lbl_8051BA94:
/* 8051BA94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051BA98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8051BA9C  7C 08 03 A6 */	mtlr r0
/* 8051BAA0  38 21 00 10 */	addi r1, r1, 0x10
/* 8051BAA4  4E 80 00 20 */	blr 
