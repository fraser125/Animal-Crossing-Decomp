lbl_805732EC:
/* 805732EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805732F0  7C 08 02 A6 */	mflr r0
/* 805732F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805732F8  38 00 00 03 */	li r0, 3
/* 805732FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80573300  7C 9F 23 78 */	mr r31, r4
/* 80573304  93 C1 00 08 */	stw r30, 8(r1)
/* 80573308  7C 7E 1B 78 */	mr r30, r3
/* 8057330C  7F E3 FB 78 */	mr r3, r31
/* 80573310  98 04 20 D1 */	stb r0, 0x20d1(r4)
/* 80573314  38 00 00 04 */	li r0, 4
/* 80573318  98 04 20 D0 */	stb r0, 0x20d0(r4)
/* 8057331C  4B E6 6E 35 */	bl mPlib_request_main_invade_type1
/* 80573320  7F E3 FB 78 */	mr r3, r31
/* 80573324  4B E0 27 F9 */	bl Actor_info_save_actor
/* 80573328  38 00 00 05 */	li r0, 5
/* 8057332C  90 1E 09 A8 */	stw r0, 0x9a8(r30)
/* 80573330  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80573334  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80573338  83 C1 00 08 */	lwz r30, 8(r1)
/* 8057333C  7C 08 03 A6 */	mtlr r0
/* 80573340  38 21 00 10 */	addi r1, r1, 0x10
/* 80573344  4E 80 00 20 */	blr 
