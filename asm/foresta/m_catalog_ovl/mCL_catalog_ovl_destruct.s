lbl_805CC0C4:
/* 805CC0C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805CC0C8  7C 08 02 A6 */	mflr r0
/* 805CC0CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805CC0D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805CC0D4  7C 7F 1B 78 */	mr r31, r3
/* 805CC0D8  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805CC0DC  80 63 09 CC */	lwz r3, 0x9cc(r3)
/* 805CC0E0  28 03 00 00 */	cmplwi r3, 0
/* 805CC0E4  41 82 00 08 */	beq lbl_805CC0EC
/* 805CC0E8  4B DF 03 CD */	bl zelda_free
lbl_805CC0EC:
/* 805CC0EC  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 805CC0F0  38 00 00 00 */	li r0, 0
/* 805CC0F4  90 03 09 CC */	stw r0, 0x9cc(r3)
/* 805CC0F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805CC0FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805CC100  7C 08 03 A6 */	mtlr r0
/* 805CC104  38 21 00 10 */	addi r1, r1, 0x10
/* 805CC108  4E 80 00 20 */	blr 
