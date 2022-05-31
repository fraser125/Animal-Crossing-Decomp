lbl_805A7DFC:
/* 805A7DFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A7E00  7C 08 02 A6 */	mflr r0
/* 805A7E04  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A7E08  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A7E0C  7C 9F 23 78 */	mr r31, r4
/* 805A7E10  93 C1 00 08 */	stw r30, 8(r1)
/* 805A7E14  7C 7E 1B 78 */	mr r30, r3
/* 805A7E18  7F E3 FB 78 */	mr r3, r31
/* 805A7E1C  4B E3 18 55 */	bl mPlib_get_player_actor_main_index
/* 805A7E20  2C 03 00 72 */	cmpwi r3, 0x72
/* 805A7E24  40 82 00 14 */	bne lbl_805A7E38
/* 805A7E28  7F C3 F3 78 */	mr r3, r30
/* 805A7E2C  7F E4 FB 78 */	mr r4, r31
/* 805A7E30  38 A0 00 07 */	li r5, 7
/* 805A7E34  48 00 05 19 */	bl aBT_setupAction
lbl_805A7E38:
/* 805A7E38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A7E3C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A7E40  83 C1 00 08 */	lwz r30, 8(r1)
/* 805A7E44  7C 08 03 A6 */	mtlr r0
/* 805A7E48  38 21 00 10 */	addi r1, r1, 0x10
/* 805A7E4C  4E 80 00 20 */	blr 
