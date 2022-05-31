lbl_803BFC54:
/* 803BFC54  2C 04 00 00 */	cmpwi r4, 0
/* 803BFC58  41 80 00 74 */	blt lbl_803BFCCC
/* 803BFC5C  2C 04 00 14 */	cmpwi r4, 0x14
/* 803BFC60  40 80 00 6C */	bge lbl_803BFCCC
/* 803BFC64  28 05 00 00 */	cmplwi r5, 0
/* 803BFC68  41 82 00 64 */	beq lbl_803BFCCC
/* 803BFC6C  2C 06 00 10 */	cmpwi r6, 0x10
/* 803BFC70  54 87 20 36 */	slwi r7, r4, 4
/* 803BFC74  38 E7 00 38 */	addi r7, r7, 0x38
/* 803BFC78  40 81 00 08 */	ble lbl_803BFC80
/* 803BFC7C  38 C0 00 10 */	li r6, 0x10
lbl_803BFC80:
/* 803BFC80  38 00 00 10 */	li r0, 0x10
/* 803BFC84  7C E3 3A 14 */	add r7, r3, r7
/* 803BFC88  39 20 00 00 */	li r9, 0
/* 803BFC8C  39 00 00 20 */	li r8, 0x20
/* 803BFC90  7C 09 03 A6 */	mtctr r0
lbl_803BFC94:
/* 803BFC94  7C 09 30 00 */	cmpw r9, r6
/* 803BFC98  40 80 00 10 */	bge lbl_803BFCA8
/* 803BFC9C  88 05 00 00 */	lbz r0, 0(r5)
/* 803BFCA0  98 07 00 00 */	stb r0, 0(r7)
/* 803BFCA4  48 00 00 08 */	b lbl_803BFCAC
lbl_803BFCA8:
/* 803BFCA8  99 07 00 00 */	stb r8, 0(r7)
lbl_803BFCAC:
/* 803BFCAC  39 29 00 01 */	addi r9, r9, 1
/* 803BFCB0  38 E7 00 01 */	addi r7, r7, 1
/* 803BFCB4  38 A5 00 01 */	addi r5, r5, 1
/* 803BFCB8  42 00 FF DC */	bdnz lbl_803BFC94
/* 803BFCBC  54 80 10 3A */	slwi r0, r4, 2
/* 803BFCC0  38 C0 00 00 */	li r6, 0
/* 803BFCC4  7C A3 02 14 */	add r5, r3, r0
/* 803BFCC8  90 C5 01 78 */	stw r6, 0x178(r5)
lbl_803BFCCC:
/* 803BFCCC  2C 04 00 01 */	cmpwi r4, 1
/* 803BFCD0  40 82 00 10 */	bne lbl_803BFCE0
/* 803BFCD4  38 00 00 00 */	li r0, 0
/* 803BFCD8  98 03 04 00 */	stb r0, 0x400(r3)
/* 803BFCDC  4E 80 00 20 */	blr 
lbl_803BFCE0:
/* 803BFCE0  2C 04 00 02 */	cmpwi r4, 2
/* 803BFCE4  40 82 00 10 */	bne lbl_803BFCF4
/* 803BFCE8  38 00 00 00 */	li r0, 0
/* 803BFCEC  98 03 04 01 */	stb r0, 0x401(r3)
/* 803BFCF0  4E 80 00 20 */	blr 
lbl_803BFCF4:
/* 803BFCF4  2C 04 00 05 */	cmpwi r4, 5
/* 803BFCF8  4C 82 00 20 */	bnelr 
/* 803BFCFC  38 00 00 00 */	li r0, 0
/* 803BFD00  98 03 04 02 */	stb r0, 0x402(r3)
/* 803BFD04  4E 80 00 20 */	blr 
