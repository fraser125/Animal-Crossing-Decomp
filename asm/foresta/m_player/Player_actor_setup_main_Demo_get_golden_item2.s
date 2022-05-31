lbl_80508AE0:
/* 80508AE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80508AE4  7C 08 02 A6 */	mflr r0
/* 80508AE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80508AEC  4B FF FA 09 */	bl Player_actor_setup_main_Demo_get_golden_item
/* 80508AF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80508AF4  7C 08 03 A6 */	mtlr r0
/* 80508AF8  38 21 00 10 */	addi r1, r1, 0x10
/* 80508AFC  4E 80 00 20 */	blr 
