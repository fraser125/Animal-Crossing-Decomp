lbl_806008EC:
/* 806008EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806008F0  7C 08 02 A6 */	mflr r0
/* 806008F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 806008F8  39 61 00 20 */	addi r11, r1, 0x20
/* 806008FC  4B A9 A5 D9 */	bl func_8009AED4
/* 80600900  7C 7D 1B 78 */	mr r29, r3
/* 80600904  7C 9E 23 78 */	mr r30, r4
/* 80600908  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 8060090C  3B E5 04 D4 */	addi r31, r5, 0x4d4
/* 80600910  81 85 04 E4 */	lwz r12, 0x4e4(r5)
/* 80600914  7D 89 03 A6 */	mtctr r12
/* 80600918  4E 80 04 21 */	bctrl 
/* 8060091C  7F A3 EB 78 */	mr r3, r29
/* 80600920  7F C4 F3 78 */	mr r4, r30
/* 80600924  7F E5 FB 78 */	mr r5, r31
/* 80600928  4B FF FF 59 */	bl mWR_set_dl
/* 8060092C  39 61 00 20 */	addi r11, r1, 0x20
/* 80600930  4B A9 A5 F1 */	bl func_8009AF20
/* 80600934  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80600938  7C 08 03 A6 */	mtlr r0
/* 8060093C  38 21 00 20 */	addi r1, r1, 0x20
/* 80600940  4E 80 00 20 */	blr 
