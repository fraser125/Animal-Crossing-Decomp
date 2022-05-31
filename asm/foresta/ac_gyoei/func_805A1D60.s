lbl_805A1D60:
/* 805A1D60  3C 60 81 1F */	lis r3, data_811F2870@ha /* 0x811F2870@ha */
/* 805A1D64  38 00 00 02 */	li r0, 2
/* 805A1D68  38 83 28 70 */	addi r4, r3, data_811F2870@l /* 0x811F2870@l */
/* 805A1D6C  38 60 00 00 */	li r3, 0
/* 805A1D70  80 A4 00 00 */	lwz r5, 0(r4)
/* 805A1D74  38 80 00 00 */	li r4, 0
/* 805A1D78  38 A5 01 74 */	addi r5, r5, 0x174
/* 805A1D7C  7C 09 03 A6 */	mtctr r0
lbl_805A1D80:
/* 805A1D80  38 04 02 40 */	addi r0, r4, 0x240
/* 805A1D84  7C 05 02 2E */	lhzx r0, r5, r0
/* 805A1D88  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 805A1D8C  4C 82 00 20 */	bnelr 
/* 805A1D90  38 63 00 01 */	addi r3, r3, 1
/* 805A1D94  38 84 02 50 */	addi r4, r4, 0x250
/* 805A1D98  42 00 FF E8 */	bdnz lbl_805A1D80
/* 805A1D9C  38 60 FF FF */	li r3, -1
/* 805A1DA0  4E 80 00 20 */	blr 
