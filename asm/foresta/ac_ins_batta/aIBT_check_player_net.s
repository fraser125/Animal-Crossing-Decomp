lbl_805966DC:
/* 805966DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805966E0  7C 08 02 A6 */	mflr r0
/* 805966E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 805966E8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805966EC  3B E0 00 00 */	li r31, 0
/* 805966F0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805966F4  7C 7E 1B 78 */	mr r30, r3
/* 805966F8  80 03 02 38 */	lwz r0, 0x238(r3)
/* 805966FC  2C 00 00 00 */	cmpwi r0, 0
/* 80596700  40 82 00 34 */	bne lbl_80596734
/* 80596704  7F C4 F3 78 */	mr r4, r30
/* 80596708  38 61 00 08 */	addi r3, r1, 8
/* 8059670C  4B FF FF 7D */	bl aIBT_check_player_net_sub
/* 80596710  2C 03 00 01 */	cmpwi r3, 1
/* 80596714  40 82 00 14 */	bne lbl_80596728
/* 80596718  38 00 00 01 */	li r0, 1
/* 8059671C  3B E0 00 01 */	li r31, 1
/* 80596720  90 1E 02 38 */	stw r0, 0x238(r30)
/* 80596724  48 00 00 14 */	b lbl_80596738
lbl_80596728:
/* 80596728  7F C3 F3 78 */	mr r3, r30
/* 8059672C  4B FF FF 09 */	bl aIBT_set_fly_se
/* 80596730  48 00 00 08 */	b lbl_80596738
lbl_80596734:
/* 80596734  3B E0 00 01 */	li r31, 1
lbl_80596738:
/* 80596738  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8059673C  7F E3 FB 78 */	mr r3, r31
/* 80596740  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80596744  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80596748  7C 08 03 A6 */	mtlr r0
/* 8059674C  38 21 00 20 */	addi r1, r1, 0x20
/* 80596750  4E 80 00 20 */	blr 
