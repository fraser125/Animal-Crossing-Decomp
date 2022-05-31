lbl_80476648:
/* 80476648  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8047664C  7C 08 02 A6 */	mflr r0
/* 80476650  90 01 00 14 */	stw r0, 0x14(r1)
/* 80476654  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80476658  93 C1 00 08 */	stw r30, 8(r1)
/* 8047665C  7C 7E 1B 78 */	mr r30, r3
/* 80476660  4B FF FF 09 */	bl aMR_MsgInitQqqRepeatDisplay2
/* 80476664  4B F0 CE DD */	bl func_80383540
/* 80476668  4B F0 D5 05 */	bl mChoice_Get_ChoseNum
/* 8047666C  7C 7F 1B 78 */	mr r31, r3
/* 80476670  4B F0 CE D1 */	bl func_80383540
/* 80476674  4B F0 DE 75 */	bl mChoice_no_b_close_set
/* 80476678  2C 1F FF FF */	cmpwi r31, -1
/* 8047667C  41 82 01 08 */	beq lbl_80476784
/* 80476680  2C 1F 00 01 */	cmpwi r31, 1
/* 80476684  41 82 00 44 */	beq lbl_804766C8
/* 80476688  40 80 00 10 */	bge lbl_80476698
/* 8047668C  2C 1F 00 00 */	cmpwi r31, 0
/* 80476690  40 80 00 14 */	bge lbl_804766A4
/* 80476694  48 00 00 CC */	b lbl_80476760
lbl_80476698:
/* 80476698  2C 1F 00 03 */	cmpwi r31, 3
/* 8047669C  40 80 00 C4 */	bge lbl_80476760
/* 804766A0  48 00 00 4C */	b lbl_804766EC
lbl_804766A4:
/* 804766A4  7F C3 F3 78 */	mr r3, r30
/* 804766A8  38 80 00 00 */	li r4, 0
/* 804766AC  4B FF DA 45 */	bl aMR_SetMemoryCardGameIndex
/* 804766B0  38 00 00 2B */	li r0, 0x2b
/* 804766B4  7F C3 F3 78 */	mr r3, r30
/* 804766B8  B0 1E 03 EE */	sth r0, 0x3ee(r30)
/* 804766BC  38 80 00 00 */	li r4, 0
/* 804766C0  4B FF DC 31 */	bl aMR_SetEmulatorStartMessage
/* 804766C4  48 00 00 C0 */	b lbl_80476784
lbl_804766C8:
/* 804766C8  7F C3 F3 78 */	mr r3, r30
/* 804766CC  38 80 00 01 */	li r4, 1
/* 804766D0  4B FF DA 21 */	bl aMR_SetMemoryCardGameIndex
/* 804766D4  38 00 00 2B */	li r0, 0x2b
/* 804766D8  7F C3 F3 78 */	mr r3, r30
/* 804766DC  B0 1E 03 EE */	sth r0, 0x3ee(r30)
/* 804766E0  38 80 00 00 */	li r4, 0
/* 804766E4  4B FF DC 0D */	bl aMR_SetEmulatorStartMessage
/* 804766E8  48 00 00 9C */	b lbl_80476784
lbl_804766EC:
/* 804766EC  7F C3 F3 78 */	mr r3, r30
/* 804766F0  38 80 00 02 */	li r4, 2
/* 804766F4  4B FF DA 11 */	bl aMR_ReportDisplayMemoryGameSelectCount
/* 804766F8  80 7E 04 9C */	lwz r3, 0x49c(r30)
/* 804766FC  80 1E 04 98 */	lwz r0, 0x498(r30)
/* 80476700  7C 03 00 50 */	subf r0, r3, r0
/* 80476704  2C 00 00 02 */	cmpwi r0, 2
/* 80476708  40 80 00 0C */	bge lbl_80476714
/* 8047670C  2C 00 00 00 */	cmpwi r0, 0
/* 80476710  40 82 00 28 */	bne lbl_80476738
lbl_80476714:
/* 80476714  A8 1E 03 EC */	lha r0, 0x3ec(r30)
/* 80476718  2C 00 00 30 */	cmpwi r0, 0x30
/* 8047671C  40 82 00 10 */	bne lbl_8047672C
/* 80476720  38 00 00 31 */	li r0, 0x31
/* 80476724  B0 1E 03 EE */	sth r0, 0x3ee(r30)
/* 80476728  48 00 00 18 */	b lbl_80476740
lbl_8047672C:
/* 8047672C  38 00 00 30 */	li r0, 0x30
/* 80476730  B0 1E 03 EE */	sth r0, 0x3ee(r30)
/* 80476734  48 00 00 0C */	b lbl_80476740
lbl_80476738:
/* 80476738  38 00 00 2E */	li r0, 0x2e
/* 8047673C  B0 1E 03 EE */	sth r0, 0x3ee(r30)
lbl_80476740:
/* 80476740  4B F4 8F 69 */	bl func_803BF6A8
/* 80476744  38 80 30 69 */	li r4, 0x3069
/* 80476748  4B F4 98 7D */	bl mMsg_Set_continue_msg_num
/* 8047674C  4B F4 8F 5D */	bl func_803BF6A8
/* 80476750  4B F4 A5 FD */	bl mMsg_Unset_LockContinue
/* 80476754  4B F4 8F 55 */	bl func_803BF6A8
/* 80476758  4B F4 A5 D1 */	bl mMsg_Set_ForceNext
/* 8047675C  48 00 00 28 */	b lbl_80476784
lbl_80476760:
/* 80476760  38 00 00 00 */	li r0, 0
/* 80476764  B0 1E 03 EE */	sth r0, 0x3ee(r30)
/* 80476768  90 1E 04 84 */	stw r0, 0x484(r30)
/* 8047676C  4B F4 8F 3D */	bl func_803BF6A8
/* 80476770  4B F4 A5 A1 */	bl mMsg_Set_CancelNormalContinue
/* 80476774  4B F4 8F 35 */	bl func_803BF6A8
/* 80476778  4B F4 A5 D5 */	bl mMsg_Unset_LockContinue
/* 8047677C  4B F4 8F 2D */	bl func_803BF6A8
/* 80476780  4B F4 A5 A9 */	bl mMsg_Set_ForceNext
lbl_80476784:
/* 80476784  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80476788  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8047678C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80476790  7C 08 03 A6 */	mtlr r0
/* 80476794  38 21 00 10 */	addi r1, r1, 0x10
/* 80476798  4E 80 00 20 */	blr 
