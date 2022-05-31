lbl_805C6BA0:
/* 805C6BA0  38 00 00 07 */	li r0, 7
/* 805C6BA4  20 C5 00 2B */	subfic r6, r5, 0x2b
/* 805C6BA8  7C C6 03 96 */	divwu r6, r6, r0
/* 805C6BAC  7C E3 2A 14 */	add r7, r3, r5
/* 805C6BB0  38 60 00 00 */	li r3, 0
/* 805C6BB4  7C C9 03 A6 */	mtctr r6
/* 805C6BB8  2C 05 00 25 */	cmpwi r5, 0x25
/* 805C6BBC  4C 80 00 20 */	bgelr 
lbl_805C6BC0:
/* 805C6BC0  88 07 00 00 */	lbz r0, 0(r7)
/* 805C6BC4  54 00 06 FF */	clrlwi. r0, r0, 0x1b
/* 805C6BC8  40 81 00 08 */	ble lbl_805C6BD0
/* 805C6BCC  38 84 FF FF */	addi r4, r4, -1
lbl_805C6BD0:
/* 805C6BD0  2C 04 00 00 */	cmpwi r4, 0
/* 805C6BD4  41 81 00 0C */	bgt lbl_805C6BE0
/* 805C6BD8  7C 03 03 78 */	mr r3, r0
/* 805C6BDC  4E 80 00 20 */	blr 
lbl_805C6BE0:
/* 805C6BE0  38 E7 00 07 */	addi r7, r7, 7
/* 805C6BE4  42 00 FF DC */	bdnz lbl_805C6BC0
/* 805C6BE8  4E 80 00 20 */	blr 
