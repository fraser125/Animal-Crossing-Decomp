lbl_803DDE9C:
/* 803DDE9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DDEA0  7C 08 02 A6 */	mflr r0
/* 803DDEA4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803DDEA8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803DDEAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DDEB0  3C 63 00 03 */	addis r3, r3, 3
/* 803DDEB4  88 03 85 BE */	lbz r0, -0x7a42(r3)
/* 803DDEB8  7C 00 07 75 */	extsb. r0, r0
/* 803DDEBC  41 82 00 4C */	beq lbl_803DDF08
/* 803DDEC0  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 803DDEC4  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 803DDEC8  80 63 00 00 */	lwz r3, 0(r3)
/* 803DDECC  4B FF B7 75 */	bl get_player_actor_withoutCheck
/* 803DDED0  80 83 0C F8 */	lwz r4, 0xcf8(r3)
/* 803DDED4  38 00 00 00 */	li r0, 0
/* 803DDED8  2C 04 00 00 */	cmpwi r4, 0
/* 803DDEDC  41 80 00 10 */	blt lbl_803DDEEC
/* 803DDEE0  2C 04 00 79 */	cmpwi r4, 0x79
/* 803DDEE4  40 80 00 08 */	bge lbl_803DDEEC
/* 803DDEE8  38 00 00 01 */	li r0, 1
lbl_803DDEEC:
/* 803DDEEC  2C 00 00 00 */	cmpwi r0, 0
/* 803DDEF0  41 82 00 18 */	beq lbl_803DDF08
/* 803DDEF4  3C 60 80 64 */	lis r3, data_2218@ha /* 0x8064305C@ha */
/* 803DDEF8  38 63 30 5C */	addi r3, r3, data_2218@l /* 0x8064305C@l */
/* 803DDEFC  7C 63 20 AE */	lbzx r3, r3, r4
/* 803DDF00  7C 63 07 74 */	extsb r3, r3
/* 803DDF04  48 00 00 08 */	b lbl_803DDF0C
lbl_803DDF08:
/* 803DDF08  38 60 00 00 */	li r3, 0
lbl_803DDF0C:
/* 803DDF0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DDF10  7C 08 03 A6 */	mtlr r0
/* 803DDF14  38 21 00 10 */	addi r1, r1, 0x10
/* 803DDF18  4E 80 00 20 */	blr 
