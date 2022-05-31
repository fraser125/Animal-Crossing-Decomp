lbl_80522EA8:
/* 80522EA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80522EAC  7C 08 02 A6 */	mflr r0
/* 80522EB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80522EB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80522EB8  7C 9F 23 78 */	mr r31, r4
/* 80522EBC  93 C1 00 08 */	stw r30, 8(r1)
/* 80522EC0  7C 7E 1B 78 */	mr r30, r3
/* 80522EC4  7F E3 FB 78 */	mr r3, r31
/* 80522EC8  4B EB 67 A9 */	bl mPlib_get_player_actor_main_index
/* 80522ECC  2C 03 00 65 */	cmpwi r3, 0x65
/* 80522ED0  40 82 00 14 */	bne lbl_80522EE4
/* 80522ED4  7F C3 F3 78 */	mr r3, r30
/* 80522ED8  38 80 00 09 */	li r4, 9
/* 80522EDC  48 00 03 05 */	bl aEPK_change_talk_proc
/* 80522EE0  48 00 00 18 */	b lbl_80522EF8
lbl_80522EE4:
/* 80522EE4  7F E3 FB 78 */	mr r3, r31
/* 80522EE8  38 80 24 11 */	li r4, 0x2411
/* 80522EEC  38 A0 00 11 */	li r5, 0x11
/* 80522EF0  38 C0 00 00 */	li r6, 0
/* 80522EF4  4B EB 7D 75 */	bl mPlib_request_main_change_cloth_forNPC_type1
lbl_80522EF8:
/* 80522EF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80522EFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80522F00  83 C1 00 08 */	lwz r30, 8(r1)
/* 80522F04  7C 08 03 A6 */	mtlr r0
/* 80522F08  38 21 00 10 */	addi r1, r1, 0x10
/* 80522F0C  4E 80 00 20 */	blr 
