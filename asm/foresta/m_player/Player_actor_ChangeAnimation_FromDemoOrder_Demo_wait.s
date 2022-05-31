lbl_804FD064:
/* 804FD064  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FD068  7C 08 02 A6 */	mflr r0
/* 804FD06C  38 E3 0D 18 */	addi r7, r3, 0xd18
/* 804FD070  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FD074  4B FF DB C1 */	bl Player_actor_ChangeAnimation_FromDemoOrder_common
/* 804FD078  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FD07C  7C 08 03 A6 */	mtlr r0
/* 804FD080  38 21 00 10 */	addi r1, r1, 0x10
/* 804FD084  4E 80 00 20 */	blr 
