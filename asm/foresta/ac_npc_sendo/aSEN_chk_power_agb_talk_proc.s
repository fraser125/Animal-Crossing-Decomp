lbl_805755A8:
/* 805755A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805755AC  7C 08 02 A6 */	mflr r0
/* 805755B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805755B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805755B8  93 C1 00 08 */	stw r30, 8(r1)
/* 805755BC  7C 7E 1B 78 */	mr r30, r3
/* 805755C0  4B AD 42 3D */	bl mGcgba_ConnectEnabled
/* 805755C4  2C 03 00 09 */	cmpwi r3, 9
/* 805755C8  41 82 00 80 */	beq lbl_80575648
/* 805755CC  40 80 00 24 */	bge lbl_805755F0
/* 805755D0  2C 03 00 01 */	cmpwi r3, 1
/* 805755D4  41 82 00 08 */	beq lbl_805755DC
/* 805755D8  48 00 00 18 */	b lbl_805755F0
lbl_805755DC:
/* 805755DC  4B AD 41 E1 */	bl mGcgba_InitVar
/* 805755E0  7F C3 F3 78 */	mr r3, r30
/* 805755E4  38 80 00 11 */	li r4, 0x11
/* 805755E8  48 00 09 85 */	bl aSEN_change_talk_proc
/* 805755EC  48 00 00 5C */	b lbl_80575648
lbl_805755F0:
/* 805755F0  80 7E 09 AC */	lwz r3, 0x9ac(r30)
/* 805755F4  38 03 00 01 */	addi r0, r3, 1
/* 805755F8  90 1E 09 AC */	stw r0, 0x9ac(r30)
/* 805755FC  80 1E 09 AC */	lwz r0, 0x9ac(r30)
/* 80575600  2C 00 00 05 */	cmpwi r0, 5
/* 80575604  41 80 00 40 */	blt lbl_80575644
/* 80575608  4B E4 A0 A1 */	bl func_803BF6A8
/* 8057560C  7C 7F 1B 78 */	mr r31, r3
/* 80575610  4B E4 B7 3D */	bl mMsg_Unset_LockContinue
/* 80575614  7F C3 F3 78 */	mr r3, r30
/* 80575618  38 80 30 75 */	li r4, 0x3075
/* 8057561C  4B FF F2 79 */	bl aSEN_get_msg_no
/* 80575620  7C 64 1B 78 */	mr r4, r3
/* 80575624  7F E3 FB 78 */	mr r3, r31
/* 80575628  4B E4 B3 71 */	bl mMsg_ChangeMsgData
/* 8057562C  7F E3 FB 78 */	mr r3, r31
/* 80575630  4B E4 B6 F9 */	bl mMsg_Set_ForceNext
/* 80575634  7F C3 F3 78 */	mr r3, r30
/* 80575638  38 80 00 00 */	li r4, 0
/* 8057563C  48 00 09 31 */	bl aSEN_change_talk_proc
/* 80575640  48 00 00 08 */	b lbl_80575648
lbl_80575644:
/* 80575644  4B AD 41 79 */	bl mGcgba_InitVar
lbl_80575648:
/* 80575648  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057564C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80575650  83 C1 00 08 */	lwz r30, 8(r1)
/* 80575654  7C 08 03 A6 */	mtlr r0
/* 80575658  38 21 00 10 */	addi r1, r1, 0x10
/* 8057565C  4E 80 00 20 */	blr 
