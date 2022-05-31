lbl_80475F40:
/* 80475F40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80475F44  7C 08 02 A6 */	mflr r0
/* 80475F48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80475F4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80475F50  93 C1 00 08 */	stw r30, 8(r1)
/* 80475F54  7C 7E 1B 78 */	mr r30, r3
/* 80475F58  4B F0 D5 E9 */	bl func_80383540
/* 80475F5C  4B F0 DC 11 */	bl mChoice_Get_ChoseNum
/* 80475F60  7C 7F 1B 78 */	mr r31, r3
/* 80475F64  4B F0 D5 DD */	bl func_80383540
/* 80475F68  4B F0 E5 81 */	bl mChoice_no_b_close_set
/* 80475F6C  2C 1F FF FF */	cmpwi r31, -1
/* 80475F70  41 82 00 80 */	beq lbl_80475FF0
/* 80475F74  2C 1F 00 01 */	cmpwi r31, 1
/* 80475F78  41 82 00 34 */	beq lbl_80475FAC
/* 80475F7C  40 80 00 50 */	bge lbl_80475FCC
/* 80475F80  2C 1F 00 00 */	cmpwi r31, 0
/* 80475F84  40 80 00 08 */	bge lbl_80475F8C
/* 80475F88  48 00 00 44 */	b lbl_80475FCC
lbl_80475F8C:
/* 80475F8C  38 60 00 00 */	li r3, 0
/* 80475F90  38 00 00 2B */	li r0, 0x2b
/* 80475F94  90 7E 04 88 */	stw r3, 0x488(r30)
/* 80475F98  7F C3 F3 78 */	mr r3, r30
/* 80475F9C  38 80 00 00 */	li r4, 0
/* 80475FA0  B0 1E 03 EE */	sth r0, 0x3ee(r30)
/* 80475FA4  4B FF E3 4D */	bl aMR_SetEmulatorStartMessage
/* 80475FA8  48 00 00 48 */	b lbl_80475FF0
lbl_80475FAC:
/* 80475FAC  38 00 00 3C */	li r0, 0x3c
/* 80475FB0  B0 1E 03 EE */	sth r0, 0x3ee(r30)
/* 80475FB4  4B F4 96 F5 */	bl func_803BF6A8
/* 80475FB8  38 80 3B 57 */	li r4, 0x3b57
/* 80475FBC  4B F4 A0 09 */	bl mMsg_Set_continue_msg_num
/* 80475FC0  4B F4 96 E9 */	bl func_803BF6A8
/* 80475FC4  4B F4 AD 65 */	bl mMsg_Set_ForceNext
/* 80475FC8  48 00 00 28 */	b lbl_80475FF0
lbl_80475FCC:
/* 80475FCC  38 00 00 00 */	li r0, 0
/* 80475FD0  B0 1E 03 EE */	sth r0, 0x3ee(r30)
/* 80475FD4  90 1E 04 84 */	stw r0, 0x484(r30)
/* 80475FD8  4B F4 96 D1 */	bl func_803BF6A8
/* 80475FDC  4B F4 AD 35 */	bl mMsg_Set_CancelNormalContinue
/* 80475FE0  4B F4 96 C9 */	bl func_803BF6A8
/* 80475FE4  4B F4 AD 69 */	bl mMsg_Unset_LockContinue
/* 80475FE8  4B F4 96 C1 */	bl func_803BF6A8
/* 80475FEC  4B F4 AD 3D */	bl mMsg_Set_ForceNext
lbl_80475FF0:
/* 80475FF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80475FF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80475FF8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80475FFC  7C 08 03 A6 */	mtlr r0
/* 80476000  38 21 00 10 */	addi r1, r1, 0x10
/* 80476004  4E 80 00 20 */	blr 
