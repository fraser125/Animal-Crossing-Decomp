lbl_8048507C:
/* 8048507C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80485080  7C 08 02 A6 */	mflr r0
/* 80485084  90 01 00 24 */	stw r0, 0x24(r1)
/* 80485088  39 61 00 20 */	addi r11, r1, 0x20
/* 8048508C  4B C1 5E 49 */	bl func_8009AED4
/* 80485090  3C A0 81 1D */	lis r5, data_811CE728@ha /* 0x811CE728@ha */
/* 80485094  7C 9E 23 78 */	mr r30, r4
/* 80485098  38 05 E7 28 */	addi r0, r5, data_811CE728@l /* 0x811CE728@l */
/* 8048509C  7C 7D 1B 78 */	mr r29, r3
/* 804850A0  7C 03 03 78 */	mr r3, r0
/* 804850A4  38 80 01 00 */	li r4, 0x100
/* 804850A8  38 A0 00 02 */	li r5, 2
/* 804850AC  4B BC 53 05 */	bl mGcgba_Read
/* 804850B0  2C 03 00 09 */	cmpwi r3, 9
/* 804850B4  41 82 00 A0 */	beq lbl_80485154
/* 804850B8  40 80 00 A8 */	bge lbl_80485160
/* 804850BC  2C 03 00 01 */	cmpwi r3, 1
/* 804850C0  41 82 00 08 */	beq lbl_804850C8
/* 804850C4  48 00 00 9C */	b lbl_80485160
lbl_804850C8:
/* 804850C8  4B BC 47 25 */	bl mGcgba_EndComm
/* 804850CC  7F C3 F3 78 */	mr r3, r30
/* 804850D0  4B FF F5 31 */	bl aPT_SendMail
/* 804850D4  7C 7F 1B 79 */	or. r31, r3, r3
/* 804850D8  41 82 00 4C */	beq lbl_80485124
/* 804850DC  4B F3 A5 CD */	bl func_803BF6A8
/* 804850E0  4B F3 BC 6D */	bl mMsg_Unset_LockContinue
/* 804850E4  2C 1F 00 01 */	cmpwi r31, 1
/* 804850E8  40 82 00 14 */	bne lbl_804850FC
/* 804850EC  4B F3 A5 BD */	bl func_803BF6A8
/* 804850F0  38 80 3D F5 */	li r4, 0x3df5
/* 804850F4  4B F3 AE D1 */	bl mMsg_Set_continue_msg_num
/* 804850F8  48 00 00 10 */	b lbl_80485108
lbl_804850FC:
/* 804850FC  4B F3 A5 AD */	bl func_803BF6A8
/* 80485100  38 80 3D F5 */	li r4, 0x3df5
/* 80485104  4B F3 AE C1 */	bl mMsg_Set_continue_msg_num
lbl_80485108:
/* 80485108  4B F3 A5 A1 */	bl func_803BF6A8
/* 8048510C  4B F3 BC 1D */	bl mMsg_Set_ForceNext
/* 80485110  7F A3 EB 78 */	mr r3, r29
/* 80485114  7F C4 F3 78 */	mr r4, r30
/* 80485118  38 A0 00 00 */	li r5, 0
/* 8048511C  48 00 00 8D */	bl aPT_Setup
/* 80485120  48 00 00 70 */	b lbl_80485190
lbl_80485124:
/* 80485124  4B F3 A5 85 */	bl func_803BF6A8
/* 80485128  4B F3 BC 25 */	bl mMsg_Unset_LockContinue
/* 8048512C  4B F3 A5 7D */	bl func_803BF6A8
/* 80485130  38 80 3D F7 */	li r4, 0x3df7
/* 80485134  4B F3 AE 91 */	bl mMsg_Set_continue_msg_num
/* 80485138  4B F3 A5 71 */	bl func_803BF6A8
/* 8048513C  4B F3 BB ED */	bl mMsg_Set_ForceNext
/* 80485140  7F A3 EB 78 */	mr r3, r29
/* 80485144  7F C4 F3 78 */	mr r4, r30
/* 80485148  38 A0 00 00 */	li r5, 0
/* 8048514C  48 00 00 5D */	bl aPT_Setup
/* 80485150  48 00 00 40 */	b lbl_80485190
lbl_80485154:
/* 80485154  7F A3 EB 78 */	mr r3, r29
/* 80485158  4B FF F9 A5 */	bl aPT_SetTransSE
/* 8048515C  48 00 00 34 */	b lbl_80485190
lbl_80485160:
/* 80485160  4B BC 46 8D */	bl mGcgba_EndComm
/* 80485164  4B F3 A5 45 */	bl func_803BF6A8
/* 80485168  4B F3 BB E5 */	bl mMsg_Unset_LockContinue
/* 8048516C  4B F3 A5 3D */	bl func_803BF6A8
/* 80485170  38 80 3D F0 */	li r4, 0x3df0
/* 80485174  4B F3 AE 51 */	bl mMsg_Set_continue_msg_num
/* 80485178  4B F3 A5 31 */	bl func_803BF6A8
/* 8048517C  4B F3 BB AD */	bl mMsg_Set_ForceNext
/* 80485180  7F A3 EB 78 */	mr r3, r29
/* 80485184  7F C4 F3 78 */	mr r4, r30
/* 80485188  38 A0 00 00 */	li r5, 0
/* 8048518C  48 00 00 1D */	bl aPT_Setup
lbl_80485190:
/* 80485190  39 61 00 20 */	addi r11, r1, 0x20
/* 80485194  4B C1 5D 8D */	bl func_8009AF20
/* 80485198  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8048519C  7C 08 03 A6 */	mtlr r0
/* 804851A0  38 21 00 20 */	addi r1, r1, 0x20
/* 804851A4  4E 80 00 20 */	blr 
