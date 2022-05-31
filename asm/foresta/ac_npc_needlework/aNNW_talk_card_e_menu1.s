lbl_805640EC:
/* 805640EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805640F0  7C 08 02 A6 */	mflr r0
/* 805640F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805640F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805640FC  7C 9F 23 78 */	mr r31, r4
/* 80564100  93 C1 00 08 */	stw r30, 8(r1)
/* 80564104  7C 7E 1B 78 */	mr r30, r3
/* 80564108  4B E5 B5 A1 */	bl func_803BF6A8
/* 8056410C  88 1F 1F 4E */	lbz r0, 0x1f4e(r31)
/* 80564110  7C 7F 1B 78 */	mr r31, r3
/* 80564114  28 00 00 00 */	cmplwi r0, 0
/* 80564118  40 82 00 1C */	bne lbl_80564134
/* 8056411C  38 80 30 10 */	li r4, 0x3010
/* 80564120  4B E5 BE A5 */	bl mMsg_Set_continue_msg_num
/* 80564124  7F E3 FB 78 */	mr r3, r31
/* 80564128  4B E5 BA 61 */	bl mMsg_request_main_appear_wait_type1
/* 8056412C  7F C3 F3 78 */	mr r3, r30
/* 80564130  48 00 03 6D */	bl aNNW_change_talk_proc_next
lbl_80564134:
/* 80564134  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80564138  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8056413C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80564140  7C 08 03 A6 */	mtlr r0
/* 80564144  38 21 00 10 */	addi r1, r1, 0x10
/* 80564148  4E 80 00 20 */	blr 
