lbl_803B9CE8:
/* 803B9CE8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803B9CEC  3C 60 80 65 */	lis r3, weather_term_table@ha /* 0x8065630C@ha */
/* 803B9CF0  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803B9CF4  38 00 00 14 */	li r0, 0x14
/* 803B9CF8  3C 84 00 02 */	addis r4, r4, 2
/* 803B9CFC  38 A3 63 0C */	addi r5, r3, weather_term_table@l /* 0x8065630C@l */
/* 803B9D00  88 E4 61 25 */	lbz r7, 0x6125(r4)
/* 803B9D04  38 60 00 00 */	li r3, 0
/* 803B9D08  89 04 61 23 */	lbz r8, 0x6123(r4)
/* 803B9D0C  38 80 00 00 */	li r4, 0
/* 803B9D10  7C 09 03 A6 */	mtctr r0
lbl_803B9D14:
/* 803B9D14  7C C5 22 14 */	add r6, r5, r4
/* 803B9D18  88 06 00 00 */	lbz r0, 0(r6)
/* 803B9D1C  7C 07 00 40 */	cmplw r7, r0
/* 803B9D20  4D 80 00 20 */	bltlr 
/* 803B9D24  40 82 00 10 */	bne lbl_803B9D34
/* 803B9D28  88 06 00 01 */	lbz r0, 1(r6)
/* 803B9D2C  7C 08 00 40 */	cmplw r8, r0
/* 803B9D30  4C 81 00 20 */	blelr 
lbl_803B9D34:
/* 803B9D34  38 63 00 01 */	addi r3, r3, 1
/* 803B9D38  38 84 00 02 */	addi r4, r4, 2
/* 803B9D3C  42 00 FF D8 */	bdnz lbl_803B9D14
/* 803B9D40  38 60 00 01 */	li r3, 1
/* 803B9D44  4E 80 00 20 */	blr 
