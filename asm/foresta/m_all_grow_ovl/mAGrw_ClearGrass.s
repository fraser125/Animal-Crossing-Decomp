lbl_80514AB0:
/* 80514AB0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80514AB4  38 E0 00 00 */	li r7, 0
/* 80514AB8  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 80514ABC  38 60 00 00 */	li r3, 0
/* 80514AC0  3C A4 00 01 */	addis r5, r4, 1
/* 80514AC4  38 00 01 00 */	li r0, 0x100
/* 80514AC8  38 A5 37 A8 */	addi r5, r5, 0x37a8
lbl_80514ACC:
/* 80514ACC  7C A6 2B 78 */	mr r6, r5
/* 80514AD0  7C 09 03 A6 */	mtctr r0
lbl_80514AD4:
/* 80514AD4  A0 86 00 00 */	lhz r4, 0(r6)
/* 80514AD8  28 04 00 08 */	cmplwi r4, 8
/* 80514ADC  41 80 00 10 */	blt lbl_80514AEC
/* 80514AE0  28 04 00 0A */	cmplwi r4, 0xa
/* 80514AE4  41 81 00 08 */	bgt lbl_80514AEC
/* 80514AE8  B0 66 00 00 */	sth r3, 0(r6)
lbl_80514AEC:
/* 80514AEC  38 C6 00 02 */	addi r6, r6, 2
/* 80514AF0  42 00 FF E4 */	bdnz lbl_80514AD4
/* 80514AF4  38 E7 00 01 */	addi r7, r7, 1
/* 80514AF8  38 A5 02 00 */	addi r5, r5, 0x200
/* 80514AFC  2C 07 00 1E */	cmpwi r7, 0x1e
/* 80514B00  41 80 FF CC */	blt lbl_80514ACC
/* 80514B04  4E 80 00 20 */	blr 
