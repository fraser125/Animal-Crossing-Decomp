lbl_8056F98C:
/* 8056F98C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056F990  7C 08 02 A6 */	mflr r0
/* 8056F994  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056F998  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8056F99C  7C 9F 23 78 */	mr r31, r4
/* 8056F9A0  93 C1 00 08 */	stw r30, 8(r1)
/* 8056F9A4  7C 7E 1B 78 */	mr r30, r3
/* 8056F9A8  7F E3 FB 78 */	mr r3, r31
/* 8056F9AC  4B E6 EA 75 */	bl mPlib_check_player_actor_main_index_OutDoorMove2
/* 8056F9B0  2C 03 00 00 */	cmpwi r3, 0
/* 8056F9B4  40 82 00 2C */	bne lbl_8056F9E0
/* 8056F9B8  A8 1E 00 24 */	lha r0, 0x24(r30)
/* 8056F9BC  2C 00 00 01 */	cmpwi r0, 1
/* 8056F9C0  41 82 00 08 */	beq lbl_8056F9C8
/* 8056F9C4  48 00 00 0C */	b lbl_8056F9D0
lbl_8056F9C8:
/* 8056F9C8  38 A0 00 0D */	li r5, 0xd
/* 8056F9CC  48 00 00 08 */	b lbl_8056F9D4
lbl_8056F9D0:
/* 8056F9D0  38 A0 00 0C */	li r5, 0xc
lbl_8056F9D4:
/* 8056F9D4  7F C3 F3 78 */	mr r3, r30
/* 8056F9D8  7F E4 FB 78 */	mr r4, r31
/* 8056F9DC  48 00 03 9D */	bl aNRG_setup_think_proc
lbl_8056F9E0:
/* 8056F9E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056F9E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8056F9E8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8056F9EC  7C 08 03 A6 */	mtlr r0
/* 8056F9F0  38 21 00 10 */	addi r1, r1, 0x10
/* 8056F9F4  4E 80 00 20 */	blr 
