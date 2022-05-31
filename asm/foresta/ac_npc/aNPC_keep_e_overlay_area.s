lbl_8053A208:
/* 8053A208  38 80 00 00 */	li r4, 0
/* 8053A20C  3C C0 81 1E */	lis r6, aNPC_e_overlay@ha /* 0x811E6BF0@ha */
/* 8053A210  38 00 00 02 */	li r0, 2
/* 8053A214  7C 85 23 78 */	mr r5, r4
/* 8053A218  38 E6 6B F0 */	addi r7, r6, aNPC_e_overlay@l /* 0x811E6BF0@l */
/* 8053A21C  7C 09 03 A6 */	mtctr r0
lbl_8053A220:
/* 8053A220  7C C7 22 14 */	add r6, r7, r4
/* 8053A224  38 84 28 08 */	addi r4, r4, 0x2808
/* 8053A228  38 06 00 08 */	addi r0, r6, 8
/* 8053A22C  90 03 00 00 */	stw r0, 0(r3)
/* 8053A230  90 A3 00 04 */	stw r5, 4(r3)
/* 8053A234  38 63 00 08 */	addi r3, r3, 8
/* 8053A238  42 00 FF E8 */	bdnz lbl_8053A220
/* 8053A23C  4E 80 00 20 */	blr 
