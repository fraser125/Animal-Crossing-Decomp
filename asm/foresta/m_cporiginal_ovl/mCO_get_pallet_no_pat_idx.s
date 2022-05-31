lbl_805CD434:
/* 805CD434  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805CD438  7C 08 02 A6 */	mflr r0
/* 805CD43C  90 01 00 24 */	stw r0, 0x24(r1)
/* 805CD440  39 61 00 20 */	addi r11, r1, 0x20
/* 805CD444  4B AC DA 91 */	bl func_8009AED4
/* 805CD448  7C 9E 23 78 */	mr r30, r4
/* 805CD44C  7C 7D 1B 78 */	mr r29, r3
/* 805CD450  7F C3 F3 78 */	mr r3, r30
/* 805CD454  3B E0 00 00 */	li r31, 0
/* 805CD458  4B FF FD 99 */	bl func_805CD1F0
/* 805CD45C  2C 03 00 00 */	cmpwi r3, 0
/* 805CD460  41 82 00 34 */	beq lbl_805CD494
/* 805CD464  7F C3 F3 78 */	mr r3, r30
/* 805CD468  4B FF FD B9 */	bl mCO_pat_idx_to_folder
/* 805CD46C  7C 60 1B 78 */	mr r0, r3
/* 805CD470  7F C3 F3 78 */	mr r3, r30
/* 805CD474  7C 1F 03 78 */	mr r31, r0
/* 805CD478  4B FF FD B9 */	bl mCO_pat_idx_to_idx
/* 805CD47C  7C 60 1B 78 */	mr r0, r3
/* 805CD480  7F A3 EB 78 */	mr r3, r29
/* 805CD484  7C 05 03 78 */	mr r5, r0
/* 805CD488  7F E4 FB 78 */	mr r4, r31
/* 805CD48C  4B FF FF 85 */	bl mCO_get_pallet_no
/* 805CD490  7C 7F 1B 78 */	mr r31, r3
lbl_805CD494:
/* 805CD494  7F E3 FB 78 */	mr r3, r31
/* 805CD498  39 61 00 20 */	addi r11, r1, 0x20
/* 805CD49C  4B AC DA 85 */	bl func_8009AF20
/* 805CD4A0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805CD4A4  7C 08 03 A6 */	mtlr r0
/* 805CD4A8  38 21 00 20 */	addi r1, r1, 0x20
/* 805CD4AC  4E 80 00 20 */	blr 
