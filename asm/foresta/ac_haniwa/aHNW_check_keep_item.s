lbl_804278C0:
/* 804278C0  88 A3 02 83 */	lbz r5, 0x283(r3)
/* 804278C4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804278C8  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 804278CC  38 00 00 04 */	li r0, 4
/* 804278D0  1C A5 26 B0 */	mulli r5, r5, 0x26b0
/* 804278D4  38 60 00 00 */	li r3, 0
/* 804278D8  7C 84 2A 14 */	add r4, r4, r5
/* 804278DC  3C 84 00 01 */	addis r4, r4, 1
/* 804278E0  7C 09 03 A6 */	mtctr r0
/* 804278E4  38 84 C2 BC */	addi r4, r4, -15684
lbl_804278E8:
/* 804278E8  A0 04 00 00 */	lhz r0, 0(r4)
/* 804278EC  28 00 00 00 */	cmplwi r0, 0
/* 804278F0  41 82 00 0C */	beq lbl_804278FC
/* 804278F4  38 60 00 01 */	li r3, 1
/* 804278F8  4E 80 00 20 */	blr 
lbl_804278FC:
/* 804278FC  38 84 00 08 */	addi r4, r4, 8
/* 80427900  42 00 FF E8 */	bdnz lbl_804278E8
/* 80427904  4E 80 00 20 */	blr 
