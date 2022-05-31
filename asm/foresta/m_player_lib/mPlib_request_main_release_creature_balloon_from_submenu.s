lbl_803D9DD0:
/* 803D9DD0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803D9DD4  7C 08 02 A6 */	mflr r0
/* 803D9DD8  90 01 00 24 */	stw r0, 0x24(r1)
/* 803D9DDC  39 61 00 20 */	addi r11, r1, 0x20
/* 803D9DE0  4B CC 10 F5 */	bl func_8009AED4
/* 803D9DE4  7C 7D 1B 78 */	mr r29, r3
/* 803D9DE8  7C 9E 23 78 */	mr r30, r4
/* 803D9DEC  4B FF FA C1 */	bl mPlib_Get_change_data_from_submenu_p
/* 803D9DF0  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 803D9DF4  7C 7F 1B 78 */	mr r31, r3
/* 803D9DF8  38 64 52 F0 */	addi r3, r4, data_811C52F0@l /* 0x811C52F0@l */
/* 803D9DFC  80 63 00 00 */	lwz r3, 0(r3)
/* 803D9E00  4B FF F8 41 */	bl get_player_actor_withoutCheck
/* 803D9E04  38 00 00 53 */	li r0, 0x53
/* 803D9E08  38 80 00 01 */	li r4, 1
/* 803D9E0C  90 1F 00 00 */	stw r0, 0(r31)
/* 803D9E10  38 00 00 02 */	li r0, 2
/* 803D9E14  7F A3 EB 78 */	mr r3, r29
/* 803D9E18  90 9F 00 04 */	stw r4, 4(r31)
/* 803D9E1C  90 1F 00 08 */	stw r0, 8(r31)
/* 803D9E20  93 DF 00 0C */	stw r30, 0xc(r31)
/* 803D9E24  4B FF FF 85 */	bl mPlib_Get_itemNOTOBalloonShapeType
/* 803D9E28  90 7F 00 10 */	stw r3, 0x10(r31)
/* 803D9E2C  39 61 00 20 */	addi r11, r1, 0x20
/* 803D9E30  4B CC 10 F1 */	bl func_8009AF20
/* 803D9E34  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803D9E38  7C 08 03 A6 */	mtlr r0
/* 803D9E3C  38 21 00 20 */	addi r1, r1, 0x20
/* 803D9E40  4E 80 00 20 */	blr 
