lbl_805C2B88:
/* 805C2B88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805C2B8C  7C 08 02 A6 */	mflr r0
/* 805C2B90  38 C0 00 01 */	li r6, 1
/* 805C2B94  90 01 00 14 */	stw r0, 0x14(r1)
/* 805C2B98  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805C2B9C  80 65 09 94 */	lwz r3, 0x994(r5)
/* 805C2BA0  80 A5 09 90 */	lwz r5, 0x990(r5)
/* 805C2BA4  90 C4 00 30 */	stw r6, 0x30(r4)
/* 805C2BA8  88 05 00 02 */	lbz r0, 2(r5)
/* 805C2BAC  28 00 00 01 */	cmplwi r0, 1
/* 805C2BB0  40 82 00 4C */	bne lbl_805C2BFC
/* 805C2BB4  90 C4 00 04 */	stw r6, 4(r4)
/* 805C2BB8  38 00 00 02 */	li r0, 2
/* 805C2BBC  38 A0 00 00 */	li r5, 0
/* 805C2BC0  90 04 00 30 */	stw r0, 0x30(r4)
/* 805C2BC4  98 03 00 02 */	stb r0, 2(r3)
/* 805C2BC8  98 A3 00 05 */	stb r5, 5(r3)
/* 805C2BCC  88 03 00 08 */	lbz r0, 8(r3)
/* 805C2BD0  28 00 00 00 */	cmplwi r0, 0
/* 805C2BD4  41 82 00 0C */	beq lbl_805C2BE0
/* 805C2BD8  98 A3 00 03 */	stb r5, 3(r3)
/* 805C2BDC  48 00 00 14 */	b lbl_805C2BF0
lbl_805C2BE0:
/* 805C2BE0  88 03 00 09 */	lbz r0, 9(r3)
/* 805C2BE4  28 00 00 00 */	cmplwi r0, 0
/* 805C2BE8  41 82 00 08 */	beq lbl_805C2BF0
/* 805C2BEC  98 C3 00 03 */	stb r6, 3(r3)
lbl_805C2BF0:
/* 805C2BF0  88 A3 00 03 */	lbz r5, 3(r3)
/* 805C2BF4  38 83 00 14 */	addi r4, r3, 0x14
/* 805C2BF8  4B FF F5 71 */	bl mAD_pile_init
lbl_805C2BFC:
/* 805C2BFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805C2C00  7C 08 03 A6 */	mtlr r0
/* 805C2C04  38 21 00 10 */	addi r1, r1, 0x10
/* 805C2C08  4E 80 00 20 */	blr 
