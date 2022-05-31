lbl_8053AE64:
/* 8053AE64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053AE68  7C 08 02 A6 */	mflr r0
/* 8053AE6C  3C 60 81 1F */	lis r3, data_811EBD30@ha /* 0x811EBD30@ha */
/* 8053AE70  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053AE74  38 63 BD 30 */	addi r3, r3, data_811EBD30@l /* 0x811EBD30@l */
/* 8053AE78  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8053AE7C  93 C1 00 08 */	stw r30, 8(r1)
/* 8053AE80  3B C0 00 00 */	li r30, 0
/* 8053AE84  80 63 00 00 */	lwz r3, 0(r3)
/* 8053AE88  3B E3 01 74 */	addi r31, r3, 0x174
lbl_8053AE8C:
/* 8053AE8C  A0 7F 00 04 */	lhz r3, 4(r31)
/* 8053AE90  28 03 00 00 */	cmplwi r3, 0
/* 8053AE94  41 82 00 50 */	beq lbl_8053AEE4
/* 8053AE98  88 1F 00 00 */	lbz r0, 0(r31)
/* 8053AE9C  28 00 00 01 */	cmplwi r0, 1
/* 8053AEA0  40 82 00 44 */	bne lbl_8053AEE4
/* 8053AEA4  28 03 FE 20 */	cmplwi r3, 0xfe20
/* 8053AEA8  41 82 00 1C */	beq lbl_8053AEC4
/* 8053AEAC  28 03 24 00 */	cmplwi r3, 0x2400
/* 8053AEB0  41 80 00 0C */	blt lbl_8053AEBC
/* 8053AEB4  28 03 24 FF */	cmplwi r3, 0x24ff
/* 8053AEB8  41 80 00 0C */	blt lbl_8053AEC4
lbl_8053AEBC:
/* 8053AEBC  38 00 24 00 */	li r0, 0x2400
/* 8053AEC0  B0 1F 00 04 */	sth r0, 4(r31)
lbl_8053AEC4:
/* 8053AEC4  7F E3 FB 78 */	mr r3, r31
/* 8053AEC8  4B FF FF 15 */	bl aNPC_dma_cloth_tex_data_fg
/* 8053AECC  7F E3 FB 78 */	mr r3, r31
/* 8053AED0  4B FF FF 51 */	bl aNPC_dma_cloth_pal_data_fg
/* 8053AED4  38 00 00 00 */	li r0, 0
/* 8053AED8  98 1F 00 00 */	stb r0, 0(r31)
/* 8053AEDC  98 1F 00 63 */	stb r0, 0x63(r31)
/* 8053AEE0  98 1F 00 BF */	stb r0, 0xbf(r31)
lbl_8053AEE4:
/* 8053AEE4  3B DE 00 01 */	addi r30, r30, 1
/* 8053AEE8  3B FF 00 C0 */	addi r31, r31, 0xc0
/* 8053AEEC  2C 1E 00 0A */	cmpwi r30, 0xa
/* 8053AEF0  41 80 FF 9C */	blt lbl_8053AE8C
/* 8053AEF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053AEF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8053AEFC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8053AF00  7C 08 03 A6 */	mtlr r0
/* 8053AF04  38 21 00 10 */	addi r1, r1, 0x10
/* 8053AF08  4E 80 00 20 */	blr 
