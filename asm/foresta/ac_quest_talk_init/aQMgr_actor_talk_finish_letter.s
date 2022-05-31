lbl_8048D524:
/* 8048D524  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048D528  7C 08 02 A6 */	mflr r0
/* 8048D52C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048D530  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8048D534  93 C1 00 08 */	stw r30, 8(r1)
/* 8048D538  7C 7E 1B 78 */	mr r30, r3
/* 8048D53C  80 03 09 30 */	lwz r0, 0x930(r3)
/* 8048D540  1C 60 00 34 */	mulli r3, r0, 0x34
/* 8048D544  38 03 02 1C */	addi r0, r3, 0x21c
/* 8048D548  7F FE 00 2E */	lwzx r31, r30, r0
/* 8048D54C  4B F3 21 5D */	bl func_803BF6A8
/* 8048D550  38 BF 00 0E */	addi r5, r31, 0xe
/* 8048D554  38 80 00 0C */	li r4, 0xc
/* 8048D558  38 C0 00 08 */	li r6, 8
/* 8048D55C  4B F3 26 F9 */	bl mMsg_Set_free_str
/* 8048D560  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8048D564  38 7F 00 0E */	addi r3, r31, 0xe
/* 8048D568  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8048D56C  3C 84 00 02 */	addis r4, r4, 2
/* 8048D570  80 84 61 3C */	lwz r4, 0x613c(r4)
/* 8048D574  4B F5 2B D1 */	bl mPr_CheckCmpPersonalID
/* 8048D578  2C 03 00 01 */	cmpwi r3, 1
/* 8048D57C  40 82 00 10 */	bne lbl_8048D58C
/* 8048D580  38 00 1B 17 */	li r0, 0x1b17
/* 8048D584  90 1E 01 AC */	stw r0, 0x1ac(r30)
/* 8048D588  48 00 00 0C */	b lbl_8048D594
lbl_8048D58C:
/* 8048D58C  38 00 1B 29 */	li r0, 0x1b29
/* 8048D590  90 1E 01 AC */	stw r0, 0x1ac(r30)
lbl_8048D594:
/* 8048D594  81 9E 09 48 */	lwz r12, 0x948(r30)
/* 8048D598  7F C3 F3 78 */	mr r3, r30
/* 8048D59C  38 80 00 02 */	li r4, 2
/* 8048D5A0  7D 89 03 A6 */	mtctr r12
/* 8048D5A4  4E 80 04 21 */	bctrl 
/* 8048D5A8  4B F3 21 01 */	bl func_803BF6A8
/* 8048D5AC  80 9E 01 A8 */	lwz r4, 0x1a8(r30)
/* 8048D5B0  4B F3 2A 15 */	bl mMsg_Set_continue_msg_num
/* 8048D5B4  38 60 00 18 */	li r3, 0x18
/* 8048D5B8  38 00 00 00 */	li r0, 0
/* 8048D5BC  98 7E 01 86 */	stb r3, 0x186(r30)
/* 8048D5C0  7F C3 F3 78 */	mr r3, r30
/* 8048D5C4  98 1E 01 85 */	stb r0, 0x185(r30)
/* 8048D5C8  90 1E 02 00 */	stw r0, 0x200(r30)
/* 8048D5CC  4B FF E0 11 */	bl aQMgr_actor_talk_finish
/* 8048D5D0  4B F3 20 D9 */	bl func_803BF6A8
/* 8048D5D4  4B F3 37 55 */	bl mMsg_Set_ForceNext
/* 8048D5D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048D5DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8048D5E0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8048D5E4  7C 08 03 A6 */	mtlr r0
/* 8048D5E8  38 21 00 10 */	addi r1, r1, 0x10
/* 8048D5EC  4E 80 00 20 */	blr 
