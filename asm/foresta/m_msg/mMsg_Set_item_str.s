lbl_803BFDD4:
/* 803BFDD4  2C 04 00 00 */	cmpwi r4, 0
/* 803BFDD8  4D 80 00 20 */	bltlr 
/* 803BFDDC  2C 04 00 05 */	cmpwi r4, 5
/* 803BFDE0  4C 80 00 20 */	bgelr 
/* 803BFDE4  28 05 00 00 */	cmplwi r5, 0
/* 803BFDE8  4D 82 00 20 */	beqlr 
/* 803BFDEC  2C 06 00 10 */	cmpwi r6, 0x10
/* 803BFDF0  54 87 20 36 */	slwi r7, r4, 4
/* 803BFDF4  38 E7 01 C8 */	addi r7, r7, 0x1c8
/* 803BFDF8  40 81 00 08 */	ble lbl_803BFE00
/* 803BFDFC  38 C0 00 10 */	li r6, 0x10
lbl_803BFE00:
/* 803BFE00  38 00 00 10 */	li r0, 0x10
/* 803BFE04  7C E3 3A 14 */	add r7, r3, r7
/* 803BFE08  39 20 00 00 */	li r9, 0
/* 803BFE0C  39 00 00 20 */	li r8, 0x20
/* 803BFE10  7C 09 03 A6 */	mtctr r0
lbl_803BFE14:
/* 803BFE14  7C 09 30 00 */	cmpw r9, r6
/* 803BFE18  40 80 00 10 */	bge lbl_803BFE28
/* 803BFE1C  88 05 00 00 */	lbz r0, 0(r5)
/* 803BFE20  98 07 00 00 */	stb r0, 0(r7)
/* 803BFE24  48 00 00 08 */	b lbl_803BFE2C
lbl_803BFE28:
/* 803BFE28  99 07 00 00 */	stb r8, 0(r7)
lbl_803BFE2C:
/* 803BFE2C  39 29 00 01 */	addi r9, r9, 1
/* 803BFE30  38 E7 00 01 */	addi r7, r7, 1
/* 803BFE34  38 A5 00 01 */	addi r5, r5, 1
/* 803BFE38  42 00 FF DC */	bdnz lbl_803BFE14
/* 803BFE3C  54 80 10 3A */	slwi r0, r4, 2
/* 803BFE40  38 80 00 00 */	li r4, 0
/* 803BFE44  7C 63 02 14 */	add r3, r3, r0
/* 803BFE48  90 83 02 18 */	stw r4, 0x218(r3)
/* 803BFE4C  4E 80 00 20 */	blr 
