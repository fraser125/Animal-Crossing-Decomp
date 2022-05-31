lbl_803CEE24:
/* 803CEE24  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803CEE28  38 00 00 03 */	li r0, 3
/* 803CEE2C  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 803CEE30  54 64 04 3E */	clrlwi r4, r3, 0x10
/* 803CEE34  3C 65 00 02 */	addis r3, r5, 2
/* 803CEE38  7C 09 03 A6 */	mtctr r0
/* 803CEE3C  38 63 68 78 */	addi r3, r3, 0x6878
lbl_803CEE40:
/* 803CEE40  A0 03 00 00 */	lhz r0, 0(r3)
/* 803CEE44  7C 00 20 40 */	cmplw r0, r4
/* 803CEE48  4D 82 00 20 */	beqlr 
/* 803CEE4C  38 63 09 90 */	addi r3, r3, 0x990
/* 803CEE50  42 00 FF F0 */	bdnz lbl_803CEE40
/* 803CEE54  38 60 00 00 */	li r3, 0
/* 803CEE58  4E 80 00 20 */	blr 
