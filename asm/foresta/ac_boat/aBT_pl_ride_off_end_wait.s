lbl_805A81A4:
/* 805A81A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A81A8  7C 08 02 A6 */	mflr r0
/* 805A81AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A81B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A81B4  7C 9F 23 78 */	mr r31, r4
/* 805A81B8  93 C1 00 08 */	stw r30, 8(r1)
/* 805A81BC  7C 7E 1B 78 */	mr r30, r3
/* 805A81C0  7F E3 FB 78 */	mr r3, r31
/* 805A81C4  4B E3 14 AD */	bl mPlib_get_player_actor_main_index
/* 805A81C8  2C 03 00 4A */	cmpwi r3, 0x4a
/* 805A81CC  40 82 00 14 */	bne lbl_805A81E0
/* 805A81D0  7F C3 F3 78 */	mr r3, r30
/* 805A81D4  7F E4 FB 78 */	mr r4, r31
/* 805A81D8  38 A0 00 0E */	li r5, 0xe
/* 805A81DC  48 00 01 71 */	bl aBT_setupAction
lbl_805A81E0:
/* 805A81E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A81E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A81E8  83 C1 00 08 */	lwz r30, 8(r1)
/* 805A81EC  7C 08 03 A6 */	mtlr r0
/* 805A81F0  38 21 00 10 */	addi r1, r1, 0x10
/* 805A81F4  4E 80 00 20 */	blr 
