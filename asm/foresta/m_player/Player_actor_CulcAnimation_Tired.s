lbl_804FFCD0:
/* 804FFCD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FFCD4  7C 08 02 A6 */	mflr r0
/* 804FFCD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FFCDC  4B FD 68 AD */	bl Player_actor_CulcAnimation_Base2
/* 804FFCE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FFCE4  7C 08 03 A6 */	mtlr r0
/* 804FFCE8  38 21 00 10 */	addi r1, r1, 0x10
/* 804FFCEC  4E 80 00 20 */	blr 
