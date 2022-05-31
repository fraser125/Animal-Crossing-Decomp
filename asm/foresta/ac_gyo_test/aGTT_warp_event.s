lbl_805A3480:
/* 805A3480  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A3484  7C 08 02 A6 */	mflr r0
/* 805A3488  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A348C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A3490  3B E0 00 00 */	li r31, 0
/* 805A3494  93 C1 00 08 */	stw r30, 8(r1)
/* 805A3498  7C 7E 1B 78 */	mr r30, r3
/* 805A349C  4B E3 8A CD */	bl mPlib_check_player_warp_forEvent
/* 805A34A0  2C 03 00 00 */	cmpwi r3, 0
/* 805A34A4  41 82 00 20 */	beq lbl_805A34C4
/* 805A34A8  80 BE 01 CC */	lwz r5, 0x1cc(r30)
/* 805A34AC  38 00 00 00 */	li r0, 0
/* 805A34B0  7F C3 F3 78 */	mr r3, r30
/* 805A34B4  38 80 00 02 */	li r4, 2
/* 805A34B8  90 05 02 88 */	stw r0, 0x288(r5)
/* 805A34BC  48 00 17 89 */	bl aGTT_setupAction
/* 805A34C0  3B E0 00 01 */	li r31, 1
lbl_805A34C4:
/* 805A34C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A34C8  7F E3 FB 78 */	mr r3, r31
/* 805A34CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A34D0  83 C1 00 08 */	lwz r30, 8(r1)
/* 805A34D4  7C 08 03 A6 */	mtlr r0
/* 805A34D8  38 21 00 10 */	addi r1, r1, 0x10
/* 805A34DC  4E 80 00 20 */	blr 
