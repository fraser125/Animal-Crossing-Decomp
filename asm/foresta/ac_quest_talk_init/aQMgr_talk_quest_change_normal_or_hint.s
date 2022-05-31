lbl_8048BAC0:
/* 8048BAC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048BAC4  7C 08 02 A6 */	mflr r0
/* 8048BAC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048BACC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8048BAD0  7C 7F 1B 78 */	mr r31, r3
/* 8048BAD4  80 03 01 A4 */	lwz r0, 0x1a4(r3)
/* 8048BAD8  2C 00 00 02 */	cmpwi r0, 2
/* 8048BADC  40 82 00 1C */	bne lbl_8048BAF8
/* 8048BAE0  4B F3 3B C9 */	bl func_803BF6A8
/* 8048BAE4  4B F3 52 45 */	bl mMsg_Set_ForceNext
/* 8048BAE8  7F E3 FB 78 */	mr r3, r31
/* 8048BAEC  38 80 25 4A */	li r4, 0x254a
/* 8048BAF0  4B FF FF 71 */	bl aQMgr_talk_quest_set_cancel_msg_com
/* 8048BAF4  48 00 00 30 */	b lbl_8048BB24
lbl_8048BAF8:
/* 8048BAF8  80 7F 01 7C */	lwz r3, 0x17c(r31)
/* 8048BAFC  80 63 00 00 */	lwz r3, 0(r3)
/* 8048BB00  28 03 00 00 */	cmplwi r3, 0
/* 8048BB04  41 82 00 0C */	beq lbl_8048BB10
/* 8048BB08  38 80 00 01 */	li r4, 1
/* 8048BB0C  4B F3 FD 21 */	bl mNpc_AddFriendship
lbl_8048BB10:
/* 8048BB10  81 9F 09 48 */	lwz r12, 0x948(r31)
/* 8048BB14  7F E3 FB 78 */	mr r3, r31
/* 8048BB18  38 80 00 09 */	li r4, 9
/* 8048BB1C  7D 89 03 A6 */	mtctr r12
/* 8048BB20  4E 80 04 21 */	bctrl 
lbl_8048BB24:
/* 8048BB24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048BB28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8048BB2C  7C 08 03 A6 */	mtlr r0
/* 8048BB30  38 21 00 10 */	addi r1, r1, 0x10
/* 8048BB34  4E 80 00 20 */	blr 
