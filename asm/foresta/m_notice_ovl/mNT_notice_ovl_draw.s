lbl_805EC2FC:
/* 805EC2FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805EC300  7C 08 02 A6 */	mflr r0
/* 805EC304  90 01 00 24 */	stw r0, 0x24(r1)
/* 805EC308  39 61 00 20 */	addi r11, r1, 0x20
/* 805EC30C  4B AA EB C9 */	bl func_8009AED4
/* 805EC310  7C 7D 1B 78 */	mr r29, r3
/* 805EC314  7C 9E 23 78 */	mr r30, r4
/* 805EC318  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805EC31C  3B E5 02 04 */	addi r31, r5, 0x204
/* 805EC320  81 85 02 14 */	lwz r12, 0x214(r5)
/* 805EC324  7D 89 03 A6 */	mtctr r12
/* 805EC328  4E 80 04 21 */	bctrl 
/* 805EC32C  7F A3 EB 78 */	mr r3, r29
/* 805EC330  7F C4 F3 78 */	mr r4, r30
/* 805EC334  7F E5 FB 78 */	mr r5, r31
/* 805EC338  4B FF FE CD */	bl mNT_set_dl
/* 805EC33C  39 61 00 20 */	addi r11, r1, 0x20
/* 805EC340  4B AA EB E1 */	bl func_8009AF20
/* 805EC344  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805EC348  7C 08 03 A6 */	mtlr r0
/* 805EC34C  38 21 00 20 */	addi r1, r1, 0x20
/* 805EC350  4E 80 00 20 */	blr 
