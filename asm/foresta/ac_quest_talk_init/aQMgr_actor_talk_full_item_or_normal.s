lbl_8048C4C4:
/* 8048C4C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048C4C8  7C 08 02 A6 */	mflr r0
/* 8048C4CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048C4D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8048C4D4  7C 7F 1B 78 */	mr r31, r3
/* 8048C4D8  80 03 01 A4 */	lwz r0, 0x1a4(r3)
/* 8048C4DC  2C 00 00 00 */	cmpwi r0, 0
/* 8048C4E0  40 82 00 58 */	bne lbl_8048C538
/* 8048C4E4  80 1F 01 F8 */	lwz r0, 0x1f8(r31)
/* 8048C4E8  28 00 00 00 */	cmplwi r0, 0
/* 8048C4EC  40 82 00 10 */	bne lbl_8048C4FC
/* 8048C4F0  38 00 04 40 */	li r0, 0x440
/* 8048C4F4  90 1F 01 AC */	stw r0, 0x1ac(r31)
/* 8048C4F8  48 00 00 0C */	b lbl_8048C504
lbl_8048C4FC:
/* 8048C4FC  38 00 00 08 */	li r0, 8
/* 8048C500  90 1F 01 B0 */	stw r0, 0x1b0(r31)
lbl_8048C504:
/* 8048C504  38 00 FF FF */	li r0, -1
/* 8048C508  90 1F 01 A4 */	stw r0, 0x1a4(r31)
/* 8048C50C  4B F3 31 9D */	bl func_803BF6A8
/* 8048C510  4B F3 48 19 */	bl mMsg_Set_ForceNext
/* 8048C514  81 9F 09 48 */	lwz r12, 0x948(r31)
/* 8048C518  7F E3 FB 78 */	mr r3, r31
/* 8048C51C  38 80 00 02 */	li r4, 2
/* 8048C520  7D 89 03 A6 */	mtctr r12
/* 8048C524  4E 80 04 21 */	bctrl 
/* 8048C528  4B F3 31 81 */	bl func_803BF6A8
/* 8048C52C  80 9F 01 A8 */	lwz r4, 0x1a8(r31)
/* 8048C530  4B F3 3A 95 */	bl mMsg_Set_continue_msg_num
/* 8048C534  48 00 00 08 */	b lbl_8048C53C
lbl_8048C538:
/* 8048C538  4B FF F5 89 */	bl aQMgr_talk_quest_change_normal_or_hint
lbl_8048C53C:
/* 8048C53C  38 00 00 00 */	li r0, 0
/* 8048C540  98 1F 01 85 */	stb r0, 0x185(r31)
/* 8048C544  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048C548  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8048C54C  7C 08 03 A6 */	mtlr r0
/* 8048C550  38 21 00 10 */	addi r1, r1, 0x10
/* 8048C554  4E 80 00 20 */	blr 
