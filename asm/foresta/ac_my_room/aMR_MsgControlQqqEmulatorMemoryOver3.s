lbl_8047623C:
/* 8047623C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80476240  7C 08 02 A6 */	mflr r0
/* 80476244  90 01 00 14 */	stw r0, 0x14(r1)
/* 80476248  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8047624C  93 C1 00 08 */	stw r30, 8(r1)
/* 80476250  7C 7E 1B 78 */	mr r30, r3
/* 80476254  4B F0 D2 ED */	bl func_80383540
/* 80476258  4B F0 D9 15 */	bl mChoice_Get_ChoseNum
/* 8047625C  7C 7F 1B 78 */	mr r31, r3
/* 80476260  4B F0 D2 E1 */	bl func_80383540
/* 80476264  4B F0 E2 85 */	bl mChoice_no_b_close_set
/* 80476268  2C 1F FF FF */	cmpwi r31, -1
/* 8047626C  41 82 00 E8 */	beq lbl_80476354
/* 80476270  2C 1F 00 01 */	cmpwi r31, 1
/* 80476274  41 82 00 40 */	beq lbl_804762B4
/* 80476278  40 80 00 10 */	bge lbl_80476288
/* 8047627C  2C 1F 00 00 */	cmpwi r31, 0
/* 80476280  40 80 00 14 */	bge lbl_80476294
/* 80476284  48 00 00 AC */	b lbl_80476330
lbl_80476288:
/* 80476288  2C 1F 00 03 */	cmpwi r31, 3
/* 8047628C  40 80 00 A4 */	bge lbl_80476330
/* 80476290  48 00 00 44 */	b lbl_804762D4
lbl_80476294:
/* 80476294  38 60 00 00 */	li r3, 0
/* 80476298  38 00 00 2B */	li r0, 0x2b
/* 8047629C  90 7E 04 88 */	stw r3, 0x488(r30)
/* 804762A0  7F C3 F3 78 */	mr r3, r30
/* 804762A4  38 80 00 00 */	li r4, 0
/* 804762A8  B0 1E 03 EE */	sth r0, 0x3ee(r30)
/* 804762AC  4B FF E0 45 */	bl aMR_SetEmulatorStartMessage
/* 804762B0  48 00 00 A4 */	b lbl_80476354
lbl_804762B4:
/* 804762B4  38 60 FF FF */	li r3, -1
/* 804762B8  38 00 00 2B */	li r0, 0x2b
/* 804762BC  90 7E 04 88 */	stw r3, 0x488(r30)
/* 804762C0  7F C3 F3 78 */	mr r3, r30
/* 804762C4  38 80 00 00 */	li r4, 0
/* 804762C8  B0 1E 03 EE */	sth r0, 0x3ee(r30)
/* 804762CC  4B FF E0 25 */	bl aMR_SetEmulatorStartMessage
/* 804762D0  48 00 00 84 */	b lbl_80476354
lbl_804762D4:
/* 804762D4  7F C3 F3 78 */	mr r3, r30
/* 804762D8  38 80 00 02 */	li r4, 2
/* 804762DC  4B FF DE 29 */	bl aMR_ReportDisplayMemoryGameSelectCount
/* 804762E0  80 7E 04 9C */	lwz r3, 0x49c(r30)
/* 804762E4  80 1E 04 98 */	lwz r0, 0x498(r30)
/* 804762E8  7C 03 00 50 */	subf r0, r3, r0
/* 804762EC  2C 00 00 02 */	cmpwi r0, 2
/* 804762F0  40 80 00 0C */	bge lbl_804762FC
/* 804762F4  2C 00 00 00 */	cmpwi r0, 0
/* 804762F8  40 82 00 10 */	bne lbl_80476308
lbl_804762FC:
/* 804762FC  38 00 00 30 */	li r0, 0x30
/* 80476300  B0 1E 03 EE */	sth r0, 0x3ee(r30)
/* 80476304  48 00 00 0C */	b lbl_80476310
lbl_80476308:
/* 80476308  38 00 00 2E */	li r0, 0x2e
/* 8047630C  B0 1E 03 EE */	sth r0, 0x3ee(r30)
lbl_80476310:
/* 80476310  4B F4 93 99 */	bl func_803BF6A8
/* 80476314  38 80 30 69 */	li r4, 0x3069
/* 80476318  4B F4 9C AD */	bl mMsg_Set_continue_msg_num
/* 8047631C  4B F4 93 8D */	bl func_803BF6A8
/* 80476320  4B F4 AA 2D */	bl mMsg_Unset_LockContinue
/* 80476324  4B F4 93 85 */	bl func_803BF6A8
/* 80476328  4B F4 AA 01 */	bl mMsg_Set_ForceNext
/* 8047632C  48 00 00 28 */	b lbl_80476354
lbl_80476330:
/* 80476330  38 00 00 00 */	li r0, 0
/* 80476334  B0 1E 03 EE */	sth r0, 0x3ee(r30)
/* 80476338  90 1E 04 84 */	stw r0, 0x484(r30)
/* 8047633C  4B F4 93 6D */	bl func_803BF6A8
/* 80476340  4B F4 A9 D1 */	bl mMsg_Set_CancelNormalContinue
/* 80476344  4B F4 93 65 */	bl func_803BF6A8
/* 80476348  4B F4 AA 05 */	bl mMsg_Unset_LockContinue
/* 8047634C  4B F4 93 5D */	bl func_803BF6A8
/* 80476350  4B F4 A9 D9 */	bl mMsg_Set_ForceNext
lbl_80476354:
/* 80476354  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80476358  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8047635C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80476360  7C 08 03 A6 */	mtlr r0
/* 80476364  38 21 00 10 */	addi r1, r1, 0x10
/* 80476368  4E 80 00 20 */	blr 
