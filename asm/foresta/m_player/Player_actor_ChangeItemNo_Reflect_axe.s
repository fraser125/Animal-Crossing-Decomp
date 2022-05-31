lbl_804F0EE8:
/* 804F0EE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F0EEC  7C 08 02 A6 */	mflr r0
/* 804F0EF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F0EF4  A0 84 00 0E */	lhz r4, 0xe(r4)
/* 804F0EF8  4B FF F3 25 */	bl Player_actor_ChangeItemNo_axe_common
/* 804F0EFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F0F00  7C 08 03 A6 */	mtlr r0
/* 804F0F04  38 21 00 10 */	addi r1, r1, 0x10
/* 804F0F08  4E 80 00 20 */	blr 
