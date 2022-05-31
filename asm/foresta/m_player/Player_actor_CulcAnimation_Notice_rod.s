lbl_804F676C:
/* 804F676C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F6770  7C 08 02 A6 */	mflr r0
/* 804F6774  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F6778  4B FD FE 11 */	bl Player_actor_CulcAnimation_Base2
/* 804F677C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F6780  7C 08 03 A6 */	mtlr r0
/* 804F6784  38 21 00 10 */	addi r1, r1, 0x10
/* 804F6788  4E 80 00 20 */	blr 
