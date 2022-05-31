lbl_80593EFC:
/* 80593EFC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80593F00  7C 08 02 A6 */	mflr r0
/* 80593F04  90 01 00 24 */	stw r0, 0x24(r1)
/* 80593F08  38 81 00 08 */	addi r4, r1, 8
/* 80593F0C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80593F10  7C 7F 1B 78 */	mr r31, r3
/* 80593F14  38 61 00 0C */	addi r3, r1, 0xc
/* 80593F18  7F E5 FB 78 */	mr r5, r31
/* 80593F1C  4B FF FF 61 */	bl aETKY_GetTalkStartStatus
/* 80593F20  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80593F24  38 60 00 6C */	li r3, 0x6c
/* 80593F28  38 80 00 40 */	li r4, 0x40
/* 80593F2C  90 1F 09 A0 */	stw r0, 0x9a0(r31)
/* 80593F30  80 01 00 08 */	lwz r0, 8(r1)
/* 80593F34  90 1F 09 A4 */	stw r0, 0x9a4(r31)
/* 80593F38  4B E0 9A 99 */	bl mEv_set_status
/* 80593F3C  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80593F40  4B E0 45 D5 */	bl mDemo_Set_msg_num
/* 80593F44  80 9F 09 AC */	lwz r4, 0x9ac(r31)
/* 80593F48  38 00 00 01 */	li r0, 1
/* 80593F4C  88 64 00 00 */	lbz r3, 0(r4)
/* 80593F50  38 63 00 01 */	addi r3, r3, 1
/* 80593F54  98 64 00 00 */	stb r3, 0(r4)
/* 80593F58  98 1F 09 B1 */	stb r0, 0x9b1(r31)
/* 80593F5C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80593F60  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80593F64  7C 08 03 A6 */	mtlr r0
/* 80593F68  38 21 00 20 */	addi r1, r1, 0x20
/* 80593F6C  4E 80 00 20 */	blr 
