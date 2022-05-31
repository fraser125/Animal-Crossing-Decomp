lbl_80540DA0:
/* 80540DA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80540DA4  7C 08 02 A6 */	mflr r0
/* 80540DA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80540DAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80540DB0  7C 9F 23 78 */	mr r31, r4
/* 80540DB4  93 C1 00 08 */	stw r30, 8(r1)
/* 80540DB8  7C 7E 1B 78 */	mr r30, r3
/* 80540DBC  81 83 09 6C */	lwz r12, 0x96c(r3)
/* 80540DC0  7D 89 03 A6 */	mtctr r12
/* 80540DC4  4E 80 04 21 */	bctrl 
/* 80540DC8  2C 03 00 01 */	cmpwi r3, 1
/* 80540DCC  40 82 00 18 */	bne lbl_80540DE4
/* 80540DD0  7F C3 F3 78 */	mr r3, r30
/* 80540DD4  4B FF C5 A1 */	bl aNPC_setup_talk_end
/* 80540DD8  38 00 00 FF */	li r0, 0xff
/* 80540DDC  98 1E 07 F6 */	stb r0, 0x7f6(r30)
/* 80540DE0  48 00 00 28 */	b lbl_80540E08
lbl_80540DE4:
/* 80540DE4  88 1E 07 F6 */	lbz r0, 0x7f6(r30)
/* 80540DE8  3C 60 80 6A */	lis r3, act_proc_2468@ha /* 0x806A3CF0@ha */
/* 80540DEC  38 A3 3C F0 */	addi r5, r3, act_proc_2468@l /* 0x806A3CF0@l */
/* 80540DF0  7F C3 F3 78 */	mr r3, r30
/* 80540DF4  54 00 10 3A */	slwi r0, r0, 2
/* 80540DF8  7F E4 FB 78 */	mr r4, r31
/* 80540DFC  7D 85 00 2E */	lwzx r12, r5, r0
/* 80540E00  7D 89 03 A6 */	mtctr r12
/* 80540E04  4E 80 04 21 */	bctrl 
lbl_80540E08:
/* 80540E08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80540E0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80540E10  83 C1 00 08 */	lwz r30, 8(r1)
/* 80540E14  7C 08 03 A6 */	mtlr r0
/* 80540E18  38 21 00 10 */	addi r1, r1, 0x10
/* 80540E1C  4E 80 00 20 */	blr 
