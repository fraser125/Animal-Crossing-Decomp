lbl_80563804:
/* 80563804  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80563808  7C 08 02 A6 */	mflr r0
/* 8056380C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80563810  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80563814  7C 9F 23 78 */	mr r31, r4
/* 80563818  93 C1 00 08 */	stw r30, 8(r1)
/* 8056381C  7C 7E 1B 78 */	mr r30, r3
/* 80563820  4B E5 BE 89 */	bl func_803BF6A8
/* 80563824  7C 60 1B 78 */	mr r0, r3
/* 80563828  7F E3 FB 78 */	mr r3, r31
/* 8056382C  7C 1F 03 78 */	mr r31, r0
/* 80563830  4B E7 5E 41 */	bl mPlib_get_player_actor_main_index
/* 80563834  2C 03 00 65 */	cmpwi r3, 0x65
/* 80563838  41 82 00 9C */	beq lbl_805638D4
/* 8056383C  7F E3 FB 78 */	mr r3, r31
/* 80563840  4B E5 D4 E9 */	bl mMsg_Set_ForceNext
/* 80563844  7F E3 FB 78 */	mr r3, r31
/* 80563848  4B E5 C3 41 */	bl mMsg_request_main_appear_wait_type1
/* 8056384C  88 1E 09 B2 */	lbz r0, 0x9b2(r30)
/* 80563850  2C 00 00 34 */	cmpwi r0, 0x34
/* 80563854  41 82 00 3C */	beq lbl_80563890
/* 80563858  40 80 00 10 */	bge lbl_80563868
/* 8056385C  2C 00 00 32 */	cmpwi r0, 0x32
/* 80563860  41 82 00 14 */	beq lbl_80563874
/* 80563864  48 00 00 64 */	b lbl_805638C8
lbl_80563868:
/* 80563868  2C 00 00 36 */	cmpwi r0, 0x36
/* 8056386C  41 82 00 40 */	beq lbl_805638AC
/* 80563870  48 00 00 58 */	b lbl_805638C8
lbl_80563874:
/* 80563874  7F E3 FB 78 */	mr r3, r31
/* 80563878  38 80 2F EB */	li r4, 0x2feb
/* 8056387C  4B E5 D1 1D */	bl mMsg_ChangeMsgData
/* 80563880  7F C3 F3 78 */	mr r3, r30
/* 80563884  38 80 00 01 */	li r4, 1
/* 80563888  48 00 0C 01 */	bl aNNW_change_talk_proc
/* 8056388C  48 00 00 48 */	b lbl_805638D4
lbl_80563890:
/* 80563890  7F E3 FB 78 */	mr r3, r31
/* 80563894  38 80 2F F0 */	li r4, 0x2ff0
/* 80563898  4B E5 C7 2D */	bl mMsg_Set_continue_msg_num
/* 8056389C  7F C3 F3 78 */	mr r3, r30
/* 805638A0  38 80 00 01 */	li r4, 1
/* 805638A4  48 00 0B E5 */	bl aNNW_change_talk_proc
/* 805638A8  48 00 00 2C */	b lbl_805638D4
lbl_805638AC:
/* 805638AC  4B E5 BD FD */	bl func_803BF6A8
/* 805638B0  38 80 30 0F */	li r4, 0x300f
/* 805638B4  4B E5 C7 11 */	bl mMsg_Set_continue_msg_num
/* 805638B8  7F C3 F3 78 */	mr r3, r30
/* 805638BC  38 80 00 01 */	li r4, 1
/* 805638C0  48 00 0B C9 */	bl aNNW_change_talk_proc
/* 805638C4  48 00 00 10 */	b lbl_805638D4
lbl_805638C8:
/* 805638C8  7F C3 F3 78 */	mr r3, r30
/* 805638CC  38 80 00 41 */	li r4, 0x41
/* 805638D0  48 00 0B B9 */	bl aNNW_change_talk_proc
lbl_805638D4:
/* 805638D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805638D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805638DC  83 C1 00 08 */	lwz r30, 8(r1)
/* 805638E0  7C 08 03 A6 */	mtlr r0
/* 805638E4  38 21 00 10 */	addi r1, r1, 0x10
/* 805638E8  4E 80 00 20 */	blr 
