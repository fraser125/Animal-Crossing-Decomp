lbl_80527B20:
/* 80527B20  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80527B24  7C 08 02 A6 */	mflr r0
/* 80527B28  90 01 00 24 */	stw r0, 0x24(r1)
/* 80527B2C  39 61 00 20 */	addi r11, r1, 0x20
/* 80527B30  4B B7 33 A5 */	bl func_8009AED4
/* 80527B34  7C 7D 1B 78 */	mr r29, r3
/* 80527B38  7C 83 23 78 */	mr r3, r4
/* 80527B3C  4B EB 1B 35 */	bl mPlib_get_player_actor_main_index
/* 80527B40  2C 03 00 65 */	cmpwi r3, 0x65
/* 80527B44  41 82 00 48 */	beq lbl_80527B8C
/* 80527B48  4B E9 7B 61 */	bl func_803BF6A8
/* 80527B4C  80 9D 01 88 */	lwz r4, 0x188(r29)
/* 80527B50  7C 7F 1B 78 */	mr r31, r3
/* 80527B54  A0 64 00 04 */	lhz r3, 4(r4)
/* 80527B58  4B EA 73 05 */	bl mNpc_GetLooks
/* 80527B5C  54 7E 06 3E */	clrlwi r30, r3, 0x18
/* 80527B60  7F E3 FB 78 */	mr r3, r31
/* 80527B64  4B E9 91 E9 */	bl mMsg_Unset_LockContinue
/* 80527B68  7F E3 FB 78 */	mr r3, r31
/* 80527B6C  4B E9 91 BD */	bl mMsg_Set_ForceNext
/* 80527B70  1C 9E 00 06 */	mulli r4, r30, 6
/* 80527B74  7F E3 FB 78 */	mr r3, r31
/* 80527B78  38 84 09 8D */	addi r4, r4, 0x98d
/* 80527B7C  4B E9 8E 1D */	bl mMsg_ChangeMsgData
/* 80527B80  7F A3 EB 78 */	mr r3, r29
/* 80527B84  38 80 00 0D */	li r4, 0xd
/* 80527B88  48 00 01 6D */	bl aHWN_change_talk_proc
lbl_80527B8C:
/* 80527B8C  39 61 00 20 */	addi r11, r1, 0x20
/* 80527B90  4B B7 33 91 */	bl func_8009AF20
/* 80527B94  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80527B98  7C 08 03 A6 */	mtlr r0
/* 80527B9C  38 21 00 20 */	addi r1, r1, 0x20
/* 80527BA0  4E 80 00 20 */	blr 
