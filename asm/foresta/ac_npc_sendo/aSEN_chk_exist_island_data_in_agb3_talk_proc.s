lbl_80575DB8:
/* 80575DB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80575DBC  7C 08 02 A6 */	mflr r0
/* 80575DC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80575DC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80575DC8  93 C1 00 08 */	stw r30, 8(r1)
/* 80575DCC  7C 7E 1B 78 */	mr r30, r3
/* 80575DD0  4B AD 41 8D */	bl mGcgba_IsIsland
/* 80575DD4  2C 03 00 09 */	cmpwi r3, 9
/* 80575DD8  41 82 00 60 */	beq lbl_80575E38
/* 80575DDC  40 80 00 24 */	bge lbl_80575E00
/* 80575DE0  2C 03 00 01 */	cmpwi r3, 1
/* 80575DE4  41 82 00 08 */	beq lbl_80575DEC
/* 80575DE8  48 00 00 18 */	b lbl_80575E00
lbl_80575DEC:
/* 80575DEC  4B AD 39 D1 */	bl mGcgba_InitVar
/* 80575DF0  7F C3 F3 78 */	mr r3, r30
/* 80575DF4  38 80 00 1B */	li r4, 0x1b
/* 80575DF8  48 00 01 75 */	bl aSEN_change_talk_proc
/* 80575DFC  48 00 00 3C */	b lbl_80575E38
lbl_80575E00:
/* 80575E00  4B E4 98 A9 */	bl func_803BF6A8
/* 80575E04  7C 7F 1B 78 */	mr r31, r3
/* 80575E08  4B E4 AF 45 */	bl mMsg_Unset_LockContinue
/* 80575E0C  7F C3 F3 78 */	mr r3, r30
/* 80575E10  38 80 30 86 */	li r4, 0x3086
/* 80575E14  4B FF EA 81 */	bl aSEN_get_msg_no
/* 80575E18  7C 64 1B 78 */	mr r4, r3
/* 80575E1C  7F E3 FB 78 */	mr r3, r31
/* 80575E20  4B E4 AB 79 */	bl mMsg_ChangeMsgData
/* 80575E24  7F E3 FB 78 */	mr r3, r31
/* 80575E28  4B E4 AF 01 */	bl mMsg_Set_ForceNext
/* 80575E2C  7F C3 F3 78 */	mr r3, r30
/* 80575E30  38 80 00 0D */	li r4, 0xd
/* 80575E34  48 00 01 39 */	bl aSEN_change_talk_proc
lbl_80575E38:
/* 80575E38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80575E3C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80575E40  83 C1 00 08 */	lwz r30, 8(r1)
/* 80575E44  7C 08 03 A6 */	mtlr r0
/* 80575E48  38 21 00 10 */	addi r1, r1, 0x10
/* 80575E4C  4E 80 00 20 */	blr 
