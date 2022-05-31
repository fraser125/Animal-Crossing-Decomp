lbl_805A53E8:
/* 805A53E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A53EC  7C 08 02 A6 */	mflr r0
/* 805A53F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A53F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A53F8  3B E0 00 00 */	li r31, 0
/* 805A53FC  93 C1 00 08 */	stw r30, 8(r1)
/* 805A5400  7C 7E 1B 78 */	mr r30, r3
/* 805A5404  4B E3 6B 65 */	bl mPlib_check_player_warp_forEvent
/* 805A5408  2C 03 00 00 */	cmpwi r3, 0
/* 805A540C  41 82 00 20 */	beq lbl_805A542C
/* 805A5410  80 BE 01 CC */	lwz r5, 0x1cc(r30)
/* 805A5414  38 00 00 00 */	li r0, 0
/* 805A5418  7F C3 F3 78 */	mr r3, r30
/* 805A541C  38 80 00 06 */	li r4, 6
/* 805A5420  90 05 02 88 */	stw r0, 0x288(r5)
/* 805A5424  48 00 17 35 */	bl aGKK_setupAction
/* 805A5428  3B E0 00 01 */	li r31, 1
lbl_805A542C:
/* 805A542C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A5430  7F E3 FB 78 */	mr r3, r31
/* 805A5434  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A5438  83 C1 00 08 */	lwz r30, 8(r1)
/* 805A543C  7C 08 03 A6 */	mtlr r0
/* 805A5440  38 21 00 10 */	addi r1, r1, 0x10
/* 805A5444  4E 80 00 20 */	blr 
