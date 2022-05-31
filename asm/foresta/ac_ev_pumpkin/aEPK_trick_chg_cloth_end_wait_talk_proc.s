lbl_80522F10:
/* 80522F10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80522F14  7C 08 02 A6 */	mflr r0
/* 80522F18  90 01 00 14 */	stw r0, 0x14(r1)
/* 80522F1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80522F20  93 C1 00 08 */	stw r30, 8(r1)
/* 80522F24  7C 7E 1B 78 */	mr r30, r3
/* 80522F28  7C 83 23 78 */	mr r3, r4
/* 80522F2C  4B EB 67 45 */	bl mPlib_get_player_actor_main_index
/* 80522F30  2C 03 00 65 */	cmpwi r3, 0x65
/* 80522F34  41 82 00 30 */	beq lbl_80522F64
/* 80522F38  4B E9 C7 71 */	bl func_803BF6A8
/* 80522F3C  7C 7F 1B 78 */	mr r31, r3
/* 80522F40  4B E9 DE 0D */	bl mMsg_Unset_LockContinue
/* 80522F44  7F E3 FB 78 */	mr r3, r31
/* 80522F48  4B E9 DD E1 */	bl mMsg_Set_ForceNext
/* 80522F4C  7F E3 FB 78 */	mr r3, r31
/* 80522F50  38 80 09 B7 */	li r4, 0x9b7
/* 80522F54  4B E9 DA 45 */	bl mMsg_ChangeMsgData
/* 80522F58  7F C3 F3 78 */	mr r3, r30
/* 80522F5C  38 80 00 0F */	li r4, 0xf
/* 80522F60  48 00 02 81 */	bl aEPK_change_talk_proc
lbl_80522F64:
/* 80522F64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80522F68  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80522F6C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80522F70  7C 08 03 A6 */	mtlr r0
/* 80522F74  38 21 00 10 */	addi r1, r1, 0x10
/* 80522F78  4E 80 00 20 */	blr 
