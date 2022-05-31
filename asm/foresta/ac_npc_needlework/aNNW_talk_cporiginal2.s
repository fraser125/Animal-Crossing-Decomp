lbl_80563F18:
/* 80563F18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80563F1C  7C 08 02 A6 */	mflr r0
/* 80563F20  90 01 00 14 */	stw r0, 0x14(r1)
/* 80563F24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80563F28  7C 9F 23 78 */	mr r31, r4
/* 80563F2C  93 C1 00 08 */	stw r30, 8(r1)
/* 80563F30  7C 7E 1B 78 */	mr r30, r3
/* 80563F34  4B E5 B7 75 */	bl func_803BF6A8
/* 80563F38  88 1F 1F 4E */	lbz r0, 0x1f4e(r31)
/* 80563F3C  7C 7F 1B 78 */	mr r31, r3
/* 80563F40  28 00 00 00 */	cmplwi r0, 0
/* 80563F44  40 82 00 48 */	bne lbl_80563F8C
/* 80563F48  48 06 92 C9 */	bl mCO_get_change_flg
/* 80563F4C  2C 03 00 00 */	cmpwi r3, 0
/* 80563F50  41 82 00 14 */	beq lbl_80563F64
/* 80563F54  7F C3 F3 78 */	mr r3, r30
/* 80563F58  38 80 00 33 */	li r4, 0x33
/* 80563F5C  48 00 05 2D */	bl aNNW_change_talk_proc
/* 80563F60  48 00 00 2C */	b lbl_80563F8C
lbl_80563F64:
/* 80563F64  7F E3 FB 78 */	mr r3, r31
/* 80563F68  38 80 2F F0 */	li r4, 0x2ff0
/* 80563F6C  4B E5 C0 59 */	bl mMsg_Set_continue_msg_num
/* 80563F70  7F E3 FB 78 */	mr r3, r31
/* 80563F74  4B E5 BC 15 */	bl mMsg_request_main_appear_wait_type1
/* 80563F78  7F E3 FB 78 */	mr r3, r31
/* 80563F7C  4B E5 CD AD */	bl mMsg_Set_ForceNext
/* 80563F80  7F C3 F3 78 */	mr r3, r30
/* 80563F84  38 80 00 01 */	li r4, 1
/* 80563F88  48 00 05 01 */	bl aNNW_change_talk_proc
lbl_80563F8C:
/* 80563F8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80563F90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80563F94  83 C1 00 08 */	lwz r30, 8(r1)
/* 80563F98  7C 08 03 A6 */	mtlr r0
/* 80563F9C  38 21 00 10 */	addi r1, r1, 0x10
/* 80563FA0  4E 80 00 20 */	blr 
