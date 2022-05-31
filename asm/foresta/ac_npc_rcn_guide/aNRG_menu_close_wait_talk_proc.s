lbl_8056F268:
/* 8056F268  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056F26C  7C 08 02 A6 */	mflr r0
/* 8056F270  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056F274  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8056F278  93 C1 00 08 */	stw r30, 8(r1)
/* 8056F27C  7C 7E 1B 78 */	mr r30, r3
/* 8056F280  88 04 1F 4E */	lbz r0, 0x1f4e(r4)
/* 8056F284  28 00 00 00 */	cmplwi r0, 0
/* 8056F288  40 82 00 54 */	bne lbl_8056F2DC
/* 8056F28C  80 84 1F 60 */	lwz r4, 0x1f60(r4)
/* 8056F290  A0 04 00 00 */	lhz r0, 0(r4)
/* 8056F294  28 00 00 00 */	cmplwi r0, 0
/* 8056F298  40 82 00 3C */	bne lbl_8056F2D4
/* 8056F29C  4B E5 04 0D */	bl func_803BF6A8
/* 8056F2A0  7C 7F 1B 78 */	mr r31, r3
/* 8056F2A4  4B E5 08 E5 */	bl mMsg_request_main_appear_wait_type1
/* 8056F2A8  7F E3 FB 78 */	mr r3, r31
/* 8056F2AC  38 80 07 EB */	li r4, 0x7eb
/* 8056F2B0  4B E5 16 E9 */	bl mMsg_ChangeMsgData
/* 8056F2B4  7F E3 FB 78 */	mr r3, r31
/* 8056F2B8  4B E5 1A 71 */	bl mMsg_Set_ForceNext
/* 8056F2BC  7F E3 FB 78 */	mr r3, r31
/* 8056F2C0  4B E5 1A 8D */	bl mMsg_Unset_LockContinue
/* 8056F2C4  7F C3 F3 78 */	mr r3, r30
/* 8056F2C8  38 80 00 00 */	li r4, 0
/* 8056F2CC  48 00 01 0D */	bl aNRG_demand_payment_change_talk_proc
/* 8056F2D0  48 00 00 0C */	b lbl_8056F2DC
lbl_8056F2D4:
/* 8056F2D4  38 80 00 03 */	li r4, 3
/* 8056F2D8  48 00 01 01 */	bl aNRG_demand_payment_change_talk_proc
lbl_8056F2DC:
/* 8056F2DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056F2E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8056F2E4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8056F2E8  7C 08 03 A6 */	mtlr r0
/* 8056F2EC  38 21 00 10 */	addi r1, r1, 0x10
/* 8056F2F0  4E 80 00 20 */	blr 
