lbl_8053A198:
/* 8053A198  38 80 00 00 */	li r4, 0
/* 8053A19C  3C C0 81 1E */	lis r6, aNPC_s_overlay@ha /* 0x811D9BC8@ha */
/* 8053A1A0  38 00 00 02 */	li r0, 2
/* 8053A1A4  7C 85 23 78 */	mr r5, r4
/* 8053A1A8  38 E6 9B C8 */	addi r7, r6, aNPC_s_overlay@l /* 0x811D9BC8@l */
/* 8053A1AC  7C 09 03 A6 */	mtctr r0
lbl_8053A1B0:
/* 8053A1B0  7C C7 22 14 */	add r6, r7, r4
/* 8053A1B4  38 84 20 08 */	addi r4, r4, 0x2008
/* 8053A1B8  38 06 00 08 */	addi r0, r6, 8
/* 8053A1BC  90 03 00 00 */	stw r0, 0(r3)
/* 8053A1C0  90 A3 00 04 */	stw r5, 4(r3)
/* 8053A1C4  38 63 00 08 */	addi r3, r3, 8
/* 8053A1C8  42 00 FF E8 */	bdnz lbl_8053A1B0
/* 8053A1CC  4E 80 00 20 */	blr 
