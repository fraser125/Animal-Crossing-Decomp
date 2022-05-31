lbl_8048CC5C:
/* 8048CC5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048CC60  7C 08 02 A6 */	mflr r0
/* 8048CC64  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048CC68  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8048CC6C  7C 7F 1B 78 */	mr r31, r3
/* 8048CC70  80 03 01 A4 */	lwz r0, 0x1a4(r3)
/* 8048CC74  2C 00 00 00 */	cmpwi r0, 0
/* 8048CC78  40 82 00 60 */	bne lbl_8048CCD8
/* 8048CC7C  4B F3 2A 2D */	bl func_803BF6A8
/* 8048CC80  4B F3 40 C1 */	bl mMsg_Set_LockContinue
/* 8048CC84  4B F3 2A 25 */	bl func_803BF6A8
/* 8048CC88  4B F3 2D E1 */	bl mMsg_request_main_disappear_wait_type2
/* 8048CC8C  38 00 00 01 */	li r0, 1
/* 8048CC90  38 80 00 15 */	li r4, 0x15
/* 8048CC94  98 1F 01 85 */	stb r0, 0x185(r31)
/* 8048CC98  38 A0 FF FF */	li r5, -1
/* 8048CC9C  38 00 00 04 */	li r0, 4
/* 8048CCA0  7F E3 FB 78 */	mr r3, r31
/* 8048CCA4  98 9F 01 86 */	stb r4, 0x186(r31)
/* 8048CCA8  38 80 00 02 */	li r4, 2
/* 8048CCAC  90 BF 01 A4 */	stw r5, 0x1a4(r31)
/* 8048CCB0  90 1F 01 B0 */	stw r0, 0x1b0(r31)
/* 8048CCB4  81 9F 09 48 */	lwz r12, 0x948(r31)
/* 8048CCB8  7D 89 03 A6 */	mtctr r12
/* 8048CCBC  4E 80 04 21 */	bctrl 
/* 8048CCC0  4B F3 29 E9 */	bl func_803BF6A8
/* 8048CCC4  80 9F 01 A8 */	lwz r4, 0x1a8(r31)
/* 8048CCC8  4B F3 32 FD */	bl mMsg_Set_continue_msg_num
/* 8048CCCC  4B F3 29 DD */	bl func_803BF6A8
/* 8048CCD0  4B F3 40 59 */	bl mMsg_Set_ForceNext
/* 8048CCD4  48 00 00 10 */	b lbl_8048CCE4
lbl_8048CCD8:
/* 8048CCD8  4B FF ED E9 */	bl aQMgr_talk_quest_change_normal_or_hint
/* 8048CCDC  38 00 00 00 */	li r0, 0
/* 8048CCE0  98 1F 01 85 */	stb r0, 0x185(r31)
lbl_8048CCE4:
/* 8048CCE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048CCE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8048CCEC  7C 08 03 A6 */	mtlr r0
/* 8048CCF0  38 21 00 10 */	addi r1, r1, 0x10
/* 8048CCF4  4E 80 00 20 */	blr 
