lbl_8054C894:
/* 8054C894  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8054C898  7C 08 02 A6 */	mflr r0
/* 8054C89C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8054C8A0  39 61 00 20 */	addi r11, r1, 0x20
/* 8054C8A4  4B B4 E6 31 */	bl func_8009AED4
/* 8054C8A8  7C 7D 1B 78 */	mr r29, r3
/* 8054C8AC  7C 9E 23 78 */	mr r30, r4
/* 8054C8B0  4B E7 2D F9 */	bl func_803BF6A8
/* 8054C8B4  7C 7F 1B 78 */	mr r31, r3
/* 8054C8B8  4B E7 37 15 */	bl mMsg_Get_msg_num
/* 8054C8BC  80 1D 09 AC */	lwz r0, 0x9ac(r29)
/* 8054C8C0  7C 00 18 00 */	cmpw r0, r3
/* 8054C8C4  40 82 00 20 */	bne lbl_8054C8E4
/* 8054C8C8  7F E3 FB 78 */	mr r3, r31
/* 8054C8CC  4B E7 43 CD */	bl mMsg_Check_MainNormalContinue
/* 8054C8D0  2C 03 00 00 */	cmpwi r3, 0
/* 8054C8D4  41 82 00 10 */	beq lbl_8054C8E4
/* 8054C8D8  7F A3 EB 78 */	mr r3, r29
/* 8054C8DC  7F C4 F3 78 */	mr r4, r30
/* 8054C8E0  4B FF F0 B5 */	bl aCR_chk_insect_complete
lbl_8054C8E4:
/* 8054C8E4  39 61 00 20 */	addi r11, r1, 0x20
/* 8054C8E8  4B B4 E6 39 */	bl func_8009AF20
/* 8054C8EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8054C8F0  7C 08 03 A6 */	mtlr r0
/* 8054C8F4  38 21 00 20 */	addi r1, r1, 0x20
/* 8054C8F8  4E 80 00 20 */	blr 
