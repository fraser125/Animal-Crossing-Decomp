lbl_80545EF0:
/* 80545EF0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80545EF4  38 00 00 05 */	li r0, 5
/* 80545EF8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80545EFC  3C 63 00 02 */	addis r3, r3, 2
/* 80545F00  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 80545F04  38 63 10 A8 */	addi r3, r3, 0x10a8
/* 80545F08  7C 09 03 A6 */	mtctr r0
lbl_80545F0C:
/* 80545F0C  A0 03 00 00 */	lhz r0, 0(r3)
/* 80545F10  28 00 00 00 */	cmplwi r0, 0
/* 80545F14  4D 82 00 20 */	beqlr 
/* 80545F18  38 63 00 04 */	addi r3, r3, 4
/* 80545F1C  42 00 FF F0 */	bdnz lbl_80545F0C
/* 80545F20  38 60 00 00 */	li r3, 0
/* 80545F24  4E 80 00 20 */	blr 
