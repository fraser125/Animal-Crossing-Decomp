lbl_805EA990:
/* 805EA990  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805EA994  7C 08 02 A6 */	mflr r0
/* 805EA998  90 01 00 14 */	stw r0, 0x14(r1)
/* 805EA99C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805EA9A0  7C 7F 1B 78 */	mr r31, r3
/* 805EA9A4  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805EA9A8  80 63 09 D8 */	lwz r3, 0x9d8(r3)
/* 805EA9AC  28 03 00 00 */	cmplwi r3, 0
/* 805EA9B0  41 82 00 08 */	beq lbl_805EA9B8
/* 805EA9B4  4B DD 1B 01 */	bl zelda_free
lbl_805EA9B8:
/* 805EA9B8  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 805EA9BC  38 00 00 00 */	li r0, 0
/* 805EA9C0  90 03 09 D8 */	stw r0, 0x9d8(r3)
/* 805EA9C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805EA9C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805EA9CC  7C 08 03 A6 */	mtlr r0
/* 805EA9D0  38 21 00 10 */	addi r1, r1, 0x10
/* 805EA9D4  4E 80 00 20 */	blr 
