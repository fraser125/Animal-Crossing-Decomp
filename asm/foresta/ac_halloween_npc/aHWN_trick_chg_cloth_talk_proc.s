lbl_80527AB8:
/* 80527AB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80527ABC  7C 08 02 A6 */	mflr r0
/* 80527AC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80527AC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80527AC8  7C 9F 23 78 */	mr r31, r4
/* 80527ACC  93 C1 00 08 */	stw r30, 8(r1)
/* 80527AD0  7C 7E 1B 78 */	mr r30, r3
/* 80527AD4  7F E3 FB 78 */	mr r3, r31
/* 80527AD8  4B EB 1B 99 */	bl mPlib_get_player_actor_main_index
/* 80527ADC  2C 03 00 65 */	cmpwi r3, 0x65
/* 80527AE0  40 82 00 14 */	bne lbl_80527AF4
/* 80527AE4  7F C3 F3 78 */	mr r3, r30
/* 80527AE8  38 80 00 09 */	li r4, 9
/* 80527AEC  48 00 02 09 */	bl aHWN_change_talk_proc
/* 80527AF0  48 00 00 18 */	b lbl_80527B08
lbl_80527AF4:
/* 80527AF4  7F E3 FB 78 */	mr r3, r31
/* 80527AF8  38 80 24 11 */	li r4, 0x2411
/* 80527AFC  38 A0 00 11 */	li r5, 0x11
/* 80527B00  38 C0 00 00 */	li r6, 0
/* 80527B04  4B EB 31 65 */	bl mPlib_request_main_change_cloth_forNPC_type1
lbl_80527B08:
/* 80527B08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80527B0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80527B10  83 C1 00 08 */	lwz r30, 8(r1)
/* 80527B14  7C 08 03 A6 */	mtlr r0
/* 80527B18  38 21 00 10 */	addi r1, r1, 0x10
/* 80527B1C  4E 80 00 20 */	blr 
