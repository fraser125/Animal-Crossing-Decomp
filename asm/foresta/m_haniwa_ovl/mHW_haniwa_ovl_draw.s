lbl_805E07E8:
/* 805E07E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805E07EC  7C 08 02 A6 */	mflr r0
/* 805E07F0  90 01 00 24 */	stw r0, 0x24(r1)
/* 805E07F4  39 61 00 20 */	addi r11, r1, 0x20
/* 805E07F8  4B AB A6 DD */	bl func_8009AED4
/* 805E07FC  7C 7D 1B 78 */	mr r29, r3
/* 805E0800  7C 9E 23 78 */	mr r30, r4
/* 805E0804  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805E0808  3B E5 04 44 */	addi r31, r5, 0x444
/* 805E080C  81 85 04 54 */	lwz r12, 0x454(r5)
/* 805E0810  7D 89 03 A6 */	mtctr r12
/* 805E0814  4E 80 04 21 */	bctrl 
/* 805E0818  7F E3 FB 78 */	mr r3, r31
/* 805E081C  7F A4 EB 78 */	mr r4, r29
/* 805E0820  7F C5 F3 78 */	mr r5, r30
/* 805E0824  4B FF FE C9 */	bl mHW_set_dl
/* 805E0828  39 61 00 20 */	addi r11, r1, 0x20
/* 805E082C  4B AB A6 F5 */	bl func_8009AF20
/* 805E0830  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805E0834  7C 08 03 A6 */	mtlr r0
/* 805E0838  38 21 00 20 */	addi r1, r1, 0x20
/* 805E083C  4E 80 00 20 */	blr 
