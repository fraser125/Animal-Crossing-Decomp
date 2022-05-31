lbl_805055B0:
/* 805055B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805055B4  7C 08 02 A6 */	mflr r0
/* 805055B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805055BC  4B FD 26 DD */	bl Player_actor_BGcheck_common_type1
/* 805055C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805055C4  7C 08 03 A6 */	mtlr r0
/* 805055C8  38 21 00 10 */	addi r1, r1, 0x10
/* 805055CC  4E 80 00 20 */	blr 
