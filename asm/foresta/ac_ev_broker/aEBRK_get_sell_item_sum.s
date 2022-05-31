lbl_8051A0B8:
/* 8051A0B8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8051A0BC  38 00 00 03 */	li r0, 3
/* 8051A0C0  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 8051A0C4  38 60 00 00 */	li r3, 0
/* 8051A0C8  3C 84 00 02 */	addis r4, r4, 2
/* 8051A0CC  7C 09 03 A6 */	mtctr r0
/* 8051A0D0  38 84 04 DC */	addi r4, r4, 0x4dc
lbl_8051A0D4:
/* 8051A0D4  A0 04 00 00 */	lhz r0, 0(r4)
/* 8051A0D8  28 00 00 00 */	cmplwi r0, 0
/* 8051A0DC  41 82 00 08 */	beq lbl_8051A0E4
/* 8051A0E0  38 63 00 01 */	addi r3, r3, 1
lbl_8051A0E4:
/* 8051A0E4  38 84 00 02 */	addi r4, r4, 2
/* 8051A0E8  42 00 FF EC */	bdnz lbl_8051A0D4
/* 8051A0EC  4E 80 00 20 */	blr 
