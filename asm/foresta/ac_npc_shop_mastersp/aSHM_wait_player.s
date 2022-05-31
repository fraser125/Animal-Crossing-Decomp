lbl_8057DC58:
/* 8057DC58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057DC5C  7C 08 02 A6 */	mflr r0
/* 8057DC60  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057DC64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057DC68  7C 9F 23 78 */	mr r31, r4
/* 8057DC6C  93 C1 00 08 */	stw r30, 8(r1)
/* 8057DC70  7C 7E 1B 78 */	mr r30, r3
/* 8057DC74  7F E3 FB 78 */	mr r3, r31
/* 8057DC78  4B E5 B9 F9 */	bl mPlib_get_player_actor_main_index
/* 8057DC7C  2C 03 00 4B */	cmpwi r3, 0x4b
/* 8057DC80  41 82 00 14 */	beq lbl_8057DC94
/* 8057DC84  7F C3 F3 78 */	mr r3, r30
/* 8057DC88  7F E4 FB 78 */	mr r4, r31
/* 8057DC8C  38 A0 00 12 */	li r5, 0x12
/* 8057DC90  48 00 05 B1 */	bl aSHM_setup_think_proc
lbl_8057DC94:
/* 8057DC94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057DC98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057DC9C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8057DCA0  7C 08 03 A6 */	mtlr r0
/* 8057DCA4  38 21 00 10 */	addi r1, r1, 0x10
/* 8057DCA8  4E 80 00 20 */	blr 
