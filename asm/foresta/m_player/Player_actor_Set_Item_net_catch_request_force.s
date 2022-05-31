lbl_804D7A7C:
/* 804D7A7C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804D7A80  7C 08 02 A6 */	mflr r0
/* 804D7A84  90 01 00 24 */	stw r0, 0x24(r1)
/* 804D7A88  39 61 00 20 */	addi r11, r1, 0x20
/* 804D7A8C  4B BC 34 49 */	bl func_8009AED4
/* 804D7A90  7C 7D 1B 78 */	mr r29, r3
/* 804D7A94  7C BE 2B 78 */	mr r30, r5
/* 804D7A98  7C DF 33 78 */	mr r31, r6
/* 804D7A9C  7C 83 23 78 */	mr r3, r4
/* 804D7AA0  4B F0 1B D1 */	bl mPlib_get_player_actor_main_index
/* 804D7AA4  2C 03 00 2C */	cmpwi r3, 0x2c
/* 804D7AA8  40 82 00 20 */	bne lbl_804D7AC8
/* 804D7AAC  80 1D 0F 24 */	lwz r0, 0xf24(r29)
/* 804D7AB0  28 00 00 00 */	cmplwi r0, 0
/* 804D7AB4  40 82 00 14 */	bne lbl_804D7AC8
/* 804D7AB8  93 DD 0F 24 */	stw r30, 0xf24(r29)
/* 804D7ABC  38 60 00 01 */	li r3, 1
/* 804D7AC0  9B FD 0F 28 */	stb r31, 0xf28(r29)
/* 804D7AC4  48 00 00 08 */	b lbl_804D7ACC
lbl_804D7AC8:
/* 804D7AC8  38 60 00 00 */	li r3, 0
lbl_804D7ACC:
/* 804D7ACC  39 61 00 20 */	addi r11, r1, 0x20
/* 804D7AD0  4B BC 34 51 */	bl func_8009AF20
/* 804D7AD4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804D7AD8  7C 08 03 A6 */	mtlr r0
/* 804D7ADC  38 21 00 20 */	addi r1, r1, 0x20
/* 804D7AE0  4E 80 00 20 */	blr 
