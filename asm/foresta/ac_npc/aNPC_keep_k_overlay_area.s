lbl_8053A1D0:
/* 8053A1D0  38 80 00 00 */	li r4, 0
/* 8053A1D4  3C C0 81 1E */	lis r6, aNPC_k_overlay@ha /* 0x811DDBD8@ha */
/* 8053A1D8  38 00 00 03 */	li r0, 3
/* 8053A1DC  7C 85 23 78 */	mr r5, r4
/* 8053A1E0  38 E6 DB D8 */	addi r7, r6, aNPC_k_overlay@l /* 0x811DDBD8@l */
/* 8053A1E4  7C 09 03 A6 */	mtctr r0
lbl_8053A1E8:
/* 8053A1E8  7C C7 22 14 */	add r6, r7, r4
/* 8053A1EC  38 84 30 08 */	addi r4, r4, 0x3008
/* 8053A1F0  38 06 00 08 */	addi r0, r6, 8
/* 8053A1F4  90 03 00 00 */	stw r0, 0(r3)
/* 8053A1F8  90 A3 00 04 */	stw r5, 4(r3)
/* 8053A1FC  38 63 00 08 */	addi r3, r3, 8
/* 8053A200  42 00 FF E8 */	bdnz lbl_8053A1E8
/* 8053A204  4E 80 00 20 */	blr 
