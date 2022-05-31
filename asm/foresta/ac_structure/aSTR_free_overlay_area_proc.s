lbl_805BCD00:
/* 805BCD00  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805BCD04  38 00 00 09 */	li r0, 9
/* 805BCD08  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805BCD0C  3C 84 00 02 */	addis r4, r4, 2
/* 805BCD10  80 84 60 98 */	lwz r4, 0x6098(r4)
/* 805BCD14  38 A4 00 5C */	addi r5, r4, 0x5c
/* 805BCD18  7C 09 03 A6 */	mtctr r0
lbl_805BCD1C:
/* 805BCD1C  80 85 00 00 */	lwz r4, 0(r5)
/* 805BCD20  80 03 00 10 */	lwz r0, 0x10(r3)
/* 805BCD24  7C 04 00 40 */	cmplw r4, r0
/* 805BCD28  40 82 00 14 */	bne lbl_805BCD3C
/* 805BCD2C  38 00 00 00 */	li r0, 0
/* 805BCD30  90 05 00 04 */	stw r0, 4(r5)
/* 805BCD34  90 03 00 10 */	stw r0, 0x10(r3)
/* 805BCD38  4E 80 00 20 */	blr 
lbl_805BCD3C:
/* 805BCD3C  38 A5 00 08 */	addi r5, r5, 8
/* 805BCD40  42 00 FF DC */	bdnz lbl_805BCD1C
/* 805BCD44  4E 80 00 20 */	blr 
