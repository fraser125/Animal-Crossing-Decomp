lbl_803DB678:
/* 803DB678  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DB67C  7C 08 02 A6 */	mflr r0
/* 803DB680  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803DB684  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803DB688  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DB68C  3C 63 00 03 */	addis r3, r3, 3
/* 803DB690  88 03 85 BE */	lbz r0, -0x7a42(r3)
/* 803DB694  7C 00 07 75 */	extsb. r0, r0
/* 803DB698  40 82 00 0C */	bne lbl_803DB6A4
/* 803DB69C  38 60 00 00 */	li r3, 0
/* 803DB6A0  48 00 00 34 */	b lbl_803DB6D4
lbl_803DB6A4:
/* 803DB6A4  4B FF DF A5 */	bl mPlib_check_DynamicLinkFile_m_player
/* 803DB6A8  2C 03 00 00 */	cmpwi r3, 0
/* 803DB6AC  40 82 00 0C */	bne lbl_803DB6B8
/* 803DB6B0  38 60 00 00 */	li r3, 0
/* 803DB6B4  48 00 00 20 */	b lbl_803DB6D4
lbl_803DB6B8:
/* 803DB6B8  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 803DB6BC  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 803DB6C0  80 63 00 00 */	lwz r3, 0(r3)
/* 803DB6C4  4B FF DF 7D */	bl get_player_actor_withoutCheck
/* 803DB6C8  81 83 13 84 */	lwz r12, 0x1384(r3)
/* 803DB6CC  7D 89 03 A6 */	mtctr r12
/* 803DB6D0  4E 80 04 21 */	bctrl 
lbl_803DB6D4:
/* 803DB6D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DB6D8  7C 08 03 A6 */	mtlr r0
/* 803DB6DC  38 21 00 10 */	addi r1, r1, 0x10
/* 803DB6E0  4E 80 00 20 */	blr 
