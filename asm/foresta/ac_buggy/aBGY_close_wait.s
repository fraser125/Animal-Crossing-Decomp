lbl_805AA2A4:
/* 805AA2A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805AA2A8  7C 08 02 A6 */	mflr r0
/* 805AA2AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805AA2B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805AA2B4  7C 7F 1B 78 */	mr r31, r3
/* 805AA2B8  38 60 00 07 */	li r3, 7
/* 805AA2BC  93 C1 00 08 */	stw r30, 8(r1)
/* 805AA2C0  7C 9E 23 78 */	mr r30, r4
/* 805AA2C4  7F E4 FB 78 */	mr r4, r31
/* 805AA2C8  4B DE FF 9D */	bl mDemo_Check
/* 805AA2CC  2C 03 00 01 */	cmpwi r3, 1
/* 805AA2D0  41 82 00 64 */	beq lbl_805AA334
/* 805AA2D4  4B FF FF 49 */	bl aBGY_open_check
/* 805AA2D8  2C 03 00 02 */	cmpwi r3, 2
/* 805AA2DC  40 82 00 28 */	bne lbl_805AA304
/* 805AA2E0  7F E3 FB 78 */	mr r3, r31
/* 805AA2E4  7F C4 F3 78 */	mr r4, r30
/* 805AA2E8  4B FF FE 79 */	bl aBGY_check_player
/* 805AA2EC  2C 03 00 00 */	cmpwi r3, 0
/* 805AA2F0  41 82 00 44 */	beq lbl_805AA334
/* 805AA2F4  7F E3 FB 78 */	mr r3, r31
/* 805AA2F8  38 80 00 03 */	li r4, 3
/* 805AA2FC  48 00 01 DD */	bl aBGY_setup_action
/* 805AA300  48 00 00 34 */	b lbl_805AA334
lbl_805AA304:
/* 805AA304  A8 7F 00 B6 */	lha r3, 0xb6(r31)
/* 805AA308  7C 60 07 35 */	extsh. r0, r3
/* 805AA30C  7C 03 00 D0 */	neg r0, r3
/* 805AA310  41 80 00 08 */	blt lbl_805AA318
/* 805AA314  7C 60 1B 78 */	mr r0, r3
lbl_805AA318:
/* 805AA318  2C 00 20 00 */	cmpwi r0, 0x2000
/* 805AA31C  40 80 00 18 */	bge lbl_805AA334
/* 805AA320  3C 60 80 5B */	lis r3, aBGY_set_talk_info_close_wait@ha /* 0x805AA24C@ha */
/* 805AA324  7F E4 FB 78 */	mr r4, r31
/* 805AA328  38 A3 A2 4C */	addi r5, r3, aBGY_set_talk_info_close_wait@l /* 0x805AA24C@l */
/* 805AA32C  38 60 00 07 */	li r3, 7
/* 805AA330  4B DE FE 2D */	bl mDemo_Request
lbl_805AA334:
/* 805AA334  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805AA338  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805AA33C  83 C1 00 08 */	lwz r30, 8(r1)
/* 805AA340  7C 08 03 A6 */	mtlr r0
/* 805AA344  38 21 00 10 */	addi r1, r1, 0x10
/* 805AA348  4E 80 00 20 */	blr 
