lbl_8062B494:
/* 8062B494  38 03 FF FA */	addi r0, r3, -6
/* 8062B498  28 00 00 2D */	cmplwi r0, 0x2d
/* 8062B49C  41 81 00 34 */	bgt lbl_8062B4D0
/* 8062B4A0  3C 60 80 6D */	lis r3, lit_872@ha /* 0x806D46CC@ha */
/* 8062B4A4  54 00 10 3A */	slwi r0, r0, 2
/* 8062B4A8  38 63 46 CC */	addi r3, r3, lit_872@l /* 0x806D46CC@l */
/* 8062B4AC  7C 03 00 2E */	lwzx r0, r3, r0
/* 8062B4B0  7C 09 03 A6 */	mtctr r0
/* 8062B4B4  4E 80 04 20 */	bctr 
lbl_8062B4B8:
/* 8062B4B8  38 60 00 01 */	li r3, 1
/* 8062B4BC  4E 80 00 20 */	blr 
lbl_8062B4C0:
/* 8062B4C0  38 60 00 02 */	li r3, 2
/* 8062B4C4  4E 80 00 20 */	blr 
lbl_8062B4C8:
/* 8062B4C8  38 60 00 03 */	li r3, 3
/* 8062B4CC  4E 80 00 20 */	blr 
lbl_8062B4D0:
/* 8062B4D0  38 60 00 00 */	li r3, 0
/* 8062B4D4  4E 80 00 20 */	blr 
