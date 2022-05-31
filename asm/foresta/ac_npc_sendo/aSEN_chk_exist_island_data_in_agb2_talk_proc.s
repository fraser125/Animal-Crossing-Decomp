lbl_80575B2C:
/* 80575B2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80575B30  7C 08 02 A6 */	mflr r0
/* 80575B34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80575B38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80575B3C  93 C1 00 08 */	stw r30, 8(r1)
/* 80575B40  7C 7E 1B 78 */	mr r30, r3
/* 80575B44  4B AD 44 19 */	bl mGcgba_IsIsland
/* 80575B48  2C 03 00 09 */	cmpwi r3, 9
/* 80575B4C  41 82 00 60 */	beq lbl_80575BAC
/* 80575B50  40 80 00 24 */	bge lbl_80575B74
/* 80575B54  2C 03 00 01 */	cmpwi r3, 1
/* 80575B58  41 82 00 08 */	beq lbl_80575B60
/* 80575B5C  48 00 00 18 */	b lbl_80575B74
lbl_80575B60:
/* 80575B60  4B AD 3C 5D */	bl mGcgba_InitVar
/* 80575B64  7F C3 F3 78 */	mr r3, r30
/* 80575B68  38 80 00 18 */	li r4, 0x18
/* 80575B6C  48 00 04 01 */	bl aSEN_change_talk_proc
/* 80575B70  48 00 00 3C */	b lbl_80575BAC
lbl_80575B74:
/* 80575B74  4B E4 9B 35 */	bl func_803BF6A8
/* 80575B78  7C 7F 1B 78 */	mr r31, r3
/* 80575B7C  4B E4 B1 D1 */	bl mMsg_Unset_LockContinue
/* 80575B80  7F C3 F3 78 */	mr r3, r30
/* 80575B84  38 80 30 86 */	li r4, 0x3086
/* 80575B88  4B FF ED 0D */	bl aSEN_get_msg_no
/* 80575B8C  7C 64 1B 78 */	mr r4, r3
/* 80575B90  7F E3 FB 78 */	mr r3, r31
/* 80575B94  4B E4 AE 05 */	bl mMsg_ChangeMsgData
/* 80575B98  7F E3 FB 78 */	mr r3, r31
/* 80575B9C  4B E4 B1 8D */	bl mMsg_Set_ForceNext
/* 80575BA0  7F C3 F3 78 */	mr r3, r30
/* 80575BA4  38 80 00 0D */	li r4, 0xd
/* 80575BA8  48 00 03 C5 */	bl aSEN_change_talk_proc
lbl_80575BAC:
/* 80575BAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80575BB0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80575BB4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80575BB8  7C 08 03 A6 */	mtlr r0
/* 80575BBC  38 21 00 10 */	addi r1, r1, 0x10
/* 80575BC0  4E 80 00 20 */	blr 
