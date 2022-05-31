lbl_8050D554:
/* 8050D554  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8050D558  7C 08 02 A6 */	mflr r0
/* 8050D55C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8050D560  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8050D564  7C 9F 23 78 */	mr r31, r4
/* 8050D568  93 C1 00 08 */	stw r30, 8(r1)
/* 8050D56C  7C 7E 1B 78 */	mr r30, r3
/* 8050D570  4B FF FA 09 */	bl aBEE_calc_fly_angle
/* 8050D574  A8 1E 00 DC */	lha r0, 0xdc(r30)
/* 8050D578  2C 00 10 00 */	cmpwi r0, 0x1000
/* 8050D57C  41 81 00 48 */	bgt lbl_8050D5C4
/* 8050D580  7F E3 FB 78 */	mr r3, r31
/* 8050D584  4B EC C0 ED */	bl mPlib_get_player_actor_main_index
/* 8050D588  2C 03 00 60 */	cmpwi r3, 0x60
/* 8050D58C  40 82 00 24 */	bne lbl_8050D5B0
/* 8050D590  4B ED 05 29 */	bl mPlib_Check_end_stung_bee
/* 8050D594  2C 03 00 00 */	cmpwi r3, 0
/* 8050D598  41 82 00 20 */	beq lbl_8050D5B8
/* 8050D59C  7F C3 F3 78 */	mr r3, r30
/* 8050D5A0  7F E5 FB 78 */	mr r5, r31
/* 8050D5A4  38 80 00 05 */	li r4, 5
/* 8050D5A8  48 00 01 19 */	bl aBEE_setupAction
/* 8050D5AC  48 00 00 18 */	b lbl_8050D5C4
lbl_8050D5B0:
/* 8050D5B0  7F E3 FB 78 */	mr r3, r31
/* 8050D5B4  4B EC D4 4D */	bl mPlib_request_main_stung_bee_type1
lbl_8050D5B8:
/* 8050D5B8  7F C3 F3 78 */	mr r3, r30
/* 8050D5BC  7F E4 FB 78 */	mr r4, r31
/* 8050D5C0  4B FF F4 C5 */	bl aBEE_fly_move_common
lbl_8050D5C4:
/* 8050D5C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8050D5C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8050D5CC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8050D5D0  7C 08 03 A6 */	mtlr r0
/* 8050D5D4  38 21 00 10 */	addi r1, r1, 0x10
/* 8050D5D8  4E 80 00 20 */	blr 
