lbl_805DCFD4:
/* 805DCFD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805DCFD8  7C 08 02 A6 */	mflr r0
/* 805DCFDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805DCFE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805DCFE4  7C 7F 1B 78 */	mr r31, r3
/* 805DCFE8  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805DCFEC  80 63 09 E4 */	lwz r3, 0x9e4(r3)
/* 805DCFF0  28 03 00 00 */	cmplwi r3, 0
/* 805DCFF4  41 82 00 08 */	beq lbl_805DCFFC
/* 805DCFF8  4B DD F4 BD */	bl zelda_free
lbl_805DCFFC:
/* 805DCFFC  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 805DD000  38 00 00 00 */	li r0, 0
/* 805DD004  90 03 09 E4 */	stw r0, 0x9e4(r3)
/* 805DD008  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805DD00C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805DD010  7C 08 03 A6 */	mtlr r0
/* 805DD014  38 21 00 10 */	addi r1, r1, 0x10
/* 805DD018  4E 80 00 20 */	blr 
