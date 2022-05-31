lbl_8037C5A4:
/* 8037C5A4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8037C5A8  7C 08 02 A6 */	mflr r0
/* 8037C5AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8037C5B0  39 61 00 20 */	addi r11, r1, 0x20
/* 8037C5B4  4B D1 E9 21 */	bl func_8009AED4
/* 8037C5B8  3C C0 81 13 */	lis r6, data_811351C0@ha /* 0x811351C0@ha */
/* 8037C5BC  7C 9D 23 78 */	mr r29, r4
/* 8037C5C0  38 86 51 C0 */	addi r4, r6, data_811351C0@l /* 0x811351C0@l */
/* 8037C5C4  7C 60 1B 78 */	mr r0, r3
/* 8037C5C8  3B E4 01 64 */	addi r31, r4, 0x164
/* 8037C5CC  7C BE 2B 78 */	mr r30, r5
/* 8037C5D0  7F E3 FB 78 */	mr r3, r31
/* 8037C5D4  7C 05 03 78 */	mr r5, r0
/* 8037C5D8  38 80 00 0A */	li r4, 0xa
/* 8037C5DC  38 C0 00 00 */	li r6, 0
/* 8037C5E0  38 E0 00 00 */	li r7, 0
/* 8037C5E4  4B FF E2 D9 */	bl mBGMPsComp_search_pos_kategorie_bgm_num
/* 8037C5E8  2C 03 00 00 */	cmpwi r3, 0
/* 8037C5EC  41 80 00 50 */	blt lbl_8037C63C
/* 8037C5F0  1C 03 00 14 */	mulli r0, r3, 0x14
/* 8037C5F4  2C 1D 00 00 */	cmpwi r29, 0
/* 8037C5F8  7C 7F 02 14 */	add r3, r31, r0
/* 8037C5FC  41 82 00 10 */	beq lbl_8037C60C
/* 8037C600  A0 03 00 0E */	lhz r0, 0xe(r3)
/* 8037C604  60 00 00 10 */	ori r0, r0, 0x10
/* 8037C608  B0 03 00 0E */	sth r0, 0xe(r3)
lbl_8037C60C:
/* 8037C60C  2C 1E 00 00 */	cmpwi r30, 0
/* 8037C610  41 82 00 14 */	beq lbl_8037C624
/* 8037C614  A0 03 00 0E */	lhz r0, 0xe(r3)
/* 8037C618  60 00 00 20 */	ori r0, r0, 0x20
/* 8037C61C  B0 03 00 0E */	sth r0, 0xe(r3)
/* 8037C620  48 00 00 10 */	b lbl_8037C630
lbl_8037C624:
/* 8037C624  A0 03 00 0E */	lhz r0, 0xe(r3)
/* 8037C628  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 8037C62C  B0 03 00 0E */	sth r0, 0xe(r3)
lbl_8037C630:
/* 8037C630  A0 03 00 0E */	lhz r0, 0xe(r3)
/* 8037C634  60 00 00 02 */	ori r0, r0, 2
/* 8037C638  B0 03 00 0E */	sth r0, 0xe(r3)
lbl_8037C63C:
/* 8037C63C  39 61 00 20 */	addi r11, r1, 0x20
/* 8037C640  4B D1 E8 E1 */	bl func_8009AF20
/* 8037C644  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8037C648  7C 08 03 A6 */	mtlr r0
/* 8037C64C  38 21 00 20 */	addi r1, r1, 0x20
/* 8037C650  4E 80 00 20 */	blr 
