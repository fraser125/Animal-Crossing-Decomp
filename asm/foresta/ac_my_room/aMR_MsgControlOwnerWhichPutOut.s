lbl_804747C0:
/* 804747C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804747C4  7C 08 02 A6 */	mflr r0
/* 804747C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 804747CC  39 61 00 20 */	addi r11, r1, 0x20
/* 804747D0  4B C2 66 FD */	bl func_8009AECC
/* 804747D4  7C 7B 1B 78 */	mr r27, r3
/* 804747D8  4B F0 ED 69 */	bl func_80383540
/* 804747DC  4B F0 F3 91 */	bl mChoice_Get_ChoseNum
/* 804747E0  7C 7F 1B 78 */	mr r31, r3
/* 804747E4  4B F0 ED 5D */	bl func_80383540
/* 804747E8  4B F0 F3 8D */	bl mChoice_Clear_ChoseNum
/* 804747EC  2C 1F FF FF */	cmpwi r31, -1
/* 804747F0  41 82 00 C8 */	beq lbl_804748B8
/* 804747F4  7F 63 DB 78 */	mr r3, r27
/* 804747F8  4B FF F9 35 */	bl aMR_GetNowDemoFtr
/* 804747FC  7C 7D 1B 78 */	mr r29, r3
/* 80474800  4B FF B9 DD */	bl aMR_GetItemCountInFurniture
/* 80474804  7C 1F 18 00 */	cmpw r31, r3
/* 80474808  40 80 00 98 */	bge lbl_804748A0
/* 8047480C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80474810  38 80 00 00 */	li r4, 0
/* 80474814  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80474818  38 A0 00 00 */	li r5, 0
/* 8047481C  3F C3 00 02 */	addis r30, r3, 2
/* 80474820  80 7E 61 3C */	lwz r3, 0x613c(r30)
/* 80474824  4B F6 BF 4D */	bl mPr_GetPossessionItemIdxWithCond
/* 80474828  7C 7C 1B 78 */	mr r28, r3
/* 8047482C  2C 1C FF FF */	cmpwi r28, -1
/* 80474830  41 82 00 50 */	beq lbl_80474880
/* 80474834  57 E3 08 3C */	slwi r3, r31, 1
/* 80474838  38 00 00 00 */	li r0, 0
/* 8047483C  7C 9D 1A 14 */	add r4, r29, r3
/* 80474840  7F A3 EB 78 */	mr r3, r29
/* 80474844  A3 A4 08 44 */	lhz r29, 0x844(r4)
/* 80474848  B0 04 08 44 */	sth r0, 0x844(r4)
/* 8047484C  4B FF B9 C5 */	bl aMR_TidyItemInFurniture
/* 80474850  38 00 00 11 */	li r0, 0x11
/* 80474854  7F 84 E3 78 */	mr r4, r28
/* 80474858  B0 1B 03 EE */	sth r0, 0x3ee(r27)
/* 8047485C  7F A5 EB 78 */	mr r5, r29
/* 80474860  38 C0 00 00 */	li r6, 0
/* 80474864  80 7E 61 3C */	lwz r3, 0x613c(r30)
/* 80474868  4B F6 C5 C1 */	bl mPr_SetPossessionItem
/* 8047486C  4B F4 AE 3D */	bl func_803BF6A8
/* 80474870  4B F4 C4 A1 */	bl mMsg_Set_CancelNormalContinue
/* 80474874  4B F4 AE 35 */	bl func_803BF6A8
/* 80474878  4B F4 C4 D5 */	bl mMsg_Unset_LockContinue
/* 8047487C  48 00 00 3C */	b lbl_804748B8
lbl_80474880:
/* 80474880  38 00 00 11 */	li r0, 0x11
/* 80474884  B0 1B 03 EE */	sth r0, 0x3ee(r27)
/* 80474888  4B F4 AE 21 */	bl func_803BF6A8
/* 8047488C  38 80 0A 0E */	li r4, 0xa0e
/* 80474890  4B F4 B7 35 */	bl mMsg_Set_continue_msg_num
/* 80474894  4B F4 AE 15 */	bl func_803BF6A8
/* 80474898  4B F4 C4 B5 */	bl mMsg_Unset_LockContinue
/* 8047489C  48 00 00 1C */	b lbl_804748B8
lbl_804748A0:
/* 804748A0  38 00 00 11 */	li r0, 0x11
/* 804748A4  B0 1B 03 EE */	sth r0, 0x3ee(r27)
/* 804748A8  4B F4 AE 01 */	bl func_803BF6A8
/* 804748AC  4B F4 C4 65 */	bl mMsg_Set_CancelNormalContinue
/* 804748B0  4B F4 AD F9 */	bl func_803BF6A8
/* 804748B4  4B F4 C4 99 */	bl mMsg_Unset_LockContinue
lbl_804748B8:
/* 804748B8  39 61 00 20 */	addi r11, r1, 0x20
/* 804748BC  4B C2 66 5D */	bl func_8009AF18
/* 804748C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804748C4  7C 08 03 A6 */	mtlr r0
/* 804748C8  38 21 00 20 */	addi r1, r1, 0x20
/* 804748CC  4E 80 00 20 */	blr 
