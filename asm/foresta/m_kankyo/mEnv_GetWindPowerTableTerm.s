lbl_803B9EE4:
/* 803B9EE4  3C 80 80 65 */	lis r4, wind_term@ha /* 0x8065636C@ha */
/* 803B9EE8  38 00 00 04 */	li r0, 4
/* 803B9EEC  38 A4 63 6C */	addi r5, r4, wind_term@l /* 0x8065636C@l */
/* 803B9EF0  88 E3 00 05 */	lbz r7, 5(r3)
/* 803B9EF4  89 03 00 03 */	lbz r8, 3(r3)
/* 803B9EF8  38 60 00 00 */	li r3, 0
/* 803B9EFC  38 80 00 00 */	li r4, 0
/* 803B9F00  7C 09 03 A6 */	mtctr r0
lbl_803B9F04:
/* 803B9F04  7C C5 22 14 */	add r6, r5, r4
/* 803B9F08  88 06 00 00 */	lbz r0, 0(r6)
/* 803B9F0C  7C 07 00 40 */	cmplw r7, r0
/* 803B9F10  4D 80 00 20 */	bltlr 
/* 803B9F14  40 82 00 10 */	bne lbl_803B9F24
/* 803B9F18  88 06 00 01 */	lbz r0, 1(r6)
/* 803B9F1C  7C 08 00 40 */	cmplw r8, r0
/* 803B9F20  4C 81 00 20 */	blelr 
lbl_803B9F24:
/* 803B9F24  38 63 00 01 */	addi r3, r3, 1
/* 803B9F28  38 84 00 02 */	addi r4, r4, 2
/* 803B9F2C  42 00 FF D8 */	bdnz lbl_803B9F04
/* 803B9F30  4E 80 00 20 */	blr 
