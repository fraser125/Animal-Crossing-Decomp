lbl_803A246C:
/* 803A246C  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 803A2470  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 803A2474  38 C6 85 38 */	addi r6, r6, common_data@l /* 0x81138538@l */
/* 803A2478  54 A5 06 3E */	clrlwi r5, r5, 0x18
/* 803A247C  3C 86 00 02 */	addis r4, r6, 2
/* 803A2480  38 C0 00 00 */	li r6, 0
/* 803A2484  38 84 29 60 */	addi r4, r4, 0x2960
/* 803A2488  48 00 00 20 */	b lbl_803A24A8
lbl_803A248C:
/* 803A248C  7C 09 03 A6 */	mtctr r0
/* 803A2490  2C 00 00 00 */	cmpwi r0, 0
/* 803A2494  40 81 00 10 */	ble lbl_803A24A4
lbl_803A2498:
/* 803A2498  90 83 05 84 */	stw r4, 0x584(r3)
/* 803A249C  38 63 06 14 */	addi r3, r3, 0x614
/* 803A24A0  42 00 FF F8 */	bdnz lbl_803A2498
lbl_803A24A4:
/* 803A24A4  38 C6 00 01 */	addi r6, r6, 1
lbl_803A24A8:
/* 803A24A8  7C 06 28 00 */	cmpw r6, r5
/* 803A24AC  41 80 FF E0 */	blt lbl_803A248C
/* 803A24B0  4E 80 00 20 */	blr 
