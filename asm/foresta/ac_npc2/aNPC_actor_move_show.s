lbl_8053DF00:
/* 8053DF00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053DF04  7C 08 02 A6 */	mflr r0
/* 8053DF08  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053DF0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8053DF10  7C 7F 1B 78 */	mr r31, r3
/* 8053DF14  93 C1 00 08 */	stw r30, 8(r1)
/* 8053DF18  7C 9E 23 78 */	mr r30, r4
/* 8053DF1C  4B FF FA FD */	bl aNPC_set_over_friendship
/* 8053DF20  7F E3 FB 78 */	mr r3, r31
/* 8053DF24  7F C4 F3 78 */	mr r4, r30
/* 8053DF28  4B FF FF 0D */	bl aNPC_actor_move_show_before
/* 8053DF2C  7F E3 FB 78 */	mr r3, r31
/* 8053DF30  7F C4 F3 78 */	mr r4, r30
/* 8053DF34  48 00 54 B1 */	bl aNPC_schedule_proc
/* 8053DF38  7F E3 FB 78 */	mr r3, r31
/* 8053DF3C  7F C4 F3 78 */	mr r4, r30
/* 8053DF40  48 00 14 BD */	bl aNPC_action_proc
/* 8053DF44  7F E3 FB 78 */	mr r3, r31
/* 8053DF48  7F C4 F3 78 */	mr r4, r30
/* 8053DF4C  4B FF F8 9D */	bl aNPC_talk_request_check
/* 8053DF50  7F E3 FB 78 */	mr r3, r31
/* 8053DF54  4B FF FD 15 */	bl aNPC_angle_calc
/* 8053DF58  7F E3 FB 78 */	mr r3, r31
/* 8053DF5C  4B FF FD B9 */	bl aNPC_calc_fatigue
/* 8053DF60  7F E3 FB 78 */	mr r3, r31
/* 8053DF64  7F C4 F3 78 */	mr r4, r30
/* 8053DF68  4B FF FF 15 */	bl aNPC_actor_move_show_after
/* 8053DF6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053DF70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8053DF74  83 C1 00 08 */	lwz r30, 8(r1)
/* 8053DF78  7C 08 03 A6 */	mtlr r0
/* 8053DF7C  38 21 00 10 */	addi r1, r1, 0x10
/* 8053DF80  4E 80 00 20 */	blr 
