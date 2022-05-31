lbl_805E94C8:
/* 805E94C8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805E94CC  7C 08 02 A6 */	mflr r0
/* 805E94D0  90 01 00 24 */	stw r0, 0x24(r1)
/* 805E94D4  39 61 00 20 */	addi r11, r1, 0x20
/* 805E94D8  4B AB 19 FD */	bl func_8009AED4
/* 805E94DC  7C 7D 1B 78 */	mr r29, r3
/* 805E94E0  7C 9E 23 78 */	mr r30, r4
/* 805E94E4  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805E94E8  3B E5 06 3C */	addi r31, r5, 0x63c
/* 805E94EC  81 85 06 4C */	lwz r12, 0x64c(r5)
/* 805E94F0  7D 89 03 A6 */	mtctr r12
/* 805E94F4  4E 80 04 21 */	bctrl 
/* 805E94F8  7F A3 EB 78 */	mr r3, r29
/* 805E94FC  7F E4 FB 78 */	mr r4, r31
/* 805E9500  7F C5 F3 78 */	mr r5, r30
/* 805E9504  4B FF FA 61 */	bl mMU_set_dl
/* 805E9508  7F A3 EB 78 */	mr r3, r29
/* 805E950C  7F E4 FB 78 */	mr r4, r31
/* 805E9510  7F C5 F3 78 */	mr r5, r30
/* 805E9514  4B FF FE 45 */	bl mMU_set_title_dl
/* 805E9518  80 DD 00 2C */	lwz r6, 0x2c(r29)
/* 805E951C  7F A3 EB 78 */	mr r3, r29
/* 805E9520  7F C4 F3 78 */	mr r4, r30
/* 805E9524  38 A0 00 15 */	li r5, 0x15
/* 805E9528  81 86 09 20 */	lwz r12, 0x920(r6)
/* 805E952C  7D 89 03 A6 */	mtctr r12
/* 805E9530  4E 80 04 21 */	bctrl 
/* 805E9534  39 61 00 20 */	addi r11, r1, 0x20
/* 805E9538  4B AB 19 E9 */	bl func_8009AF20
/* 805E953C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805E9540  7C 08 03 A6 */	mtlr r0
/* 805E9544  38 21 00 20 */	addi r1, r1, 0x20
/* 805E9548  4E 80 00 20 */	blr 
