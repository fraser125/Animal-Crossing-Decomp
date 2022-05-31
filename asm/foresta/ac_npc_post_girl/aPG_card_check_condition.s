lbl_8056CF7C:
/* 8056CF7C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8056CF80  7C 08 02 A6 */	mflr r0
/* 8056CF84  90 01 00 24 */	stw r0, 0x24(r1)
/* 8056CF88  39 61 00 20 */	addi r11, r1, 0x20
/* 8056CF8C  4B B2 DF 45 */	bl func_8009AED0
/* 8056CF90  7C 7C 1B 78 */	mr r28, r3
/* 8056CF94  7C 9D 23 78 */	mr r29, r4
/* 8056CF98  4B E5 27 11 */	bl func_803BF6A8
/* 8056CF9C  80 9C 09 B0 */	lwz r4, 0x9b0(r28)
/* 8056CFA0  7C 7F 1B 78 */	mr r31, r3
/* 8056CFA4  88 1C 07 44 */	lbz r0, 0x744(r28)
/* 8056CFA8  7F C4 02 14 */	add r30, r4, r0
/* 8056CFAC  4B E5 30 21 */	bl mMsg_Get_msg_num
/* 8056CFB0  7C 1E 18 00 */	cmpw r30, r3
/* 8056CFB4  40 82 00 2C */	bne lbl_8056CFE0
/* 8056CFB8  7F E3 FB 78 */	mr r3, r31
/* 8056CFBC  4B E5 3C DD */	bl mMsg_Check_MainNormalContinue
/* 8056CFC0  2C 03 00 01 */	cmpwi r3, 1
/* 8056CFC4  40 82 00 1C */	bne lbl_8056CFE0
/* 8056CFC8  81 9C 09 A0 */	lwz r12, 0x9a0(r28)
/* 8056CFCC  7F 83 E3 78 */	mr r3, r28
/* 8056CFD0  7F A4 EB 78 */	mr r4, r29
/* 8056CFD4  38 A0 00 12 */	li r5, 0x12
/* 8056CFD8  7D 89 03 A6 */	mtctr r12
/* 8056CFDC  4E 80 04 21 */	bctrl 
lbl_8056CFE0:
/* 8056CFE0  39 61 00 20 */	addi r11, r1, 0x20
/* 8056CFE4  4B B2 DF 39 */	bl func_8009AF1C
/* 8056CFE8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8056CFEC  7C 08 03 A6 */	mtlr r0
/* 8056CFF0  38 21 00 20 */	addi r1, r1, 0x20
/* 8056CFF4  4E 80 00 20 */	blr 
