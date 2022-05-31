lbl_8048789C:
/* 8048789C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804878A0  7C 08 02 A6 */	mflr r0
/* 804878A4  38 80 00 0D */	li r4, 0xd
/* 804878A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804878AC  4B FF FE CD */	bl aQMgr_actor_check_fin_quest_have_item1
/* 804878B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804878B4  7C 08 03 A6 */	mtlr r0
/* 804878B8  38 21 00 10 */	addi r1, r1, 0x10
/* 804878BC  4E 80 00 20 */	blr 
