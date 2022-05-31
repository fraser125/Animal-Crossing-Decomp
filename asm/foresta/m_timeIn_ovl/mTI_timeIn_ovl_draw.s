lbl_805FFFF0:
/* 805FFFF0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805FFFF4  7C 08 02 A6 */	mflr r0
/* 805FFFF8  90 01 00 24 */	stw r0, 0x24(r1)
/* 805FFFFC  39 61 00 20 */	addi r11, r1, 0x20
/* 80600000  4B A9 AE D5 */	bl func_8009AED4
/* 80600004  7C 7D 1B 78 */	mr r29, r3
/* 80600008  7C 9E 23 78 */	mr r30, r4
/* 8060000C  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 80600010  3B E5 01 2C */	addi r31, r5, 0x12c
/* 80600014  81 85 01 3C */	lwz r12, 0x13c(r5)
/* 80600018  7D 89 03 A6 */	mtctr r12
/* 8060001C  4E 80 04 21 */	bctrl 
/* 80600020  7F A3 EB 78 */	mr r3, r29
/* 80600024  7F C4 F3 78 */	mr r4, r30
/* 80600028  7F E5 FB 78 */	mr r5, r31
/* 8060002C  4B FF FF 19 */	bl mTI_set_dl
/* 80600030  39 61 00 20 */	addi r11, r1, 0x20
/* 80600034  4B A9 AE ED */	bl func_8009AF20
/* 80600038  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8060003C  7C 08 03 A6 */	mtlr r0
/* 80600040  38 21 00 20 */	addi r1, r1, 0x20
/* 80600044  4E 80 00 20 */	blr 
