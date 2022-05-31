lbl_804FAD8C:
/* 804FAD8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FAD90  7C 08 02 A6 */	mflr r0
/* 804FAD94  38 E3 0D 20 */	addi r7, r3, 0xd20
/* 804FAD98  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FAD9C  4B FF FE 99 */	bl Player_actor_ChangeAnimation_FromDemoOrder_common
/* 804FADA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FADA4  7C 08 03 A6 */	mtlr r0
/* 804FADA8  38 21 00 10 */	addi r1, r1, 0x10
/* 804FADAC  4E 80 00 20 */	blr 
