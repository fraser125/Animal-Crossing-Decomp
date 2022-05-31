lbl_803DE1AC:
/* 803DE1AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DE1B0  7C 08 02 A6 */	mflr r0
/* 803DE1B4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803DE1B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DE1BC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803DE1C0  3C 63 00 03 */	addis r3, r3, 3
/* 803DE1C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803DE1C8  88 03 85 BE */	lbz r0, -0x7a42(r3)
/* 803DE1CC  7C 00 07 75 */	extsb. r0, r0
/* 803DE1D0  40 82 00 0C */	bne lbl_803DE1DC
/* 803DE1D4  38 60 00 00 */	li r3, 0
/* 803DE1D8  48 00 00 4C */	b lbl_803DE224
lbl_803DE1DC:
/* 803DE1DC  48 01 12 7D */	bl SubmenuArea_IsPlayer
/* 803DE1E0  2C 03 00 00 */	cmpwi r3, 0
/* 803DE1E4  40 82 00 0C */	bne lbl_803DE1F0
/* 803DE1E8  38 60 00 00 */	li r3, 0
/* 803DE1EC  48 00 00 38 */	b lbl_803DE224
lbl_803DE1F0:
/* 803DE1F0  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 803DE1F4  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 803DE1F8  80 63 00 00 */	lwz r3, 0(r3)
/* 803DE1FC  4B FF B4 45 */	bl get_player_actor_withoutCheck
/* 803DE200  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 803DE204  7C 7F 1B 78 */	mr r31, r3
/* 803DE208  38 64 52 F0 */	addi r3, r4, data_811C52F0@l /* 0x811C52F0@l */
/* 803DE20C  80 63 00 00 */	lwz r3, 0(r3)
/* 803DE210  4B FF B4 31 */	bl get_player_actor_withoutCheck
/* 803DE214  81 83 13 28 */	lwz r12, 0x1328(r3)
/* 803DE218  7F E3 FB 78 */	mr r3, r31
/* 803DE21C  7D 89 03 A6 */	mtctr r12
/* 803DE220  4E 80 04 21 */	bctrl 
lbl_803DE224:
/* 803DE224  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DE228  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803DE22C  7C 08 03 A6 */	mtlr r0
/* 803DE230  38 21 00 10 */	addi r1, r1, 0x10
/* 803DE234  4E 80 00 20 */	blr 
