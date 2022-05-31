lbl_8050879C:
/* 8050879C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805087A0  7C 08 02 A6 */	mflr r0
/* 805087A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805087A8  4B FC E3 8D */	bl Player_actor_Excute_Corect_forStand
/* 805087AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805087B0  7C 08 03 A6 */	mtlr r0
/* 805087B4  38 21 00 10 */	addi r1, r1, 0x10
/* 805087B8  4E 80 00 20 */	blr 
