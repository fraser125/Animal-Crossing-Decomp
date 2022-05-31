lbl_805CD69C:
/* 805CD69C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805CD6A0  7C 08 02 A6 */	mflr r0
/* 805CD6A4  90 01 00 24 */	stw r0, 0x24(r1)
/* 805CD6A8  39 61 00 20 */	addi r11, r1, 0x20
/* 805CD6AC  4B AC D8 29 */	bl func_8009AED4
/* 805CD6B0  54 84 04 3E */	clrlwi r4, r4, 0x10
/* 805CD6B4  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805CD6B8  3F A4 FF FF */	addis r29, r4, 0xffff
/* 805CD6BC  83 C3 09 DC */	lwz r30, 0x9dc(r3)
/* 805CD6C0  3B BD 01 CF */	addi r29, r29, 0x1cf
/* 805CD6C4  7F A3 EB 78 */	mr r3, r29
/* 805CD6C8  4B FF FB 59 */	bl mCO_pat_idx_to_folder
/* 805CD6CC  7C 7F 1B 78 */	mr r31, r3
/* 805CD6D0  7F A3 EB 78 */	mr r3, r29
/* 805CD6D4  4B FF FB 5D */	bl mCO_pat_idx_to_idx
/* 805CD6D8  1C 9F 19 80 */	mulli r4, r31, 0x1980
/* 805CD6DC  80 BE 00 00 */	lwz r5, 0(r30)
/* 805CD6E0  1C 03 02 20 */	mulli r0, r3, 0x220
/* 805CD6E4  7C 64 02 14 */	add r3, r4, r0
/* 805CD6E8  38 63 00 80 */	addi r3, r3, 0x80
/* 805CD6EC  7C 65 1A 14 */	add r3, r5, r3
/* 805CD6F0  39 61 00 20 */	addi r11, r1, 0x20
/* 805CD6F4  4B AC D8 2D */	bl func_8009AF20
/* 805CD6F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805CD6FC  7C 08 03 A6 */	mtlr r0
/* 805CD700  38 21 00 20 */	addi r1, r1, 0x20
/* 805CD704  4E 80 00 20 */	blr 
