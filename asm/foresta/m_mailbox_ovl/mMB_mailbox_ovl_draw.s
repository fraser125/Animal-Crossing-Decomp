lbl_805E5C4C:
/* 805E5C4C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805E5C50  7C 08 02 A6 */	mflr r0
/* 805E5C54  90 01 00 24 */	stw r0, 0x24(r1)
/* 805E5C58  39 61 00 20 */	addi r11, r1, 0x20
/* 805E5C5C  4B AB 52 75 */	bl func_8009AED0
/* 805E5C60  7C 7C 1B 78 */	mr r28, r3
/* 805E5C64  7C 9D 23 78 */	mr r29, r4
/* 805E5C68  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805E5C6C  83 E4 00 00 */	lwz r31, 0(r4)
/* 805E5C70  3B C5 03 6C */	addi r30, r5, 0x36c
/* 805E5C74  81 85 03 7C */	lwz r12, 0x37c(r5)
/* 805E5C78  7D 89 03 A6 */	mtctr r12
/* 805E5C7C  4E 80 04 21 */	bctrl 
/* 805E5C80  7F E3 FB 78 */	mr r3, r31
/* 805E5C84  7F C4 F3 78 */	mr r4, r30
/* 805E5C88  7F 85 E3 78 */	mr r5, r28
/* 805E5C8C  7F A6 EB 78 */	mr r6, r29
/* 805E5C90  4B FF FF 11 */	bl mMB_set_dl
/* 805E5C94  39 61 00 20 */	addi r11, r1, 0x20
/* 805E5C98  4B AB 52 85 */	bl func_8009AF1C
/* 805E5C9C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805E5CA0  7C 08 03 A6 */	mtlr r0
/* 805E5CA4  38 21 00 20 */	addi r1, r1, 0x20
/* 805E5CA8  4E 80 00 20 */	blr 
