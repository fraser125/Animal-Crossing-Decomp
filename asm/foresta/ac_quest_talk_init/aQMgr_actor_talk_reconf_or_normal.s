lbl_8048C2BC:
/* 8048C2BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048C2C0  7C 08 02 A6 */	mflr r0
/* 8048C2C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048C2C8  38 00 00 00 */	li r0, 0
/* 8048C2CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8048C2D0  7C 7F 1B 78 */	mr r31, r3
/* 8048C2D4  98 03 01 85 */	stb r0, 0x185(r3)
/* 8048C2D8  80 03 01 A4 */	lwz r0, 0x1a4(r3)
/* 8048C2DC  2C 00 00 00 */	cmpwi r0, 0
/* 8048C2E0  40 82 00 40 */	bne lbl_8048C320
/* 8048C2E4  38 60 00 02 */	li r3, 2
/* 8048C2E8  38 00 FF FF */	li r0, -1
/* 8048C2EC  90 7F 01 B0 */	stw r3, 0x1b0(r31)
/* 8048C2F0  90 1F 01 A4 */	stw r0, 0x1a4(r31)
/* 8048C2F4  4B F3 33 B5 */	bl func_803BF6A8
/* 8048C2F8  4B F3 4A 31 */	bl mMsg_Set_ForceNext
/* 8048C2FC  81 9F 09 48 */	lwz r12, 0x948(r31)
/* 8048C300  7F E3 FB 78 */	mr r3, r31
/* 8048C304  38 80 00 02 */	li r4, 2
/* 8048C308  7D 89 03 A6 */	mtctr r12
/* 8048C30C  4E 80 04 21 */	bctrl 
/* 8048C310  4B F3 33 99 */	bl func_803BF6A8
/* 8048C314  80 9F 01 A8 */	lwz r4, 0x1a8(r31)
/* 8048C318  4B F3 3C AD */	bl mMsg_Set_continue_msg_num
/* 8048C31C  48 00 00 08 */	b lbl_8048C324
lbl_8048C320:
/* 8048C320  4B FF F7 A1 */	bl aQMgr_talk_quest_change_normal_or_hint
lbl_8048C324:
/* 8048C324  38 00 00 00 */	li r0, 0
/* 8048C328  98 1F 01 85 */	stb r0, 0x185(r31)
/* 8048C32C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048C330  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8048C334  7C 08 03 A6 */	mtlr r0
/* 8048C338  38 21 00 10 */	addi r1, r1, 0x10
/* 8048C33C  4E 80 00 20 */	blr 
