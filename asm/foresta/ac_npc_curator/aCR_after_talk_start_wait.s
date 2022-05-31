lbl_8054BF68:
/* 8054BF68  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8054BF6C  7C 08 02 A6 */	mflr r0
/* 8054BF70  90 01 00 24 */	stw r0, 0x24(r1)
/* 8054BF74  39 61 00 20 */	addi r11, r1, 0x20
/* 8054BF78  4B B4 EF 5D */	bl func_8009AED4
/* 8054BF7C  7C 7D 1B 78 */	mr r29, r3
/* 8054BF80  7C 9E 23 78 */	mr r30, r4
/* 8054BF84  4B E7 37 25 */	bl func_803BF6A8
/* 8054BF88  7C 7F 1B 78 */	mr r31, r3
/* 8054BF8C  4B E7 4D 0D */	bl mMsg_Check_MainNormalContinue
/* 8054BF90  2C 03 00 01 */	cmpwi r3, 1
/* 8054BF94  40 82 00 30 */	bne lbl_8054BFC4
/* 8054BF98  4B FF FB FD */	bl aCR_get_msg_no_after_talk
/* 8054BF9C  7C 60 1B 78 */	mr r0, r3
/* 8054BFA0  7F E3 FB 78 */	mr r3, r31
/* 8054BFA4  7C 04 03 78 */	mr r4, r0
/* 8054BFA8  4B E7 40 1D */	bl mMsg_Set_continue_msg_num
/* 8054BFAC  81 9D 09 A8 */	lwz r12, 0x9a8(r29)
/* 8054BFB0  7F A3 EB 78 */	mr r3, r29
/* 8054BFB4  7F C4 F3 78 */	mr r4, r30
/* 8054BFB8  38 A0 00 00 */	li r5, 0
/* 8054BFBC  7D 89 03 A6 */	mtctr r12
/* 8054BFC0  4E 80 04 21 */	bctrl 
lbl_8054BFC4:
/* 8054BFC4  39 61 00 20 */	addi r11, r1, 0x20
/* 8054BFC8  4B B4 EF 59 */	bl func_8009AF20
/* 8054BFCC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8054BFD0  7C 08 03 A6 */	mtlr r0
/* 8054BFD4  38 21 00 20 */	addi r1, r1, 0x20
/* 8054BFD8  4E 80 00 20 */	blr 
