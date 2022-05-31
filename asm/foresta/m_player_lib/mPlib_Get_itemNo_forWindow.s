lbl_803DE0BC:
/* 803DE0BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803DE0C0  7C 08 02 A6 */	mflr r0
/* 803DE0C4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803DE0C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803DE0CC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803DE0D0  3C 63 00 03 */	addis r3, r3, 3
/* 803DE0D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803DE0D8  88 03 85 BE */	lbz r0, -0x7a42(r3)
/* 803DE0DC  7C 00 07 75 */	extsb. r0, r0
/* 803DE0E0  40 82 00 0C */	bne lbl_803DE0EC
/* 803DE0E4  38 60 00 00 */	li r3, 0
/* 803DE0E8  48 00 00 4C */	b lbl_803DE134
lbl_803DE0EC:
/* 803DE0EC  48 01 13 6D */	bl SubmenuArea_IsPlayer
/* 803DE0F0  2C 03 00 00 */	cmpwi r3, 0
/* 803DE0F4  40 82 00 0C */	bne lbl_803DE100
/* 803DE0F8  38 60 00 00 */	li r3, 0
/* 803DE0FC  48 00 00 38 */	b lbl_803DE134
lbl_803DE100:
/* 803DE100  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 803DE104  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 803DE108  80 63 00 00 */	lwz r3, 0(r3)
/* 803DE10C  4B FF B5 35 */	bl get_player_actor_withoutCheck
/* 803DE110  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 803DE114  7C 7F 1B 78 */	mr r31, r3
/* 803DE118  38 64 52 F0 */	addi r3, r4, data_811C52F0@l /* 0x811C52F0@l */
/* 803DE11C  80 63 00 00 */	lwz r3, 0(r3)
/* 803DE120  4B FF B5 21 */	bl get_player_actor_withoutCheck
/* 803DE124  81 83 13 7C */	lwz r12, 0x137c(r3)
/* 803DE128  7F E3 FB 78 */	mr r3, r31
/* 803DE12C  7D 89 03 A6 */	mtctr r12
/* 803DE130  4E 80 04 21 */	bctrl 
lbl_803DE134:
/* 803DE134  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803DE138  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803DE13C  7C 08 03 A6 */	mtlr r0
/* 803DE140  38 21 00 10 */	addi r1, r1, 0x10
/* 803DE144  4E 80 00 20 */	blr 
