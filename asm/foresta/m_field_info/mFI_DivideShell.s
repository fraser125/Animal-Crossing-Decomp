lbl_803AA898:
/* 803AA898  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803AA89C  7C 08 02 A6 */	mflr r0
/* 803AA8A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 803AA8A4  39 61 00 20 */	addi r11, r1, 0x20
/* 803AA8A8  4B CF 06 2D */	bl func_8009AED4
/* 803AA8AC  90 C1 00 08 */	stw r6, 8(r1)
/* 803AA8B0  7C 7D 1B 78 */	mr r29, r3
/* 803AA8B4  7C 9E 23 78 */	mr r30, r4
/* 803AA8B8  7C BF 2B 78 */	mr r31, r5
/* 803AA8BC  90 E1 00 0C */	stw r7, 0xc(r1)
/* 803AA8C0  38 C1 00 08 */	addi r6, r1, 8
/* 803AA8C4  38 E1 00 0C */	addi r7, r1, 0xc
/* 803AA8C8  4B FF FE 21 */	bl mFI_DivideShellSameSum
/* 803AA8CC  80 C1 00 08 */	lwz r6, 8(r1)
/* 803AA8D0  7F A3 EB 78 */	mr r3, r29
/* 803AA8D4  80 E1 00 0C */	lwz r7, 0xc(r1)
/* 803AA8D8  7F C4 F3 78 */	mr r4, r30
/* 803AA8DC  7F E5 FB 78 */	mr r5, r31
/* 803AA8E0  4B FF FE A9 */	bl mFI_DivideShellRandom
/* 803AA8E4  39 61 00 20 */	addi r11, r1, 0x20
/* 803AA8E8  4B CF 06 39 */	bl func_8009AF20
/* 803AA8EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803AA8F0  7C 08 03 A6 */	mtlr r0
/* 803AA8F4  38 21 00 20 */	addi r1, r1, 0x20
/* 803AA8F8  4E 80 00 20 */	blr 
