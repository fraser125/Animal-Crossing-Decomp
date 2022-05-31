lbl_804742F0:
/* 804742F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804742F4  7C 08 02 A6 */	mflr r0
/* 804742F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 804742FC  39 61 00 20 */	addi r11, r1, 0x20
/* 80474300  4B C2 6B D5 */	bl func_8009AED4
/* 80474304  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80474308  2C 04 00 01 */	cmpwi r4, 1
/* 8047430C  38 85 85 38 */	addi r4, r5, common_data@l /* 0x81138538@l */
/* 80474310  7C 7F 1B 78 */	mr r31, r3
/* 80474314  3F C4 00 03 */	addis r30, r4, 3
/* 80474318  80 1E DB AC */	lwz r0, -0x2454(r30)
/* 8047431C  60 00 00 04 */	ori r0, r0, 4
/* 80474320  90 1E DB AC */	stw r0, -0x2454(r30)
/* 80474324  40 82 00 10 */	bne lbl_80474334
/* 80474328  4B BD 1E 65 */	bl famicom_internal_data_load
/* 8047432C  7C 7D 1B 78 */	mr r29, r3
/* 80474330  48 00 00 28 */	b lbl_80474358
lbl_80474334:
/* 80474334  3C 84 00 02 */	addis r4, r4, 2
/* 80474338  88 04 60 03 */	lbz r0, 0x6003(r4)
/* 8047433C  28 00 00 04 */	cmplwi r0, 4
/* 80474340  40 80 00 10 */	bge lbl_80474350
/* 80474344  4B FF FF 75 */	bl aMR_SetEmulatorMessage_CanSave
/* 80474348  4B FF FC E5 */	bl func_8047402C
/* 8047434C  48 00 01 84 */	b lbl_804744D0
lbl_80474350:
/* 80474350  4B BD 23 19 */	bl famicom_external_data_save_check
/* 80474354  7C 7D 1B 78 */	mr r29, r3
lbl_80474358:
/* 80474358  4B FF FC D5 */	bl func_8047402C
/* 8047435C  28 1D 00 06 */	cmplwi r29, 6
/* 80474360  41 81 01 40 */	bgt lbl_804744A0
/* 80474364  3C 60 80 69 */	lis r3, lit_1527@ha /* 0x80689878@ha */
/* 80474368  57 A0 10 3A */	slwi r0, r29, 2
/* 8047436C  38 63 98 78 */	addi r3, r3, lit_1527@l /* 0x80689878@l */
/* 80474370  7C 03 00 2E */	lwzx r0, r3, r0
/* 80474374  7C 09 03 A6 */	mtctr r0
/* 80474378  4E 80 04 20 */	bctr 
lbl_8047437C:
/* 8047437C  38 00 00 29 */	li r0, 0x29
/* 80474380  7F E3 FB 78 */	mr r3, r31
/* 80474384  B0 1F 03 EE */	sth r0, 0x3ee(r31)
/* 80474388  4B FF FF 31 */	bl aMR_SetEmulatorMessage_CanSave
/* 8047438C  48 00 01 44 */	b lbl_804744D0
lbl_80474390:
/* 80474390  38 00 00 29 */	li r0, 0x29
/* 80474394  B0 1F 03 EE */	sth r0, 0x3ee(r31)
/* 80474398  4B F4 B3 11 */	bl func_803BF6A8
/* 8047439C  38 80 3B 50 */	li r4, 0x3b50
/* 804743A0  4B F4 BC 25 */	bl mMsg_Set_continue_msg_num
/* 804743A4  4B F4 B3 05 */	bl func_803BF6A8
/* 804743A8  4B F4 C9 A5 */	bl mMsg_Unset_LockContinue
/* 804743AC  4B F4 B2 FD */	bl func_803BF6A8
/* 804743B0  4B F4 C9 79 */	bl mMsg_Set_ForceNext
/* 804743B4  48 00 01 1C */	b lbl_804744D0
lbl_804743B8:
/* 804743B8  38 00 00 29 */	li r0, 0x29
/* 804743BC  B0 1F 03 EE */	sth r0, 0x3ee(r31)
/* 804743C0  4B F4 B2 E9 */	bl func_803BF6A8
/* 804743C4  38 80 3B 51 */	li r4, 0x3b51
/* 804743C8  4B F4 BB FD */	bl mMsg_Set_continue_msg_num
/* 804743CC  4B F4 B2 DD */	bl func_803BF6A8
/* 804743D0  4B F4 C9 7D */	bl mMsg_Unset_LockContinue
/* 804743D4  4B F4 B2 D5 */	bl func_803BF6A8
/* 804743D8  4B F4 C9 51 */	bl mMsg_Set_ForceNext
/* 804743DC  48 00 00 F4 */	b lbl_804744D0
lbl_804743E0:
/* 804743E0  38 00 00 29 */	li r0, 0x29
/* 804743E4  B0 1F 03 EE */	sth r0, 0x3ee(r31)
/* 804743E8  4B F4 B2 C1 */	bl func_803BF6A8
/* 804743EC  38 80 3B 52 */	li r4, 0x3b52
/* 804743F0  4B F4 BB D5 */	bl mMsg_Set_continue_msg_num
/* 804743F4  4B F4 B2 B5 */	bl func_803BF6A8
/* 804743F8  4B F4 C9 55 */	bl mMsg_Unset_LockContinue
/* 804743FC  4B F4 B2 AD */	bl func_803BF6A8
/* 80474400  4B F4 C9 29 */	bl mMsg_Set_ForceNext
/* 80474404  48 00 00 CC */	b lbl_804744D0
lbl_80474408:
/* 80474408  38 00 00 29 */	li r0, 0x29
/* 8047440C  B0 1F 03 EE */	sth r0, 0x3ee(r31)
/* 80474410  4B F4 B2 99 */	bl func_803BF6A8
/* 80474414  38 80 3B 53 */	li r4, 0x3b53
/* 80474418  4B F4 BB AD */	bl mMsg_Set_continue_msg_num
/* 8047441C  4B F4 B2 8D */	bl func_803BF6A8
/* 80474420  4B F4 C9 2D */	bl mMsg_Unset_LockContinue
/* 80474424  4B F4 B2 85 */	bl func_803BF6A8
/* 80474428  4B F4 C9 01 */	bl mMsg_Set_ForceNext
/* 8047442C  48 00 00 A4 */	b lbl_804744D0
lbl_80474430:
/* 80474430  38 00 00 29 */	li r0, 0x29
/* 80474434  B0 1F 03 EE */	sth r0, 0x3ee(r31)
/* 80474438  4B F4 B2 71 */	bl func_803BF6A8
/* 8047443C  38 80 3B 54 */	li r4, 0x3b54
/* 80474440  4B F4 BB 85 */	bl mMsg_Set_continue_msg_num
/* 80474444  4B F4 B2 65 */	bl func_803BF6A8
/* 80474448  4B F4 C9 05 */	bl mMsg_Unset_LockContinue
/* 8047444C  4B F4 B2 5D */	bl func_803BF6A8
/* 80474450  4B F4 C8 D9 */	bl mMsg_Set_ForceNext
/* 80474454  48 00 00 7C */	b lbl_804744D0
lbl_80474458:
/* 80474458  38 00 00 29 */	li r0, 0x29
/* 8047445C  B0 1F 03 EE */	sth r0, 0x3ee(r31)
/* 80474460  4B F4 B2 49 */	bl func_803BF6A8
/* 80474464  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80474468  38 80 00 00 */	li r4, 0
/* 8047446C  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80474470  38 C0 00 08 */	li r6, 8
/* 80474474  3C A5 00 01 */	addis r5, r5, 1
/* 80474478  38 A5 91 20 */	addi r5, r5, -28384
/* 8047447C  4B F4 B7 D9 */	bl mMsg_Set_free_str
/* 80474480  4B F4 B2 29 */	bl func_803BF6A8
/* 80474484  38 80 3B 55 */	li r4, 0x3b55
/* 80474488  4B F4 BB 3D */	bl mMsg_Set_continue_msg_num
/* 8047448C  4B F4 B2 1D */	bl func_803BF6A8
/* 80474490  4B F4 C8 BD */	bl mMsg_Unset_LockContinue
/* 80474494  4B F4 B2 15 */	bl func_803BF6A8
/* 80474498  4B F4 C8 91 */	bl mMsg_Set_ForceNext
/* 8047449C  48 00 00 34 */	b lbl_804744D0
lbl_804744A0:
/* 804744A0  4B F4 B2 09 */	bl func_803BF6A8
/* 804744A4  38 80 30 71 */	li r4, 0x3071
/* 804744A8  4B F4 BB 1D */	bl mMsg_Set_continue_msg_num
/* 804744AC  4B F4 B1 FD */	bl func_803BF6A8
/* 804744B0  4B F4 C8 9D */	bl mMsg_Unset_LockContinue
/* 804744B4  4B F4 B1 F5 */	bl func_803BF6A8
/* 804744B8  4B F4 C8 71 */	bl mMsg_Set_ForceNext
/* 804744BC  38 00 00 3A */	li r0, 0x3a
/* 804744C0  B0 1F 03 EE */	sth r0, 0x3ee(r31)
/* 804744C4  80 1E DB AC */	lwz r0, -0x2454(r30)
/* 804744C8  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 804744CC  90 1E DB AC */	stw r0, -0x2454(r30)
lbl_804744D0:
/* 804744D0  39 61 00 20 */	addi r11, r1, 0x20
/* 804744D4  4B C2 6A 4D */	bl func_8009AF20
/* 804744D8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804744DC  7C 08 03 A6 */	mtlr r0
/* 804744E0  38 21 00 20 */	addi r1, r1, 0x20
/* 804744E4  4E 80 00 20 */	blr 
