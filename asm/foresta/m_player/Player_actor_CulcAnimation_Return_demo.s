lbl_804E54B4:
/* 804E54B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E54B8  7C 08 02 A6 */	mflr r0
/* 804E54BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E54C0  38 81 00 08 */	addi r4, r1, 8
/* 804E54C4  4B FF 10 C5 */	bl Player_actor_CulcAnimation_Base2
/* 804E54C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E54CC  7C 08 03 A6 */	mtlr r0
/* 804E54D0  38 21 00 10 */	addi r1, r1, 0x10
/* 804E54D4  4E 80 00 20 */	blr 
