lbl_805E47F8:
/* 805E47F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805E47FC  7C 08 02 A6 */	mflr r0
/* 805E4800  90 01 00 24 */	stw r0, 0x24(r1)
/* 805E4804  39 61 00 20 */	addi r11, r1, 0x20
/* 805E4808  4B AB 66 CD */	bl func_8009AED4
/* 805E480C  7C 7D 1B 78 */	mr r29, r3
/* 805E4810  7C 9E 23 78 */	mr r30, r4
/* 805E4814  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805E4818  3B E5 00 9C */	addi r31, r5, 0x9c
/* 805E481C  81 85 00 AC */	lwz r12, 0xac(r5)
/* 805E4820  7D 89 03 A6 */	mtctr r12
/* 805E4824  4E 80 04 21 */	bctrl 
/* 805E4828  7F A3 EB 78 */	mr r3, r29
/* 805E482C  7F E4 FB 78 */	mr r4, r31
/* 805E4830  7F C5 F3 78 */	mr r5, r30
/* 805E4834  4B FF FF 25 */	bl mIV_set_dl
/* 805E4838  39 61 00 20 */	addi r11, r1, 0x20
/* 805E483C  4B AB 66 E5 */	bl func_8009AF20
/* 805E4840  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805E4844  7C 08 03 A6 */	mtlr r0
/* 805E4848  38 21 00 20 */	addi r1, r1, 0x20
/* 805E484C  4E 80 00 20 */	blr 
