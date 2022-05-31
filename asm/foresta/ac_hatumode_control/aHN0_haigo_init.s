lbl_8042A0D0:
/* 8042A0D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042A0D4  7C 08 02 A6 */	mflr r0
/* 8042A0D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042A0DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8042A0E0  7C 9F 23 78 */	mr r31, r4
/* 8042A0E4  38 80 00 07 */	li r4, 7
/* 8042A0E8  93 C1 00 08 */	stw r30, 8(r1)
/* 8042A0EC  7C 7E 1B 78 */	mr r30, r3
/* 8042A0F0  38 60 00 01 */	li r3, 1
/* 8042A0F4  4B F7 3C D9 */	bl mEv_get_save_area
/* 8042A0F8  A8 A3 00 06 */	lha r5, 6(r3)
/* 8042A0FC  7F E4 FB 78 */	mr r4, r31
/* 8042A100  38 05 00 14 */	addi r0, r5, 0x14
/* 8042A104  B0 1E 09 9E */	sth r0, 0x99e(r30)
/* 8042A108  A8 A3 00 08 */	lha r5, 8(r3)
/* 8042A10C  7F C3 F3 78 */	mr r3, r30
/* 8042A110  38 05 00 73 */	addi r0, r5, 0x73
/* 8042A114  B0 1E 09 A0 */	sth r0, 0x9a0(r30)
/* 8042A118  4B FF FC D1 */	bl aHN0_turn_move_init
/* 8042A11C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042A120  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8042A124  83 C1 00 08 */	lwz r30, 8(r1)
/* 8042A128  7C 08 03 A6 */	mtlr r0
/* 8042A12C  38 21 00 10 */	addi r1, r1, 0x10
/* 8042A130  4E 80 00 20 */	blr 
