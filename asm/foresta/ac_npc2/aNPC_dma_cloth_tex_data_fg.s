lbl_8053ADDC:
/* 8053ADDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053ADE0  7C 08 02 A6 */	mflr r0
/* 8053ADE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053ADE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8053ADEC  7C 7F 1B 78 */	mr r31, r3
/* 8053ADF0  4B FF FF 25 */	bl aNPC_getP_cloth_tex_rom
/* 8053ADF4  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 8053ADF8  38 A0 02 00 */	li r5, 0x200
/* 8053ADFC  4B AC BE 79 */	bl _JW_GetResourceAram
/* 8053AE00  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 8053AE04  38 80 02 00 */	li r4, 0x200
/* 8053AE08  4B B3 EE 15 */	bl DCStoreRangeNoSync
/* 8053AE0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053AE10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8053AE14  7C 08 03 A6 */	mtlr r0
/* 8053AE18  38 21 00 10 */	addi r1, r1, 0x10
/* 8053AE1C  4E 80 00 20 */	blr 
