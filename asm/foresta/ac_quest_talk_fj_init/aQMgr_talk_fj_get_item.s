lbl_80487F10:
/* 80487F10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80487F14  7C 08 02 A6 */	mflr r0
/* 80487F18  90 01 00 14 */	stw r0, 0x14(r1)
/* 80487F1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80487F20  7C 7F 1B 78 */	mr r31, r3
/* 80487F24  A0 03 01 C4 */	lhz r0, 0x1c4(r3)
/* 80487F28  28 00 00 00 */	cmplwi r0, 0
/* 80487F2C  41 82 00 34 */	beq lbl_80487F60
/* 80487F30  38 60 00 04 */	li r3, 4
/* 80487F34  38 00 00 06 */	li r0, 6
/* 80487F38  90 7F 01 B0 */	stw r3, 0x1b0(r31)
/* 80487F3C  38 80 00 00 */	li r4, 0
/* 80487F40  98 1F 01 86 */	stb r0, 0x186(r31)
/* 80487F44  A0 7F 01 C4 */	lhz r3, 0x1c4(r31)
/* 80487F48  4B F5 B6 ED */	bl mQst_SetItemNameStr
/* 80487F4C  38 00 00 02 */	li r0, 2
/* 80487F50  7F E3 FB 78 */	mr r3, r31
/* 80487F54  98 1F 01 85 */	stb r0, 0x185(r31)
/* 80487F58  4B FF FA 59 */	bl aQMgr_fj_set_msg_no
/* 80487F5C  48 00 00 38 */	b lbl_80487F94
lbl_80487F60:
/* 80487F60  38 00 FF FF */	li r0, -1
/* 80487F64  38 C0 00 00 */	li r6, 0
/* 80487F68  90 1F 09 30 */	stw r0, 0x930(r31)
/* 80487F6C  38 A0 00 0D */	li r5, 0xd
/* 80487F70  38 00 04 AB */	li r0, 0x4ab
/* 80487F74  38 80 00 02 */	li r4, 2
/* 80487F78  90 DF 02 00 */	stw r6, 0x200(r31)
/* 80487F7C  90 BF 01 B0 */	stw r5, 0x1b0(r31)
/* 80487F80  90 1F 01 AC */	stw r0, 0x1ac(r31)
/* 80487F84  98 DF 01 85 */	stb r6, 0x185(r31)
/* 80487F88  81 9F 09 48 */	lwz r12, 0x948(r31)
/* 80487F8C  7D 89 03 A6 */	mtctr r12
/* 80487F90  4E 80 04 21 */	bctrl 
lbl_80487F94:
/* 80487F94  4B F3 77 15 */	bl func_803BF6A8
/* 80487F98  80 9F 01 A8 */	lwz r4, 0x1a8(r31)
/* 80487F9C  4B F3 89 FD */	bl mMsg_ChangeMsgData
/* 80487FA0  4B F3 77 09 */	bl func_803BF6A8
/* 80487FA4  4B F3 7B E5 */	bl mMsg_request_main_appear_wait_type1
/* 80487FA8  4B F3 77 01 */	bl func_803BF6A8
/* 80487FAC  4B F3 8D A1 */	bl mMsg_Unset_LockContinue
/* 80487FB0  4B F3 76 F9 */	bl func_803BF6A8
/* 80487FB4  4B F3 8D 75 */	bl mMsg_Set_ForceNext
/* 80487FB8  4B F3 76 F1 */	bl func_803BF6A8
/* 80487FBC  80 9F 01 A8 */	lwz r4, 0x1a8(r31)
/* 80487FC0  4B F3 80 05 */	bl mMsg_Set_continue_msg_num
/* 80487FC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80487FC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80487FCC  7C 08 03 A6 */	mtlr r0
/* 80487FD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80487FD4  4E 80 00 20 */	blr 
