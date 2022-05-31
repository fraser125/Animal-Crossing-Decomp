lbl_8050860C:
/* 8050860C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80508610  7C 08 02 A6 */	mflr r0
/* 80508614  90 01 00 14 */	stw r0, 0x14(r1)
/* 80508618  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8050861C  83 E3 0D 20 */	lwz r31, 0xd20(r3)
/* 80508620  2C 1F 00 00 */	cmpwi r31, 0
/* 80508624  41 80 00 44 */	blt lbl_80508668
/* 80508628  2C 1F 00 04 */	cmpwi r31, 4
/* 8050862C  40 80 00 3C */	bge lbl_80508668
/* 80508630  7F E3 FB 78 */	mr r3, r31
/* 80508634  4B FD 74 05 */	bl Player_actor_sound_Get_bgm_num_forDemoGetGoldenItem
/* 80508638  38 80 01 68 */	li r4, 0x168
/* 8050863C  4B E7 3B F5 */	bl mBGMPsComp_delete_ps_fanfare
/* 80508640  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80508644  3C 60 80 6A */	lis r3, data_16870@ha /* 0x8069E814@ha */
/* 80508648  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8050864C  3C 84 00 02 */	addis r4, r4, 2
/* 80508650  38 63 E8 14 */	addi r3, r3, data_16870@l /* 0x8069E814@l */
/* 80508654  80 84 61 3C */	lwz r4, 0x613c(r4)
/* 80508658  7C 03 F8 AE */	lbzx r0, r3, r31
/* 8050865C  88 64 23 DA */	lbz r3, 0x23da(r4)
/* 80508660  7C 60 03 78 */	or r0, r3, r0
/* 80508664  98 04 23 DA */	stb r0, 0x23da(r4)
lbl_80508668:
/* 80508668  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8050866C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80508670  7C 08 03 A6 */	mtlr r0
/* 80508674  38 21 00 10 */	addi r1, r1, 0x10
/* 80508678  4E 80 00 20 */	blr 
