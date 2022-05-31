lbl_805754A8:
/* 805754A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805754AC  7C 08 02 A6 */	mflr r0
/* 805754B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805754B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805754B8  93 C1 00 08 */	stw r30, 8(r1)
/* 805754BC  7C 7E 1B 78 */	mr r30, r3
/* 805754C0  4B E4 A1 E9 */	bl func_803BF6A8
/* 805754C4  80 BE 01 4C */	lwz r5, 0x14c(r30)
/* 805754C8  7C 60 1B 78 */	mr r0, r3
/* 805754CC  3C 80 00 01 */	lis r4, 0x0001 /* 0x00015244@ha */
/* 805754D0  80 65 01 AC */	lwz r3, 0x1ac(r5)
/* 805754D4  7C 1F 03 78 */	mr r31, r0
/* 805754D8  38 84 52 44 */	addi r4, r4, 0x5244 /* 0x00015244@l */
/* 805754DC  4B AD 54 61 */	bl mGcgba_Send
/* 805754E0  2C 03 00 09 */	cmpwi r3, 9
/* 805754E4  41 82 00 50 */	beq lbl_80575534
/* 805754E8  40 80 00 5C */	bge lbl_80575544
/* 805754EC  2C 03 00 01 */	cmpwi r3, 1
/* 805754F0  41 82 00 08 */	beq lbl_805754F8
/* 805754F4  48 00 00 50 */	b lbl_80575544
lbl_805754F8:
/* 805754F8  7F C3 F3 78 */	mr r3, r30
/* 805754FC  38 80 00 01 */	li r4, 1
/* 80575500  4B FF F4 21 */	bl aSEN_agb_trans_se_proc
/* 80575504  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80575508  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 8057550C  3C 64 00 03 */	addis r3, r4, 3
/* 80575510  3C 84 00 02 */	addis r4, r4, 2
/* 80575514  38 84 25 40 */	addi r4, r4, 0x2540
/* 80575518  38 63 88 C0 */	addi r3, r3, -30528
/* 8057551C  4B FF F5 9D */	bl aSEN_set_island_info_for_agb
/* 80575520  4B AD 42 9D */	bl mGcgba_InitVar
/* 80575524  7F C3 F3 78 */	mr r3, r30
/* 80575528  38 80 00 0C */	li r4, 0xc
/* 8057552C  48 00 0A 41 */	bl aSEN_change_talk_proc
/* 80575530  48 00 00 60 */	b lbl_80575590
lbl_80575534:
/* 80575534  7F C3 F3 78 */	mr r3, r30
/* 80575538  38 80 00 01 */	li r4, 1
/* 8057553C  4B FF F3 E5 */	bl aSEN_agb_trans_se_proc
/* 80575540  48 00 00 50 */	b lbl_80575590
lbl_80575544:
/* 80575544  7F C3 F3 78 */	mr r3, r30
/* 80575548  38 80 00 00 */	li r4, 0
/* 8057554C  4B FF F3 D5 */	bl aSEN_agb_trans_se_proc
/* 80575550  7F C3 F3 78 */	mr r3, r30
/* 80575554  38 80 30 8A */	li r4, 0x308a
/* 80575558  4B FF F3 3D */	bl aSEN_get_msg_no
/* 8057555C  7C 64 1B 78 */	mr r4, r3
/* 80575560  7F E3 FB 78 */	mr r3, r31
/* 80575564  4B E4 B4 35 */	bl mMsg_ChangeMsgData
/* 80575568  38 00 00 02 */	li r0, 2
/* 8057556C  7F E3 FB 78 */	mr r3, r31
/* 80575570  98 1E 09 95 */	stb r0, 0x995(r30)
/* 80575574  4B E4 B7 D9 */	bl mMsg_Unset_LockContinue
/* 80575578  7F E3 FB 78 */	mr r3, r31
/* 8057557C  4B E4 B7 AD */	bl mMsg_Set_ForceNext
/* 80575580  4B AD 42 6D */	bl mGcgba_EndComm
/* 80575584  7F C3 F3 78 */	mr r3, r30
/* 80575588  38 80 00 00 */	li r4, 0
/* 8057558C  48 00 09 E1 */	bl aSEN_change_talk_proc
lbl_80575590:
/* 80575590  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80575594  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80575598  83 C1 00 08 */	lwz r30, 8(r1)
/* 8057559C  7C 08 03 A6 */	mtlr r0
/* 805755A0  38 21 00 10 */	addi r1, r1, 0x10
/* 805755A4  4E 80 00 20 */	blr 
