lbl_804EF168:
/* 804EF168  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EF16C  7C 08 02 A6 */	mflr r0
/* 804EF170  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EF174  4B FE 74 15 */	bl Player_actor_CulcAnimation_Base2
/* 804EF178  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EF17C  7C 08 03 A6 */	mtlr r0
/* 804EF180  38 21 00 10 */	addi r1, r1, 0x10
/* 804EF184  4E 80 00 20 */	blr 
