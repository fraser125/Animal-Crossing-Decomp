lbl_804EDD34:
/* 804EDD34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EDD38  7C 08 02 A6 */	mflr r0
/* 804EDD3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EDD40  4B FE 88 49 */	bl Player_actor_CulcAnimation_Base2
/* 804EDD44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EDD48  7C 08 03 A6 */	mtlr r0
/* 804EDD4C  38 21 00 10 */	addi r1, r1, 0x10
/* 804EDD50  4E 80 00 20 */	blr 
