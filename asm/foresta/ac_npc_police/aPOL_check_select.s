lbl_8056AE34:
/* 8056AE34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056AE38  7C 08 02 A6 */	mflr r0
/* 8056AE3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056AE40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8056AE44  7C 9F 23 78 */	mr r31, r4
/* 8056AE48  93 C1 00 08 */	stw r30, 8(r1)
/* 8056AE4C  7C 7E 1B 78 */	mr r30, r3
/* 8056AE50  4B E5 48 59 */	bl func_803BF6A8
/* 8056AE54  4B E5 5E 45 */	bl mMsg_Check_MainNormalContinue
/* 8056AE58  2C 03 00 01 */	cmpwi r3, 1
/* 8056AE5C  40 82 00 28 */	bne lbl_8056AE84
/* 8056AE60  4B E1 86 E1 */	bl func_80383540
/* 8056AE64  4B E1 8D 09 */	bl mChoice_Get_ChoseNum
/* 8056AE68  4B FF FF 05 */	bl aPOL_set_select_after_msg
/* 8056AE6C  81 9E 09 A0 */	lwz r12, 0x9a0(r30)
/* 8056AE70  7F C3 F3 78 */	mr r3, r30
/* 8056AE74  7F E4 FB 78 */	mr r4, r31
/* 8056AE78  38 A0 00 00 */	li r5, 0
/* 8056AE7C  7D 89 03 A6 */	mtctr r12
/* 8056AE80  4E 80 04 21 */	bctrl 
lbl_8056AE84:
/* 8056AE84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056AE88  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8056AE8C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8056AE90  7C 08 03 A6 */	mtlr r0
/* 8056AE94  38 21 00 10 */	addi r1, r1, 0x10
/* 8056AE98  4E 80 00 20 */	blr 
