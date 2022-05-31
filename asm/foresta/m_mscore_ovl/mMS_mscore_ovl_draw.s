lbl_805E8A74:
/* 805E8A74  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805E8A78  7C 08 02 A6 */	mflr r0
/* 805E8A7C  90 01 00 24 */	stw r0, 0x24(r1)
/* 805E8A80  39 61 00 20 */	addi r11, r1, 0x20
/* 805E8A84  4B AB 24 51 */	bl func_8009AED4
/* 805E8A88  7C 7D 1B 78 */	mr r29, r3
/* 805E8A8C  7C 9E 23 78 */	mr r30, r4
/* 805E8A90  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805E8A94  3B E5 02 94 */	addi r31, r5, 0x294
/* 805E8A98  81 85 02 A4 */	lwz r12, 0x2a4(r5)
/* 805E8A9C  7D 89 03 A6 */	mtctr r12
/* 805E8AA0  4E 80 04 21 */	bctrl 
/* 805E8AA4  7F A3 EB 78 */	mr r3, r29
/* 805E8AA8  7F E4 FB 78 */	mr r4, r31
/* 805E8AAC  7F C5 F3 78 */	mr r5, r30
/* 805E8AB0  4B FF F4 AD */	bl mMS_set_dl
/* 805E8AB4  39 61 00 20 */	addi r11, r1, 0x20
/* 805E8AB8  4B AB 24 69 */	bl func_8009AF20
/* 805E8ABC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805E8AC0  7C 08 03 A6 */	mtlr r0
/* 805E8AC4  38 21 00 20 */	addi r1, r1, 0x20
/* 805E8AC8  4E 80 00 20 */	blr 
