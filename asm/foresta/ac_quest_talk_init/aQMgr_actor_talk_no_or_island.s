lbl_8048C444:
/* 8048C444  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048C448  7C 08 02 A6 */	mflr r0
/* 8048C44C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048C450  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8048C454  7C 7F 1B 78 */	mr r31, r3
/* 8048C458  80 03 01 A4 */	lwz r0, 0x1a4(r3)
/* 8048C45C  2C 00 00 00 */	cmpwi r0, 0
/* 8048C460  40 82 00 34 */	bne lbl_8048C494
/* 8048C464  80 7F 01 7C */	lwz r3, 0x17c(r31)
/* 8048C468  80 63 00 00 */	lwz r3, 0(r3)
/* 8048C46C  28 03 00 00 */	cmplwi r3, 0
/* 8048C470  41 82 00 0C */	beq lbl_8048C47C
/* 8048C474  38 80 00 01 */	li r4, 1
/* 8048C478  4B F3 F3 B5 */	bl mNpc_AddFriendship
lbl_8048C47C:
/* 8048C47C  81 9F 09 48 */	lwz r12, 0x948(r31)
/* 8048C480  7F E3 FB 78 */	mr r3, r31
/* 8048C484  38 80 00 0A */	li r4, 0xa
/* 8048C488  7D 89 03 A6 */	mtctr r12
/* 8048C48C  4E 80 04 21 */	bctrl 
/* 8048C490  48 00 00 18 */	b lbl_8048C4A8
lbl_8048C494:
/* 8048C494  4B F3 32 15 */	bl func_803BF6A8
/* 8048C498  4B F3 48 91 */	bl mMsg_Set_ForceNext
/* 8048C49C  7F E3 FB 78 */	mr r3, r31
/* 8048C4A0  38 80 35 9D */	li r4, 0x359d
/* 8048C4A4  4B FF F5 BD */	bl aQMgr_talk_quest_set_cancel_msg_com
lbl_8048C4A8:
/* 8048C4A8  38 00 00 00 */	li r0, 0
/* 8048C4AC  98 1F 01 85 */	stb r0, 0x185(r31)
/* 8048C4B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048C4B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8048C4B8  7C 08 03 A6 */	mtlr r0
/* 8048C4BC  38 21 00 10 */	addi r1, r1, 0x10
/* 8048C4C0  4E 80 00 20 */	blr 
