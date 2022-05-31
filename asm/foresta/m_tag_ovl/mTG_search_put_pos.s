lbl_805F2DE8:
/* 805F2DE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805F2DEC  7C 08 02 A6 */	mflr r0
/* 805F2DF0  7C EB 3B 78 */	mr r11, r7
/* 805F2DF4  7D 2A 4B 78 */	mr r10, r9
/* 805F2DF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805F2DFC  7D 00 43 78 */	mr r0, r8
/* 805F2E00  38 E0 00 01 */	li r7, 1
/* 805F2E04  7D 68 5B 78 */	mr r8, r11
/* 805F2E08  7C 09 03 78 */	mr r9, r0
/* 805F2E0C  4B FF F8 29 */	bl mTG_search_put_pos2
/* 805F2E10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805F2E14  7C 08 03 A6 */	mtlr r0
/* 805F2E18  38 21 00 10 */	addi r1, r1, 0x10
/* 805F2E1C  4E 80 00 20 */	blr 
