lbl_80421A98:
/* 80421A98  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80421A9C  38 00 00 03 */	li r0, 3
/* 80421AA0  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80421AA4  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 80421AA8  3C 84 00 02 */	addis r4, r4, 2
/* 80421AAC  7C 09 03 A6 */	mtctr r0
/* 80421AB0  38 84 68 78 */	addi r4, r4, 0x6878
lbl_80421AB4:
/* 80421AB4  A0 04 00 00 */	lhz r0, 0(r4)
/* 80421AB8  7C 00 18 40 */	cmplw r0, r3
/* 80421ABC  40 82 00 0C */	bne lbl_80421AC8
/* 80421AC0  38 60 00 01 */	li r3, 1
/* 80421AC4  4E 80 00 20 */	blr 
lbl_80421AC8:
/* 80421AC8  38 84 09 90 */	addi r4, r4, 0x990
/* 80421ACC  42 00 FF E8 */	bdnz lbl_80421AB4
/* 80421AD0  38 60 00 00 */	li r3, 0
/* 80421AD4  4E 80 00 20 */	blr 
