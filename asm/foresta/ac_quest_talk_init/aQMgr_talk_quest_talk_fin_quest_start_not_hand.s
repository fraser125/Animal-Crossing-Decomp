lbl_8048CCF8:
/* 8048CCF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048CCFC  7C 08 02 A6 */	mflr r0
/* 8048CD00  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048CD04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8048CD08  7C 7F 1B 78 */	mr r31, r3
/* 8048CD0C  80 03 01 A4 */	lwz r0, 0x1a4(r3)
/* 8048CD10  2C 00 00 02 */	cmpwi r0, 2
/* 8048CD14  40 82 00 10 */	bne lbl_8048CD24
/* 8048CD18  38 80 25 4A */	li r4, 0x254a
/* 8048CD1C  4B FF ED 45 */	bl aQMgr_talk_quest_set_cancel_msg_com
/* 8048CD20  48 00 00 38 */	b lbl_8048CD58
lbl_8048CD24:
/* 8048CD24  38 00 00 10 */	li r0, 0x10
/* 8048CD28  38 A0 FF FF */	li r5, -1
/* 8048CD2C  98 1F 01 86 */	stb r0, 0x186(r31)
/* 8048CD30  38 00 00 04 */	li r0, 4
/* 8048CD34  38 80 00 02 */	li r4, 2
/* 8048CD38  90 BF 01 A4 */	stw r5, 0x1a4(r31)
/* 8048CD3C  90 1F 01 B0 */	stw r0, 0x1b0(r31)
/* 8048CD40  81 9F 09 48 */	lwz r12, 0x948(r31)
/* 8048CD44  7D 89 03 A6 */	mtctr r12
/* 8048CD48  4E 80 04 21 */	bctrl 
/* 8048CD4C  4B F3 29 5D */	bl func_803BF6A8
/* 8048CD50  80 9F 01 A8 */	lwz r4, 0x1a8(r31)
/* 8048CD54  4B F3 32 71 */	bl mMsg_Set_continue_msg_num
lbl_8048CD58:
/* 8048CD58  4B F3 29 51 */	bl func_803BF6A8
/* 8048CD5C  4B F3 3F CD */	bl mMsg_Set_ForceNext
/* 8048CD60  38 00 00 00 */	li r0, 0
/* 8048CD64  98 1F 01 85 */	stb r0, 0x185(r31)
/* 8048CD68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048CD6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8048CD70  7C 08 03 A6 */	mtlr r0
/* 8048CD74  38 21 00 10 */	addi r1, r1, 0x10
/* 8048CD78  4E 80 00 20 */	blr 
