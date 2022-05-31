lbl_805275D8:
/* 805275D8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805275DC  7C 08 02 A6 */	mflr r0
/* 805275E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 805275E4  39 61 00 20 */	addi r11, r1, 0x20
/* 805275E8  4B B7 38 ED */	bl func_8009AED4
/* 805275EC  7C 7E 1B 78 */	mr r30, r3
/* 805275F0  7C 9D 23 78 */	mr r29, r4
/* 805275F4  4B E9 80 B5 */	bl func_803BF6A8
/* 805275F8  80 9E 01 88 */	lwz r4, 0x188(r30)
/* 805275FC  7C 7F 1B 78 */	mr r31, r3
/* 80527600  A0 64 00 04 */	lhz r3, 4(r4)
/* 80527604  4B EA 78 59 */	bl mNpc_GetLooks
/* 80527608  54 7E 06 3E */	clrlwi r30, r3, 0x18
/* 8052760C  7F E3 FB 78 */	mr r3, r31
/* 80527610  4B E9 85 79 */	bl mMsg_request_main_appear_wait_type1
/* 80527614  1C 1E 00 06 */	mulli r0, r30, 6
/* 80527618  7F E3 FB 78 */	mr r3, r31
/* 8052761C  7C 9D 02 14 */	add r4, r29, r0
/* 80527620  4B E9 93 79 */	bl mMsg_ChangeMsgData
/* 80527624  7F E3 FB 78 */	mr r3, r31
/* 80527628  4B E9 97 01 */	bl mMsg_Set_ForceNext
/* 8052762C  7F E3 FB 78 */	mr r3, r31
/* 80527630  4B E9 97 1D */	bl mMsg_Unset_LockContinue
/* 80527634  39 61 00 20 */	addi r11, r1, 0x20
/* 80527638  4B B7 38 E9 */	bl func_8009AF20
/* 8052763C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80527640  7C 08 03 A6 */	mtlr r0
/* 80527644  38 21 00 20 */	addi r1, r1, 0x20
/* 80527648  4E 80 00 20 */	blr 
