lbl_80475138:
/* 80475138  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8047513C  7C 08 02 A6 */	mflr r0
/* 80475140  90 01 00 14 */	stw r0, 0x14(r1)
/* 80475144  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80475148  93 C1 00 08 */	stw r30, 8(r1)
/* 8047514C  7C 7E 1B 78 */	mr r30, r3
/* 80475150  4B F0 E3 F1 */	bl func_80383540
/* 80475154  4B F0 EA 19 */	bl mChoice_Get_ChoseNum
/* 80475158  7C 7F 1B 78 */	mr r31, r3
/* 8047515C  4B F0 E3 E5 */	bl func_80383540
/* 80475160  4B F0 EA 15 */	bl mChoice_Clear_ChoseNum
/* 80475164  2C 1F FF FF */	cmpwi r31, -1
/* 80475168  41 82 00 F4 */	beq lbl_8047525C
/* 8047516C  2C 1F 00 00 */	cmpwi r31, 0
/* 80475170  40 82 00 54 */	bne lbl_804751C4
/* 80475174  38 60 00 0A */	li r3, 0xa
/* 80475178  38 80 00 00 */	li r4, 0
/* 8047517C  4B F7 B1 A5 */	bl mSM_check_open_inventory_itemlist
/* 80475180  2C 03 00 00 */	cmpwi r3, 0
/* 80475184  40 82 00 24 */	bne lbl_804751A8
/* 80475188  38 00 00 23 */	li r0, 0x23
/* 8047518C  B0 1E 03 EE */	sth r0, 0x3ee(r30)
/* 80475190  4B F4 A5 19 */	bl func_803BF6A8
/* 80475194  38 80 10 BD */	li r4, 0x10bd
/* 80475198  4B F4 AE 2D */	bl mMsg_Set_continue_msg_num
/* 8047519C  4B F4 A5 0D */	bl func_803BF6A8
/* 804751A0  4B F4 BB AD */	bl mMsg_Unset_LockContinue
/* 804751A4  48 00 00 B8 */	b lbl_8047525C
lbl_804751A8:
/* 804751A8  38 00 00 1E */	li r0, 0x1e
/* 804751AC  B0 1E 03 EE */	sth r0, 0x3ee(r30)
/* 804751B0  4B F4 A4 F9 */	bl func_803BF6A8
/* 804751B4  4B F4 BB 5D */	bl mMsg_Set_CancelNormalContinue
/* 804751B8  4B F4 A4 F1 */	bl func_803BF6A8
/* 804751BC  4B F4 BB 91 */	bl mMsg_Unset_LockContinue
/* 804751C0  48 00 00 9C */	b lbl_8047525C
lbl_804751C4:
/* 804751C4  2C 1F 00 01 */	cmpwi r31, 1
/* 804751C8  40 82 00 4C */	bne lbl_80475214
/* 804751CC  4B FF EF AD */	bl aMR_GetMusicCountInMusicBox
/* 804751D0  2C 03 00 00 */	cmpwi r3, 0
/* 804751D4  40 82 00 24 */	bne lbl_804751F8
/* 804751D8  38 00 00 23 */	li r0, 0x23
/* 804751DC  B0 1E 03 EE */	sth r0, 0x3ee(r30)
/* 804751E0  4B F4 A4 C9 */	bl func_803BF6A8
/* 804751E4  38 80 2F 28 */	li r4, 0x2f28
/* 804751E8  4B F4 AD DD */	bl mMsg_Set_continue_msg_num
/* 804751EC  4B F4 A4 BD */	bl func_803BF6A8
/* 804751F0  4B F4 BB 5D */	bl mMsg_Unset_LockContinue
/* 804751F4  48 00 00 68 */	b lbl_8047525C
lbl_804751F8:
/* 804751F8  38 00 00 20 */	li r0, 0x20
/* 804751FC  B0 1E 03 EE */	sth r0, 0x3ee(r30)
/* 80475200  4B F4 A4 A9 */	bl func_803BF6A8
/* 80475204  4B F4 BB 0D */	bl mMsg_Set_CancelNormalContinue
/* 80475208  4B F4 A4 A1 */	bl func_803BF6A8
/* 8047520C  4B F4 BB 41 */	bl mMsg_Unset_LockContinue
/* 80475210  48 00 00 4C */	b lbl_8047525C
lbl_80475214:
/* 80475214  2C 1F 00 02 */	cmpwi r31, 2
/* 80475218  40 82 00 2C */	bne lbl_80475244
/* 8047521C  38 00 00 23 */	li r0, 0x23
/* 80475220  7F C3 F3 78 */	mr r3, r30
/* 80475224  B0 1E 03 EE */	sth r0, 0x3ee(r30)
/* 80475228  A8 9E 03 FA */	lha r4, 0x3fa(r30)
/* 8047522C  48 00 40 F1 */	bl aMR_FtrIdx2ChangeFtrSwitch
/* 80475230  4B F4 A4 79 */	bl func_803BF6A8
/* 80475234  4B F4 BA DD */	bl mMsg_Set_CancelNormalContinue
/* 80475238  4B F4 A4 71 */	bl func_803BF6A8
/* 8047523C  4B F4 BB 11 */	bl mMsg_Unset_LockContinue
/* 80475240  48 00 00 1C */	b lbl_8047525C
lbl_80475244:
/* 80475244  38 00 00 23 */	li r0, 0x23
/* 80475248  B0 1E 03 EE */	sth r0, 0x3ee(r30)
/* 8047524C  4B F4 A4 5D */	bl func_803BF6A8
/* 80475250  4B F4 BA C1 */	bl mMsg_Set_CancelNormalContinue
/* 80475254  4B F4 A4 55 */	bl func_803BF6A8
/* 80475258  4B F4 BA F5 */	bl mMsg_Unset_LockContinue
lbl_8047525C:
/* 8047525C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80475260  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80475264  83 C1 00 08 */	lwz r30, 8(r1)
/* 80475268  7C 08 03 A6 */	mtlr r0
/* 8047526C  38 21 00 10 */	addi r1, r1, 0x10
/* 80475270  4E 80 00 20 */	blr 
