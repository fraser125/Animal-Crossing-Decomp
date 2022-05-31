lbl_80561F80:
/* 80561F80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80561F84  7C 08 02 A6 */	mflr r0
/* 80561F88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80561F8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80561F90  7C 7F 1B 78 */	mr r31, r3
/* 80561F94  93 C1 00 08 */	stw r30, 8(r1)
/* 80561F98  7C 9E 23 78 */	mr r30, r4
/* 80561F9C  7F C3 F3 78 */	mr r3, r30
/* 80561FA0  4B E7 76 A1 */	bl get_player_actor_withoutCheck
/* 80561FA4  7C 64 1B 78 */	mr r4, r3
/* 80561FA8  7F C3 F3 78 */	mr r3, r30
/* 80561FAC  7F E5 FB 78 */	mr r5, r31
/* 80561FB0  38 C0 00 06 */	li r6, 6
/* 80561FB4  4B E1 D6 E5 */	bl Camera2_request_main_talk
/* 80561FB8  A0 1F 00 06 */	lhz r0, 6(r31)
/* 80561FBC  28 00 D0 70 */	cmplwi r0, 0xd070
/* 80561FC0  40 82 00 0C */	bne lbl_80561FCC
/* 80561FC4  7F E3 FB 78 */	mr r3, r31
/* 80561FC8  4B FF F9 BD */	bl aNNW_turn_player
lbl_80561FCC:
/* 80561FCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80561FD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80561FD4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80561FD8  7C 08 03 A6 */	mtlr r0
/* 80561FDC  38 21 00 10 */	addi r1, r1, 0x10
/* 80561FE0  4E 80 00 20 */	blr 
