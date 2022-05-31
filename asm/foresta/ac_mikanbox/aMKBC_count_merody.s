lbl_805B3BA4:
/* 805B3BA4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805B3BA8  38 00 00 02 */	li r0, 2
/* 805B3BAC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805B3BB0  38 C0 2A 00 */	li r6, 0x2a00
/* 805B3BB4  3C 83 00 02 */	addis r4, r3, 2
/* 805B3BB8  80 A4 61 3C */	lwz r5, 0x613c(r4)
/* 805B3BBC  38 60 00 00 */	li r3, 0
/* 805B3BC0  38 80 00 00 */	li r4, 0
/* 805B3BC4  38 A5 10 D4 */	addi r5, r5, 0x10d4
/* 805B3BC8  7C 09 03 A6 */	mtctr r0
lbl_805B3BCC:
/* 805B3BCC  39 00 00 01 */	li r8, 1
/* 805B3BD0  38 E0 00 00 */	li r7, 0
/* 805B3BD4  48 00 00 20 */	b lbl_805B3BF4
lbl_805B3BD8:
/* 805B3BD8  7C 05 20 2E */	lwzx r0, r5, r4
/* 805B3BDC  7D 00 00 39 */	and. r0, r8, r0
/* 805B3BE0  40 82 00 08 */	bne lbl_805B3BE8
/* 805B3BE4  38 63 00 01 */	addi r3, r3, 1
lbl_805B3BE8:
/* 805B3BE8  55 08 08 3C */	slwi r8, r8, 1
/* 805B3BEC  38 C6 00 01 */	addi r6, r6, 1
/* 805B3BF0  38 E7 00 01 */	addi r7, r7, 1
lbl_805B3BF4:
/* 805B3BF4  2C 06 2A 34 */	cmpwi r6, 0x2a34
/* 805B3BF8  40 80 00 0C */	bge lbl_805B3C04
/* 805B3BFC  2C 07 00 20 */	cmpwi r7, 0x20
/* 805B3C00  41 80 FF D8 */	blt lbl_805B3BD8
lbl_805B3C04:
/* 805B3C04  38 84 00 04 */	addi r4, r4, 4
/* 805B3C08  42 00 FF C4 */	bdnz lbl_805B3BCC
/* 805B3C0C  4E 80 00 20 */	blr 
