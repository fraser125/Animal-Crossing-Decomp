lbl_805350A8:
/* 805350A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805350AC  7C 08 02 A6 */	mflr r0
/* 805350B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805350B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805350B8  7C 9F 23 78 */	mr r31, r4
/* 805350BC  93 C1 00 08 */	stw r30, 8(r1)
/* 805350C0  7C 7E 1B 78 */	mr r30, r3
/* 805350C4  7F E3 FB 78 */	mr r3, r31
/* 805350C8  4B EA 94 59 */	bl mPlib_check_player_actor_main_index_catch_insect
/* 805350CC  2C 03 00 00 */	cmpwi r3, 0
/* 805350D0  40 82 00 1C */	bne lbl_805350EC
/* 805350D4  7F E3 FB 78 */	mr r3, r31
/* 805350D8  4B EA 94 D1 */	bl mPlib_check_player_actor_main_index_catch_fish
/* 805350DC  2C 03 00 00 */	cmpwi r3, 0
/* 805350E0  40 82 00 0C */	bne lbl_805350EC
/* 805350E4  38 00 00 FF */	li r0, 0xff
/* 805350E8  98 1E 07 F6 */	stb r0, 0x7f6(r30)
lbl_805350EC:
/* 805350EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805350F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805350F4  83 C1 00 08 */	lwz r30, 8(r1)
/* 805350F8  7C 08 03 A6 */	mtlr r0
/* 805350FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80535100  4E 80 00 20 */	blr 
