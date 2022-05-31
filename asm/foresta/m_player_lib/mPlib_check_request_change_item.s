lbl_803DB5E4:
/* 803DB5E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DB5E8  7C 08 02 A6 */	mflr r0
/* 803DB5EC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803DB5F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DB5F4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803DB5F8  3C 63 00 03 */	addis r3, r3, 3
/* 803DB5FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803DB600  88 03 85 BE */	lbz r0, -0x7a42(r3)
/* 803DB604  7C 00 07 75 */	extsb. r0, r0
/* 803DB608  40 82 00 0C */	bne lbl_803DB614
/* 803DB60C  38 60 00 01 */	li r3, 1
/* 803DB610  48 00 00 54 */	b lbl_803DB664
lbl_803DB614:
/* 803DB614  4B FF E0 35 */	bl mPlib_check_DynamicLinkFile_m_player
/* 803DB618  2C 03 00 00 */	cmpwi r3, 0
/* 803DB61C  40 82 00 0C */	bne lbl_803DB628
/* 803DB620  38 60 00 01 */	li r3, 1
/* 803DB624  48 00 00 40 */	b lbl_803DB664
lbl_803DB628:
/* 803DB628  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 803DB62C  83 E3 52 F0 */	lwz r31, data_811C52F0@l(r3)  /* 0x811C52F0@l */
/* 803DB630  7F E3 FB 78 */	mr r3, r31
/* 803DB634  4B FF E0 0D */	bl get_player_actor_withoutCheck
/* 803DB638  81 83 13 50 */	lwz r12, 0x1350(r3)
/* 803DB63C  7F E3 FB 78 */	mr r3, r31
/* 803DB640  7D 89 03 A6 */	mtctr r12
/* 803DB644  4E 80 04 21 */	bctrl 
/* 803DB648  2C 03 00 00 */	cmpwi r3, 0
/* 803DB64C  38 00 00 00 */	li r0, 0
/* 803DB650  41 80 00 10 */	blt lbl_803DB660
/* 803DB654  2C 03 00 79 */	cmpwi r3, 0x79
/* 803DB658  40 80 00 08 */	bge lbl_803DB660
/* 803DB65C  38 00 00 01 */	li r0, 1
lbl_803DB660:
/* 803DB660  7C 03 03 78 */	mr r3, r0
lbl_803DB664:
/* 803DB664  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DB668  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803DB66C  7C 08 03 A6 */	mtlr r0
/* 803DB670  38 21 00 10 */	addi r1, r1, 0x10
/* 803DB674  4E 80 00 20 */	blr 
