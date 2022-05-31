lbl_805DEA40:
/* 805DEA40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805DEA44  7C 08 02 A6 */	mflr r0
/* 805DEA48  90 01 00 14 */	stw r0, 0x14(r1)
/* 805DEA4C  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 805DEA50  80 A4 09 80 */	lwz r5, 0x980(r4)
/* 805DEA54  80 84 09 7C */	lwz r4, 0x97c(r4)
/* 805DEA58  80 05 00 88 */	lwz r0, 0x88(r5)
/* 805DEA5C  2C 00 00 01 */	cmpwi r0, 1
/* 805DEA60  40 82 00 3C */	bne lbl_805DEA9C
/* 805DEA64  80 04 00 40 */	lwz r0, 0x40(r4)
/* 805DEA68  2C 00 00 15 */	cmpwi r0, 0x15
/* 805DEA6C  41 82 00 14 */	beq lbl_805DEA80
/* 805DEA70  40 80 00 24 */	bge lbl_805DEA94
/* 805DEA74  2C 00 00 0A */	cmpwi r0, 0xa
/* 805DEA78  41 82 00 08 */	beq lbl_805DEA80
/* 805DEA7C  48 00 00 18 */	b lbl_805DEA94
lbl_805DEA80:
/* 805DEA80  38 60 00 00 */	li r3, 0
/* 805DEA84  38 00 00 01 */	li r0, 1
/* 805DEA88  B0 65 02 32 */	sth r3, 0x232(r5)
/* 805DEA8C  B0 05 00 14 */	sth r0, 0x14(r5)
/* 805DEA90  48 00 00 38 */	b lbl_805DEAC8
lbl_805DEA94:
/* 805DEA94  4B FF FF 19 */	bl mHD_open_end_proc
/* 805DEA98  48 00 00 30 */	b lbl_805DEAC8
lbl_805DEA9C:
/* 805DEA9C  88 05 03 66 */	lbz r0, 0x366(r5)
/* 805DEAA0  28 00 00 00 */	cmplwi r0, 0
/* 805DEAA4  41 82 00 24 */	beq lbl_805DEAC8
/* 805DEAA8  80 04 00 40 */	lwz r0, 0x40(r4)
/* 805DEAAC  2C 00 00 15 */	cmpwi r0, 0x15
/* 805DEAB0  41 82 00 14 */	beq lbl_805DEAC4
/* 805DEAB4  40 80 00 14 */	bge lbl_805DEAC8
/* 805DEAB8  2C 00 00 0A */	cmpwi r0, 0xa
/* 805DEABC  41 82 00 08 */	beq lbl_805DEAC4
/* 805DEAC0  48 00 00 08 */	b lbl_805DEAC8
lbl_805DEAC4:
/* 805DEAC4  4B FF FE E9 */	bl mHD_open_end_proc
lbl_805DEAC8:
/* 805DEAC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805DEACC  7C 08 03 A6 */	mtlr r0
/* 805DEAD0  38 21 00 10 */	addi r1, r1, 0x10
/* 805DEAD4  4E 80 00 20 */	blr 
