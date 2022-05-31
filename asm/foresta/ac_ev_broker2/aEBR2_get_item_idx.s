lbl_8051AC50:
/* 8051AC50  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8051AC54  38 00 00 03 */	li r0, 3
/* 8051AC58  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 8051AC5C  54 64 04 3E */	clrlwi r4, r3, 0x10
/* 8051AC60  3C A5 00 02 */	addis r5, r5, 2
/* 8051AC64  38 60 00 00 */	li r3, 0
/* 8051AC68  38 A5 04 DC */	addi r5, r5, 0x4dc
/* 8051AC6C  7C 09 03 A6 */	mtctr r0
lbl_8051AC70:
/* 8051AC70  A0 05 00 00 */	lhz r0, 0(r5)
/* 8051AC74  7C 00 20 40 */	cmplw r0, r4
/* 8051AC78  4D 82 00 20 */	beqlr 
/* 8051AC7C  38 A5 00 02 */	addi r5, r5, 2
/* 8051AC80  38 63 00 01 */	addi r3, r3, 1
/* 8051AC84  42 00 FF EC */	bdnz lbl_8051AC70
/* 8051AC88  38 60 00 00 */	li r3, 0
/* 8051AC8C  4E 80 00 20 */	blr 
