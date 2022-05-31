lbl_804F1C58:
/* 804F1C58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F1C5C  7C 08 02 A6 */	mflr r0
/* 804F1C60  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F1C64  4B FF FF 75 */	bl Player_actor_Set_FootMark
/* 804F1C68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F1C6C  7C 08 03 A6 */	mtlr r0
/* 804F1C70  38 21 00 10 */	addi r1, r1, 0x10
/* 804F1C74  4E 80 00 20 */	blr 
