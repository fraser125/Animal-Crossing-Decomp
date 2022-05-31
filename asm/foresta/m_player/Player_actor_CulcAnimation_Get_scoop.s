lbl_804FA1F0:
/* 804FA1F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FA1F4  7C 08 02 A6 */	mflr r0
/* 804FA1F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FA1FC  4B FD C3 8D */	bl Player_actor_CulcAnimation_Base2
/* 804FA200  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FA204  7C 08 03 A6 */	mtlr r0
/* 804FA208  38 21 00 10 */	addi r1, r1, 0x10
/* 804FA20C  4E 80 00 20 */	blr 
