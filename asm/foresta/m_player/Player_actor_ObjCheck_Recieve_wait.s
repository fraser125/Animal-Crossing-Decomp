lbl_804FB178:
/* 804FB178  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FB17C  7C 08 02 A6 */	mflr r0
/* 804FB180  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FB184  4B FD B9 B1 */	bl Player_actor_Excute_Corect_forStand
/* 804FB188  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FB18C  7C 08 03 A6 */	mtlr r0
/* 804FB190  38 21 00 10 */	addi r1, r1, 0x10
/* 804FB194  4E 80 00 20 */	blr 
