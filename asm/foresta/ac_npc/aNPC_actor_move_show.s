lbl_8052FEF4:
/* 8052FEF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052FEF8  7C 08 02 A6 */	mflr r0
/* 8052FEFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052FF00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8052FF04  7C 7F 1B 78 */	mr r31, r3
/* 8052FF08  93 C1 00 08 */	stw r30, 8(r1)
/* 8052FF0C  7C 9E 23 78 */	mr r30, r4
/* 8052FF10  4B FF F6 71 */	bl aNPC_set_over_friendship
/* 8052FF14  7F E3 FB 78 */	mr r3, r31
/* 8052FF18  7F C4 F3 78 */	mr r4, r30
/* 8052FF1C  4B FF FE F5 */	bl aNPC_actor_move_show_before
/* 8052FF20  80 1F 08 40 */	lwz r0, 0x840(r31)
/* 8052FF24  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8052FF28  40 82 00 24 */	bne lbl_8052FF4C
/* 8052FF2C  7F E3 FB 78 */	mr r3, r31
/* 8052FF30  4B FF F7 F9 */	bl aNPC_forward_check
/* 8052FF34  7F E3 FB 78 */	mr r3, r31
/* 8052FF38  7F E4 FB 78 */	mr r4, r31
/* 8052FF3C  4B FF FB 7D */	bl aNPC_around_obj_check
/* 8052FF40  7F E3 FB 78 */	mr r3, r31
/* 8052FF44  7F C4 F3 78 */	mr r4, r30
/* 8052FF48  48 00 AC 39 */	bl aNPC_talk_area_check
lbl_8052FF4C:
/* 8052FF4C  7F E3 FB 78 */	mr r3, r31
/* 8052FF50  7F C4 F3 78 */	mr r4, r30
/* 8052FF54  48 00 81 BD */	bl aNPC_schedule_proc
/* 8052FF58  7F E3 FB 78 */	mr r3, r31
/* 8052FF5C  7F C4 F3 78 */	mr r4, r30
/* 8052FF60  48 00 16 F9 */	bl aNPC_action_proc
/* 8052FF64  7F E3 FB 78 */	mr r3, r31
/* 8052FF68  7F C4 F3 78 */	mr r4, r30
/* 8052FF6C  4B FF EC ED */	bl aNPC_talk_request_check
/* 8052FF70  7F E3 FB 78 */	mr r3, r31
/* 8052FF74  4B FF FA 99 */	bl aNPC_angle_calc
/* 8052FF78  7F E3 FB 78 */	mr r3, r31
/* 8052FF7C  7F C4 F3 78 */	mr r4, r30
/* 8052FF80  4B FF FC CD */	bl aNPC_calc_fatigue
/* 8052FF84  7F E3 FB 78 */	mr r3, r31
/* 8052FF88  7F C4 F3 78 */	mr r4, r30
/* 8052FF8C  4B FF FE E5 */	bl aNPC_actor_move_show_after
/* 8052FF90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052FF94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8052FF98  83 C1 00 08 */	lwz r30, 8(r1)
/* 8052FF9C  7C 08 03 A6 */	mtlr r0
/* 8052FFA0  38 21 00 10 */	addi r1, r1, 0x10
/* 8052FFA4  4E 80 00 20 */	blr 
