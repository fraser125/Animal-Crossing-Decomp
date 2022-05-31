lbl_804F99A0:
/* 804F99A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F99A4  7C 08 02 A6 */	mflr r0
/* 804F99A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F99AC  4B FF E8 79 */	bl Player_actor_BGcheck_Fill_scoop
/* 804F99B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F99B4  7C 08 03 A6 */	mtlr r0
/* 804F99B8  38 21 00 10 */	addi r1, r1, 0x10
/* 804F99BC  4E 80 00 20 */	blr 
