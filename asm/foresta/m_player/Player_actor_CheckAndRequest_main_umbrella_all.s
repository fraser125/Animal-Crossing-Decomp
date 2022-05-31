lbl_804D96A0:
/* 804D96A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D96A4  7C 08 02 A6 */	mflr r0
/* 804D96A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D96AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804D96B0  7C 9F 23 78 */	mr r31, r4
/* 804D96B4  93 C1 00 08 */	stw r30, 8(r1)
/* 804D96B8  7C 7E 1B 78 */	mr r30, r3
/* 804D96BC  4B FF B0 B1 */	bl Player_actor_CheckController_forUmbrella
/* 804D96C0  2C 03 00 00 */	cmpwi r3, 0
/* 804D96C4  41 82 00 24 */	beq lbl_804D96E8
/* 804D96C8  7F C3 F3 78 */	mr r3, r30
/* 804D96CC  4B FF FF 79 */	bl Player_actor_CheckAbleSpeed_forItem
/* 804D96D0  2C 03 00 00 */	cmpwi r3, 0
/* 804D96D4  41 82 00 14 */	beq lbl_804D96E8
/* 804D96D8  7F C3 F3 78 */	mr r3, r30
/* 804D96DC  7F E4 FB 78 */	mr r4, r31
/* 804D96E0  48 02 B4 ED */	bl func_80504BCC
/* 804D96E4  48 00 00 08 */	b lbl_804D96EC
lbl_804D96E8:
/* 804D96E8  38 60 00 00 */	li r3, 0
lbl_804D96EC:
/* 804D96EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D96F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804D96F4  83 C1 00 08 */	lwz r30, 8(r1)
/* 804D96F8  7C 08 03 A6 */	mtlr r0
/* 804D96FC  38 21 00 10 */	addi r1, r1, 0x10
/* 804D9700  4E 80 00 20 */	blr 
