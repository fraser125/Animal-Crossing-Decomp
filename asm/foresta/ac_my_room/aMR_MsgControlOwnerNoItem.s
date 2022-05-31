lbl_804744F0:
/* 804744F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804744F4  7C 08 02 A6 */	mflr r0
/* 804744F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804744FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80474500  7C 7F 1B 78 */	mr r31, r3
/* 80474504  4B F0 F0 3D */	bl func_80383540
/* 80474508  4B F0 F6 65 */	bl mChoice_Get_ChoseNum
/* 8047450C  2C 03 FF FF */	cmpwi r3, -1
/* 80474510  41 82 00 78 */	beq lbl_80474588
/* 80474514  2C 03 00 00 */	cmpwi r3, 0
/* 80474518  41 82 00 08 */	beq lbl_80474520
/* 8047451C  48 00 00 54 */	b lbl_80474570
lbl_80474520:
/* 80474520  38 60 00 09 */	li r3, 9
/* 80474524  38 80 00 00 */	li r4, 0
/* 80474528  4B F7 BD F9 */	bl mSM_check_open_inventory_itemlist
/* 8047452C  2C 03 00 00 */	cmpwi r3, 0
/* 80474530  40 82 00 24 */	bne lbl_80474554
/* 80474534  38 00 00 11 */	li r0, 0x11
/* 80474538  B0 1F 03 EE */	sth r0, 0x3ee(r31)
/* 8047453C  4B F4 B1 6D */	bl func_803BF6A8
/* 80474540  38 80 0A 10 */	li r4, 0xa10
/* 80474544  4B F4 BA 81 */	bl mMsg_Set_continue_msg_num
/* 80474548  4B F4 B1 61 */	bl func_803BF6A8
/* 8047454C  4B F4 C8 01 */	bl mMsg_Unset_LockContinue
/* 80474550  48 00 00 38 */	b lbl_80474588
lbl_80474554:
/* 80474554  38 00 00 0E */	li r0, 0xe
/* 80474558  B0 1F 03 EE */	sth r0, 0x3ee(r31)
/* 8047455C  4B F4 B1 4D */	bl func_803BF6A8
/* 80474560  4B F4 C7 B1 */	bl mMsg_Set_CancelNormalContinue
/* 80474564  4B F4 B1 45 */	bl func_803BF6A8
/* 80474568  4B F4 C7 E5 */	bl mMsg_Unset_LockContinue
/* 8047456C  48 00 00 1C */	b lbl_80474588
lbl_80474570:
/* 80474570  38 00 00 11 */	li r0, 0x11
/* 80474574  B0 1F 03 EE */	sth r0, 0x3ee(r31)
/* 80474578  4B F4 B1 31 */	bl func_803BF6A8
/* 8047457C  4B F4 C7 95 */	bl mMsg_Set_CancelNormalContinue
/* 80474580  4B F4 B1 29 */	bl func_803BF6A8
/* 80474584  4B F4 C7 C9 */	bl mMsg_Unset_LockContinue
lbl_80474588:
/* 80474588  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8047458C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80474590  7C 08 03 A6 */	mtlr r0
/* 80474594  38 21 00 10 */	addi r1, r1, 0x10
/* 80474598  4E 80 00 20 */	blr 
