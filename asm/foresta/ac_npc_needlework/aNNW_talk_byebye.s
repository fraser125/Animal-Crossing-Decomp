lbl_805636C4:
/* 805636C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805636C8  7C 08 02 A6 */	mflr r0
/* 805636CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805636D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805636D4  93 C1 00 08 */	stw r30, 8(r1)
/* 805636D8  7C 7E 1B 78 */	mr r30, r3
/* 805636DC  4B E5 BF CD */	bl func_803BF6A8
/* 805636E0  7C 7F 1B 78 */	mr r31, r3
/* 805636E4  4B E5 D6 85 */	bl mMsg_Check_idling_now
/* 805636E8  2C 03 00 01 */	cmpwi r3, 1
/* 805636EC  40 82 00 18 */	bne lbl_80563704
/* 805636F0  7F E3 FB 78 */	mr r3, r31
/* 805636F4  4B E5 C3 51 */	bl mMsg_request_main_disappear_wait_type1
/* 805636F8  7F C3 F3 78 */	mr r3, r30
/* 805636FC  38 80 00 2E */	li r4, 0x2e
/* 80563700  48 00 0D 89 */	bl aNNW_change_talk_proc
lbl_80563704:
/* 80563704  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80563708  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8056370C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80563710  7C 08 03 A6 */	mtlr r0
/* 80563714  38 21 00 10 */	addi r1, r1, 0x10
/* 80563718  4E 80 00 20 */	blr 
