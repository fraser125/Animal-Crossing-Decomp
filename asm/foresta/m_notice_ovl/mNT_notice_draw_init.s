lbl_805EB72C:
/* 805EB72C  3C 60 80 6D */	lis r3, data_806CE2C8@ha /* 0x806CE2C8@ha */
/* 805EB730  38 00 00 09 */	li r0, 9
/* 805EB734  38 63 E2 C8 */	addi r3, r3, data_806CE2C8@l /* 0x806CE2C8@l */
/* 805EB738  7C 09 03 A6 */	mtctr r0
lbl_805EB73C:
/* 805EB73C  38 63 00 04 */	addi r3, r3, 4
/* 805EB740  42 00 FF FC */	bdnz lbl_805EB73C
/* 805EB744  4E 80 00 20 */	blr 
