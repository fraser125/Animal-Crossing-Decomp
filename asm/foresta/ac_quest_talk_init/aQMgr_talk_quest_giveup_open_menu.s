lbl_8048CAAC:
/* 8048CAAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048CAB0  7C 08 02 A6 */	mflr r0
/* 8048CAB4  38 80 00 01 */	li r4, 1
/* 8048CAB8  38 A0 00 04 */	li r5, 4
/* 8048CABC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048CAC0  38 E0 00 00 */	li r7, 0
/* 8048CAC4  39 00 00 01 */	li r8, 1
/* 8048CAC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8048CACC  7C 7F 1B 78 */	mr r31, r3
/* 8048CAD0  80 63 01 74 */	lwz r3, 0x174(r3)
/* 8048CAD4  80 DF 01 DC */	lwz r6, 0x1dc(r31)
/* 8048CAD8  4B F6 2C 51 */	bl mSM_open_submenu_new2
/* 8048CADC  38 60 00 04 */	li r3, 4
/* 8048CAE0  38 00 00 0C */	li r0, 0xc
/* 8048CAE4  98 7F 01 85 */	stb r3, 0x185(r31)
/* 8048CAE8  7F E3 FB 78 */	mr r3, r31
/* 8048CAEC  38 80 00 02 */	li r4, 2
/* 8048CAF0  98 1F 01 86 */	stb r0, 0x186(r31)
/* 8048CAF4  81 9F 09 48 */	lwz r12, 0x948(r31)
/* 8048CAF8  7D 89 03 A6 */	mtctr r12
/* 8048CAFC  4E 80 04 21 */	bctrl 
/* 8048CB00  4B F3 2B A9 */	bl func_803BF6A8
/* 8048CB04  80 9F 01 A8 */	lwz r4, 0x1a8(r31)
/* 8048CB08  4B F3 34 BD */	bl mMsg_Set_continue_msg_num
/* 8048CB0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048CB10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8048CB14  7C 08 03 A6 */	mtlr r0
/* 8048CB18  38 21 00 10 */	addi r1, r1, 0x10
/* 8048CB1C  4E 80 00 20 */	blr 
