lbl_805A1C88:
/* 805A1C88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A1C8C  7C 08 02 A6 */	mflr r0
/* 805A1C90  38 80 00 00 */	li r4, 0
/* 805A1C94  3C A0 81 1F */	lis r5, aGYO_overlay@ha /* 0x811F2878@ha */
/* 805A1C98  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A1C9C  38 00 00 02 */	li r0, 2
/* 805A1CA0  38 E3 01 74 */	addi r7, r3, 0x174
/* 805A1CA4  7C 86 23 78 */	mr r6, r4
/* 805A1CA8  38 A5 28 78 */	addi r5, r5, aGYO_overlay@l /* 0x811F2878@l */
/* 805A1CAC  7C 09 03 A6 */	mtctr r0
lbl_805A1CB0:
/* 805A1CB0  90 C7 01 D0 */	stw r6, 0x1d0(r7)
/* 805A1CB4  7C 05 22 14 */	add r0, r5, r4
/* 805A1CB8  38 84 3C 00 */	addi r4, r4, 0x3c00
/* 805A1CBC  90 07 02 4C */	stw r0, 0x24c(r7)
/* 805A1CC0  38 E7 02 50 */	addi r7, r7, 0x250
/* 805A1CC4  42 00 FF EC */	bdnz lbl_805A1CB0
/* 805A1CC8  39 00 00 00 */	li r8, 0
/* 805A1CCC  38 00 00 04 */	li r0, 4
/* 805A1CD0  7D 07 43 78 */	mr r7, r8
/* 805A1CD4  38 80 00 00 */	li r4, 0
/* 805A1CD8  38 A0 FF FF */	li r5, -1
/* 805A1CDC  7C 09 03 A6 */	mtctr r0
lbl_805A1CE0:
/* 805A1CE0  38 C8 06 14 */	addi r6, r8, 0x614
/* 805A1CE4  38 04 06 18 */	addi r0, r4, 0x618
/* 805A1CE8  7C E3 31 AE */	stbx r7, r3, r6
/* 805A1CEC  39 08 00 01 */	addi r8, r8, 1
/* 805A1CF0  38 84 00 04 */	addi r4, r4, 4
/* 805A1CF4  7C A3 01 2E */	stwx r5, r3, r0
/* 805A1CF8  42 00 FF E8 */	bdnz lbl_805A1CE0
/* 805A1CFC  3C 80 81 1F */	lis r4, data_811F2870@ha /* 0x811F2870@ha */
/* 805A1D00  90 64 28 70 */	stw r3, data_811F2870@l(r4)  /* 0x811F2870@l */
/* 805A1D04  48 00 06 55 */	bl aGYO_init_dma_and_clip_area
/* 805A1D08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A1D0C  7C 08 03 A6 */	mtlr r0
/* 805A1D10  38 21 00 10 */	addi r1, r1, 0x10
/* 805A1D14  4E 80 00 20 */	blr 
