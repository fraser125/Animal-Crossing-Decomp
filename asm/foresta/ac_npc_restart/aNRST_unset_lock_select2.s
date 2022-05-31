lbl_80572B0C:
/* 80572B0C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80572B10  7C 08 02 A6 */	mflr r0
/* 80572B14  90 01 00 24 */	stw r0, 0x24(r1)
/* 80572B18  39 61 00 20 */	addi r11, r1, 0x20
/* 80572B1C  4B B2 83 B5 */	bl func_8009AED0
/* 80572B20  7C 7C 1B 78 */	mr r28, r3
/* 80572B24  7C 9D 23 78 */	mr r29, r4
/* 80572B28  7C BF 2B 78 */	mr r31, r5
/* 80572B2C  4B E4 CB 7D */	bl func_803BF6A8
/* 80572B30  7C 60 1B 78 */	mr r0, r3
/* 80572B34  7F 83 E3 78 */	mr r3, r28
/* 80572B38  7C 1E 03 78 */	mr r30, r0
/* 80572B3C  38 80 00 03 */	li r4, 3
/* 80572B40  48 00 02 E1 */	bl aNRST_change_talk_proc
/* 80572B44  7F 83 E3 78 */	mr r3, r28
/* 80572B48  7F A4 EB 78 */	mr r4, r29
/* 80572B4C  7F E5 FB 78 */	mr r5, r31
/* 80572B50  4B FF F9 ED */	bl func_8057253C
/* 80572B54  7C 7F 1B 78 */	mr r31, r3
/* 80572B58  4B E4 CB 51 */	bl func_803BF6A8
/* 80572B5C  7F E4 FB 78 */	mr r4, r31
/* 80572B60  4B E4 D4 65 */	bl mMsg_Set_continue_msg_num
/* 80572B64  7F C3 F3 78 */	mr r3, r30
/* 80572B68  4B E4 E1 E5 */	bl mMsg_Unset_LockContinue
/* 80572B6C  39 61 00 20 */	addi r11, r1, 0x20
/* 80572B70  4B B2 83 AD */	bl func_8009AF1C
/* 80572B74  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80572B78  7C 08 03 A6 */	mtlr r0
/* 80572B7C  38 21 00 20 */	addi r1, r1, 0x20
/* 80572B80  4E 80 00 20 */	blr 
