lbl_805753C4:
/* 805753C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805753C8  7C 08 02 A6 */	mflr r0
/* 805753CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805753D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805753D4  93 C1 00 08 */	stw r30, 8(r1)
/* 805753D8  7C 7E 1B 78 */	mr r30, r3
/* 805753DC  4B E4 A2 CD */	bl func_803BF6A8
/* 805753E0  80 BE 01 4C */	lwz r5, 0x14c(r30)
/* 805753E4  7C 60 1B 78 */	mr r0, r3
/* 805753E8  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000C83C@ha */
/* 805753EC  80 65 01 A8 */	lwz r3, 0x1a8(r5)
/* 805753F0  7C 1F 03 78 */	mr r31, r0
/* 805753F4  38 84 C8 3C */	addi r4, r4, 0xC83C /* 0x0000C83C@l */
/* 805753F8  4B AD 44 BD */	bl mGcgba_Boot
/* 805753FC  2C 03 00 09 */	cmpwi r3, 9
/* 80575400  41 82 00 34 */	beq lbl_80575434
/* 80575404  40 80 00 40 */	bge lbl_80575444
/* 80575408  2C 03 00 01 */	cmpwi r3, 1
/* 8057540C  41 82 00 08 */	beq lbl_80575414
/* 80575410  48 00 00 34 */	b lbl_80575444
lbl_80575414:
/* 80575414  7F C3 F3 78 */	mr r3, r30
/* 80575418  38 80 00 01 */	li r4, 1
/* 8057541C  4B FF F5 05 */	bl aSEN_agb_trans_se_proc
/* 80575420  4B AD 43 9D */	bl mGcgba_InitVar
/* 80575424  7F C3 F3 78 */	mr r3, r30
/* 80575428  38 80 00 0F */	li r4, 0xf
/* 8057542C  48 00 0B 41 */	bl aSEN_change_talk_proc
/* 80575430  48 00 00 60 */	b lbl_80575490
lbl_80575434:
/* 80575434  7F C3 F3 78 */	mr r3, r30
/* 80575438  38 80 00 01 */	li r4, 1
/* 8057543C  4B FF F4 E5 */	bl aSEN_agb_trans_se_proc
/* 80575440  48 00 00 50 */	b lbl_80575490
lbl_80575444:
/* 80575444  7F C3 F3 78 */	mr r3, r30
/* 80575448  38 80 00 00 */	li r4, 0
/* 8057544C  4B FF F4 D5 */	bl aSEN_agb_trans_se_proc
/* 80575450  7F C3 F3 78 */	mr r3, r30
/* 80575454  38 80 30 8A */	li r4, 0x308a
/* 80575458  4B FF F4 3D */	bl aSEN_get_msg_no
/* 8057545C  7C 64 1B 78 */	mr r4, r3
/* 80575460  7F E3 FB 78 */	mr r3, r31
/* 80575464  4B E4 B5 35 */	bl mMsg_ChangeMsgData
/* 80575468  38 00 00 02 */	li r0, 2
/* 8057546C  7F E3 FB 78 */	mr r3, r31
/* 80575470  98 1E 09 95 */	stb r0, 0x995(r30)
/* 80575474  4B E4 B8 D9 */	bl mMsg_Unset_LockContinue
/* 80575478  7F E3 FB 78 */	mr r3, r31
/* 8057547C  4B E4 B8 AD */	bl mMsg_Set_ForceNext
/* 80575480  4B AD 43 6D */	bl mGcgba_EndComm
/* 80575484  7F C3 F3 78 */	mr r3, r30
/* 80575488  38 80 00 00 */	li r4, 0
/* 8057548C  48 00 0A E1 */	bl aSEN_change_talk_proc
lbl_80575490:
/* 80575490  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80575494  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80575498  83 C1 00 08 */	lwz r30, 8(r1)
/* 8057549C  7C 08 03 A6 */	mtlr r0
/* 805754A0  38 21 00 10 */	addi r1, r1, 0x10
/* 805754A4  4E 80 00 20 */	blr 
