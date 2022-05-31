lbl_804D7EFC:
/* 804D7EFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D7F00  7C 08 02 A6 */	mflr r0
/* 804D7F04  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D7F08  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804D7F0C  7C 9F 23 78 */	mr r31, r4
/* 804D7F10  93 C1 00 08 */	stw r30, 8(r1)
/* 804D7F14  7C 7E 1B 78 */	mr r30, r3
/* 804D7F18  7F E3 FB 78 */	mr r3, r31
/* 804D7F1C  38 9E 00 28 */	addi r4, r30, 0x28
/* 804D7F20  38 BE 00 34 */	addi r5, r30, 0x34
/* 804D7F24  4B FF FF 21 */	bl Player_actor_Get_force_position_angle
/* 804D7F28  7F E3 FB 78 */	mr r3, r31
/* 804D7F2C  38 BE 00 DC */	addi r5, r30, 0xdc
/* 804D7F30  38 80 00 00 */	li r4, 0
/* 804D7F34  4B FF FF 11 */	bl Player_actor_Get_force_position_angle
/* 804D7F38  7F C3 F3 78 */	mr r3, r30
/* 804D7F3C  4B FF FE FD */	bl Player_actor_Reset_force_position_angle
/* 804D7F40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D7F44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804D7F48  83 C1 00 08 */	lwz r30, 8(r1)
/* 804D7F4C  7C 08 03 A6 */	mtlr r0
/* 804D7F50  38 21 00 10 */	addi r1, r1, 0x10
/* 804D7F54  4E 80 00 20 */	blr 
