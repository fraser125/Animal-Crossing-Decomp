lbl_8053AE20:
/* 8053AE20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053AE24  7C 08 02 A6 */	mflr r0
/* 8053AE28  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053AE2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8053AE30  7C 7F 1B 78 */	mr r31, r3
/* 8053AE34  4B FF FF 45 */	bl aNPC_getP_cloth_pal_rom
/* 8053AE38  80 9F 00 68 */	lwz r4, 0x68(r31)
/* 8053AE3C  38 A0 00 20 */	li r5, 0x20
/* 8053AE40  4B AC BE 35 */	bl _JW_GetResourceAram
/* 8053AE44  80 7F 00 68 */	lwz r3, 0x68(r31)
/* 8053AE48  38 80 00 20 */	li r4, 0x20
/* 8053AE4C  4B B3 ED D1 */	bl DCStoreRangeNoSync
/* 8053AE50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053AE54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8053AE58  7C 08 03 A6 */	mtlr r0
/* 8053AE5C  38 21 00 10 */	addi r1, r1, 0x10
/* 8053AE60  4E 80 00 20 */	blr 
