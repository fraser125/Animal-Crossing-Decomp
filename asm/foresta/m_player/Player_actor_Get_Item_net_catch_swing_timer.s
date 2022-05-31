lbl_804D7AE4:
/* 804D7AE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D7AE8  7C 08 02 A6 */	mflr r0
/* 804D7AEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D7AF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804D7AF4  7C 7F 1B 78 */	mr r31, r3
/* 804D7AF8  7C 83 23 78 */	mr r3, r4
/* 804D7AFC  4B F0 1B 75 */	bl mPlib_get_player_actor_main_index
/* 804D7B00  2C 03 00 2C */	cmpwi r3, 0x2c
/* 804D7B04  40 82 00 0C */	bne lbl_804D7B10
/* 804D7B08  C0 3F 0D 18 */	lfs f1, 0xd18(r31)
/* 804D7B0C  48 00 00 0C */	b lbl_804D7B18
lbl_804D7B10:
/* 804D7B10  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804D7B14  C0 23 65 68 */	lfs f1, lit_604@l(r3)  /* 0x80646568@l */
lbl_804D7B18:
/* 804D7B18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D7B1C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804D7B20  7C 08 03 A6 */	mtlr r0
/* 804D7B24  38 21 00 10 */	addi r1, r1, 0x10
/* 804D7B28  4E 80 00 20 */	blr 
