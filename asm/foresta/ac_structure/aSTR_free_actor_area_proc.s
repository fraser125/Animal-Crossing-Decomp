lbl_805BCDA4:
/* 805BCDA4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805BCDA8  38 00 00 09 */	li r0, 9
/* 805BCDAC  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805BCDB0  3C 84 00 02 */	addis r4, r4, 2
/* 805BCDB4  80 84 60 98 */	lwz r4, 0x6098(r4)
/* 805BCDB8  38 A4 00 14 */	addi r5, r4, 0x14
/* 805BCDBC  38 84 00 38 */	addi r4, r4, 0x38
/* 805BCDC0  7C 09 03 A6 */	mtctr r0
lbl_805BCDC4:
/* 805BCDC4  80 05 00 00 */	lwz r0, 0(r5)
/* 805BCDC8  7C 00 18 40 */	cmplw r0, r3
/* 805BCDCC  40 82 00 10 */	bne lbl_805BCDDC
/* 805BCDD0  38 00 00 00 */	li r0, 0
/* 805BCDD4  90 04 00 00 */	stw r0, 0(r4)
/* 805BCDD8  4E 80 00 20 */	blr 
lbl_805BCDDC:
/* 805BCDDC  38 A5 00 04 */	addi r5, r5, 4
/* 805BCDE0  38 84 00 04 */	addi r4, r4, 4
/* 805BCDE4  42 00 FF E0 */	bdnz lbl_805BCDC4
/* 805BCDE8  4E 80 00 20 */	blr 
