lbl_8057DEEC:
/* 8057DEEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057DEF0  7C 08 02 A6 */	mflr r0
/* 8057DEF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057DEF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057DEFC  7C 9F 23 78 */	mr r31, r4
/* 8057DF00  93 C1 00 08 */	stw r30, 8(r1)
/* 8057DF04  7C 7E 1B 78 */	mr r30, r3
/* 8057DF08  7F E3 FB 78 */	mr r3, r31
/* 8057DF0C  4B E5 B7 65 */	bl mPlib_get_player_actor_main_index
/* 8057DF10  2C 03 00 4A */	cmpwi r3, 0x4a
/* 8057DF14  40 82 00 10 */	bne lbl_8057DF24
/* 8057DF18  7F E3 FB 78 */	mr r3, r31
/* 8057DF1C  4B E5 C2 B5 */	bl mPlib_request_main_wait_type3
/* 8057DF20  48 00 00 14 */	b lbl_8057DF34
lbl_8057DF24:
/* 8057DF24  7F C3 F3 78 */	mr r3, r30
/* 8057DF28  7F E4 FB 78 */	mr r4, r31
/* 8057DF2C  38 A0 00 03 */	li r5, 3
/* 8057DF30  48 00 03 11 */	bl aSHM_setup_think_proc
lbl_8057DF34:
/* 8057DF34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057DF38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057DF3C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8057DF40  7C 08 03 A6 */	mtlr r0
/* 8057DF44  38 21 00 10 */	addi r1, r1, 0x10
/* 8057DF48  4E 80 00 20 */	blr 
