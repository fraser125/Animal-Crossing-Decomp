lbl_80476438:
/* 80476438  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8047643C  7C 08 02 A6 */	mflr r0
/* 80476440  90 01 00 14 */	stw r0, 0x14(r1)
/* 80476444  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80476448  93 C1 00 08 */	stw r30, 8(r1)
/* 8047644C  7C 7E 1B 78 */	mr r30, r3
/* 80476450  4B FF FF 1D */	bl aMR_MsgInitQqqRepeatDisplay1
/* 80476454  4B F0 D0 ED */	bl func_80383540
/* 80476458  4B F0 D7 15 */	bl mChoice_Get_ChoseNum
/* 8047645C  7C 7F 1B 78 */	mr r31, r3
/* 80476460  4B F0 D0 E1 */	bl func_80383540
/* 80476464  4B F0 E0 85 */	bl mChoice_no_b_close_set
/* 80476468  2C 1F FF FF */	cmpwi r31, -1
/* 8047646C  41 82 00 E4 */	beq lbl_80476550
/* 80476470  2C 1F 00 01 */	cmpwi r31, 1
/* 80476474  41 82 00 44 */	beq lbl_804764B8
/* 80476478  40 80 00 B4 */	bge lbl_8047652C
/* 8047647C  2C 1F 00 00 */	cmpwi r31, 0
/* 80476480  40 80 00 08 */	bge lbl_80476488
/* 80476484  48 00 00 A8 */	b lbl_8047652C
lbl_80476488:
/* 80476488  7F C3 F3 78 */	mr r3, r30
/* 8047648C  38 80 00 00 */	li r4, 0
/* 80476490  4B FF DC 61 */	bl aMR_SetMemoryCardGameIndex
/* 80476494  38 00 00 2B */	li r0, 0x2b
/* 80476498  7F C3 F3 78 */	mr r3, r30
/* 8047649C  B0 1E 03 EE */	sth r0, 0x3ee(r30)
/* 804764A0  38 80 00 00 */	li r4, 0
/* 804764A4  4B FF DE 4D */	bl aMR_SetEmulatorStartMessage
/* 804764A8  7F C3 F3 78 */	mr r3, r30
/* 804764AC  38 80 00 01 */	li r4, 1
/* 804764B0  4B FF DC 55 */	bl aMR_ReportDisplayMemoryGameSelectCount
/* 804764B4  48 00 00 9C */	b lbl_80476550
lbl_804764B8:
/* 804764B8  7F C3 F3 78 */	mr r3, r30
/* 804764BC  38 80 00 01 */	li r4, 1
/* 804764C0  4B FF DC 45 */	bl aMR_ReportDisplayMemoryGameSelectCount
/* 804764C4  80 7E 04 9C */	lwz r3, 0x49c(r30)
/* 804764C8  80 1E 04 98 */	lwz r0, 0x498(r30)
/* 804764CC  7C 03 00 50 */	subf r0, r3, r0
/* 804764D0  2C 00 00 02 */	cmpwi r0, 2
/* 804764D4  40 80 00 0C */	bge lbl_804764E0
/* 804764D8  2C 00 00 00 */	cmpwi r0, 0
/* 804764DC  40 82 00 10 */	bne lbl_804764EC
lbl_804764E0:
/* 804764E0  38 00 00 30 */	li r0, 0x30
/* 804764E4  B0 1E 03 EE */	sth r0, 0x3ee(r30)
/* 804764E8  48 00 00 24 */	b lbl_8047650C
lbl_804764EC:
/* 804764EC  A8 1E 03 EC */	lha r0, 0x3ec(r30)
/* 804764F0  2C 00 00 2E */	cmpwi r0, 0x2e
/* 804764F4  40 82 00 10 */	bne lbl_80476504
/* 804764F8  38 00 00 2F */	li r0, 0x2f
/* 804764FC  B0 1E 03 EE */	sth r0, 0x3ee(r30)
/* 80476500  48 00 00 0C */	b lbl_8047650C
lbl_80476504:
/* 80476504  38 00 00 2E */	li r0, 0x2e
/* 80476508  B0 1E 03 EE */	sth r0, 0x3ee(r30)
lbl_8047650C:
/* 8047650C  4B F4 91 9D */	bl func_803BF6A8
/* 80476510  38 80 30 69 */	li r4, 0x3069
/* 80476514  4B F4 9A B1 */	bl mMsg_Set_continue_msg_num
/* 80476518  4B F4 91 91 */	bl func_803BF6A8
/* 8047651C  4B F4 A8 31 */	bl mMsg_Unset_LockContinue
/* 80476520  4B F4 91 89 */	bl func_803BF6A8
/* 80476524  4B F4 A8 05 */	bl mMsg_Set_ForceNext
/* 80476528  48 00 00 28 */	b lbl_80476550
lbl_8047652C:
/* 8047652C  38 00 00 00 */	li r0, 0
/* 80476530  B0 1E 03 EE */	sth r0, 0x3ee(r30)
/* 80476534  90 1E 04 84 */	stw r0, 0x484(r30)
/* 80476538  4B F4 91 71 */	bl func_803BF6A8
/* 8047653C  4B F4 A7 D5 */	bl mMsg_Set_CancelNormalContinue
/* 80476540  4B F4 91 69 */	bl func_803BF6A8
/* 80476544  4B F4 A8 09 */	bl mMsg_Unset_LockContinue
/* 80476548  4B F4 91 61 */	bl func_803BF6A8
/* 8047654C  4B F4 A7 DD */	bl mMsg_Set_ForceNext
lbl_80476550:
/* 80476550  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80476554  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80476558  83 C1 00 08 */	lwz r30, 8(r1)
/* 8047655C  7C 08 03 A6 */	mtlr r0
/* 80476560  38 21 00 10 */	addi r1, r1, 0x10
/* 80476564  4E 80 00 20 */	blr 
