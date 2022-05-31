lbl_804760AC:
/* 804760AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804760B0  7C 08 02 A6 */	mflr r0
/* 804760B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804760B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804760BC  93 C1 00 08 */	stw r30, 8(r1)
/* 804760C0  7C 7E 1B 78 */	mr r30, r3
/* 804760C4  4B F0 D4 7D */	bl func_80383540
/* 804760C8  4B F0 DA A5 */	bl mChoice_Get_ChoseNum
/* 804760CC  7C 7F 1B 78 */	mr r31, r3
/* 804760D0  4B F0 D4 71 */	bl func_80383540
/* 804760D4  4B F0 E4 15 */	bl mChoice_no_b_close_set
/* 804760D8  2C 1F FF FF */	cmpwi r31, -1
/* 804760DC  41 82 00 80 */	beq lbl_8047615C
/* 804760E0  2C 1F 00 01 */	cmpwi r31, 1
/* 804760E4  41 82 00 34 */	beq lbl_80476118
/* 804760E8  40 80 00 50 */	bge lbl_80476138
/* 804760EC  2C 1F 00 00 */	cmpwi r31, 0
/* 804760F0  40 80 00 08 */	bge lbl_804760F8
/* 804760F4  48 00 00 44 */	b lbl_80476138
lbl_804760F8:
/* 804760F8  38 60 00 00 */	li r3, 0
/* 804760FC  38 00 00 2B */	li r0, 0x2b
/* 80476100  90 7E 04 88 */	stw r3, 0x488(r30)
/* 80476104  7F C3 F3 78 */	mr r3, r30
/* 80476108  38 80 00 00 */	li r4, 0
/* 8047610C  B0 1E 03 EE */	sth r0, 0x3ee(r30)
/* 80476110  4B FF E1 E1 */	bl aMR_SetEmulatorStartMessage
/* 80476114  48 00 00 48 */	b lbl_8047615C
lbl_80476118:
/* 80476118  38 60 FF FF */	li r3, -1
/* 8047611C  38 00 00 2B */	li r0, 0x2b
/* 80476120  90 7E 04 88 */	stw r3, 0x488(r30)
/* 80476124  7F C3 F3 78 */	mr r3, r30
/* 80476128  38 80 00 00 */	li r4, 0
/* 8047612C  B0 1E 03 EE */	sth r0, 0x3ee(r30)
/* 80476130  4B FF E1 C1 */	bl aMR_SetEmulatorStartMessage
/* 80476134  48 00 00 28 */	b lbl_8047615C
lbl_80476138:
/* 80476138  38 00 00 00 */	li r0, 0
/* 8047613C  B0 1E 03 EE */	sth r0, 0x3ee(r30)
/* 80476140  90 1E 04 84 */	stw r0, 0x484(r30)
/* 80476144  4B F4 95 65 */	bl func_803BF6A8
/* 80476148  4B F4 AB C9 */	bl mMsg_Set_CancelNormalContinue
/* 8047614C  4B F4 95 5D */	bl func_803BF6A8
/* 80476150  4B F4 AB FD */	bl mMsg_Unset_LockContinue
/* 80476154  4B F4 95 55 */	bl func_803BF6A8
/* 80476158  4B F4 AB D1 */	bl mMsg_Set_ForceNext
lbl_8047615C:
/* 8047615C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80476160  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80476164  83 C1 00 08 */	lwz r30, 8(r1)
/* 80476168  7C 08 03 A6 */	mtlr r0
/* 8047616C  38 21 00 10 */	addi r1, r1, 0x10
/* 80476170  4E 80 00 20 */	blr 
