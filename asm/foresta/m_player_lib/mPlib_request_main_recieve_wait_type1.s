lbl_803DA3D8:
/* 803DA3D8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803DA3DC  7C 08 02 A6 */	mflr r0
/* 803DA3E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 803DA3E4  39 61 00 20 */	addi r11, r1, 0x20
/* 803DA3E8  4B CC 0A E1 */	bl func_8009AEC8
/* 803DA3EC  7C 7A 1B 78 */	mr r26, r3
/* 803DA3F0  7C 9B 23 78 */	mr r27, r4
/* 803DA3F4  7C BC 2B 78 */	mr r28, r5
/* 803DA3F8  4B FF F2 49 */	bl get_player_actor_withoutCheck
/* 803DA3FC  7C 7D 1B 78 */	mr r29, r3
/* 803DA400  7F 43 D3 78 */	mr r3, r26
/* 803DA404  4B FF F2 3D */	bl get_player_actor_withoutCheck
/* 803DA408  7C 7E 1B 78 */	mr r30, r3
/* 803DA40C  7F 43 D3 78 */	mr r3, r26
/* 803DA410  4B FF F2 31 */	bl get_player_actor_withoutCheck
/* 803DA414  7C 7F 1B 78 */	mr r31, r3
/* 803DA418  7F 43 D3 78 */	mr r3, r26
/* 803DA41C  4B FF F2 25 */	bl get_player_actor_withoutCheck
/* 803DA420  81 83 12 88 */	lwz r12, 0x1288(r3)
/* 803DA424  7F 43 D3 78 */	mr r3, r26
/* 803DA428  7F 67 DB 78 */	mr r7, r27
/* 803DA42C  7F 88 E3 78 */	mr r8, r28
/* 803DA430  80 9F 0D 18 */	lwz r4, 0xd18(r31)
/* 803DA434  39 20 00 13 */	li r9, 0x13
/* 803DA438  80 BE 0D 1C */	lwz r5, 0xd1c(r30)
/* 803DA43C  80 DD 0C F8 */	lwz r6, 0xcf8(r29)
/* 803DA440  7D 89 03 A6 */	mtctr r12
/* 803DA444  4E 80 04 21 */	bctrl 
/* 803DA448  39 61 00 20 */	addi r11, r1, 0x20
/* 803DA44C  4B CC 0A C9 */	bl func_8009AF14
/* 803DA450  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803DA454  7C 08 03 A6 */	mtlr r0
/* 803DA458  38 21 00 20 */	addi r1, r1, 0x20
/* 803DA45C  4E 80 00 20 */	blr 
