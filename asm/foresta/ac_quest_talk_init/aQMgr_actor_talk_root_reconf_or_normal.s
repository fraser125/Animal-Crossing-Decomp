lbl_8048C340:
/* 8048C340  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048C344  7C 08 02 A6 */	mflr r0
/* 8048C348  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048C34C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8048C350  7C 7F 1B 78 */	mr r31, r3
/* 8048C354  80 03 01 A4 */	lwz r0, 0x1a4(r3)
/* 8048C358  2C 00 00 00 */	cmpwi r0, 0
/* 8048C35C  40 82 00 40 */	bne lbl_8048C39C
/* 8048C360  38 60 03 D4 */	li r3, 0x3d4
/* 8048C364  38 00 FF FF */	li r0, -1
/* 8048C368  90 7F 01 AC */	stw r3, 0x1ac(r31)
/* 8048C36C  90 1F 01 A4 */	stw r0, 0x1a4(r31)
/* 8048C370  4B F3 33 39 */	bl func_803BF6A8
/* 8048C374  4B F3 49 B5 */	bl mMsg_Set_ForceNext
/* 8048C378  81 9F 09 48 */	lwz r12, 0x948(r31)
/* 8048C37C  7F E3 FB 78 */	mr r3, r31
/* 8048C380  38 80 00 02 */	li r4, 2
/* 8048C384  7D 89 03 A6 */	mtctr r12
/* 8048C388  4E 80 04 21 */	bctrl 
/* 8048C38C  4B F3 33 1D */	bl func_803BF6A8
/* 8048C390  80 9F 01 A8 */	lwz r4, 0x1a8(r31)
/* 8048C394  4B F3 3C 31 */	bl mMsg_Set_continue_msg_num
/* 8048C398  48 00 00 08 */	b lbl_8048C3A0
lbl_8048C39C:
/* 8048C39C  4B FF F7 25 */	bl aQMgr_talk_quest_change_normal_or_hint
lbl_8048C3A0:
/* 8048C3A0  38 00 00 00 */	li r0, 0
/* 8048C3A4  98 1F 01 85 */	stb r0, 0x185(r31)
/* 8048C3A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048C3AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8048C3B0  7C 08 03 A6 */	mtlr r0
/* 8048C3B4  38 21 00 10 */	addi r1, r1, 0x10
/* 8048C3B8  4E 80 00 20 */	blr 
