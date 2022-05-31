lbl_804D4EEC:
/* 804D4EEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D4EF0  7C 08 02 A6 */	mflr r0
/* 804D4EF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D4EF8  4B FF FF 05 */	bl Player_actor_set_viblation_Reflect_scoop_hard
/* 804D4EFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D4F00  7C 08 03 A6 */	mtlr r0
/* 804D4F04  38 21 00 10 */	addi r1, r1, 0x10
/* 804D4F08  4E 80 00 20 */	blr 
