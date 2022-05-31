lbl_804AD3C8:
/* 804AD3C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804AD3CC  7C 08 02 A6 */	mflr r0
/* 804AD3D0  7C 64 1B 78 */	mr r4, r3
/* 804AD3D4  38 60 00 0E */	li r3, 0xe
/* 804AD3D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804AD3DC  4B EF 11 59 */	bl mEv_actor_dying_message
/* 804AD3E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804AD3E4  7C 08 03 A6 */	mtlr r0
/* 804AD3E8  38 21 00 10 */	addi r1, r1, 0x10
/* 804AD3EC  4E 80 00 20 */	blr 
