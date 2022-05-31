lbl_8037BCA0:
/* 8037BCA0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8037BCA4  7C 08 02 A6 */	mflr r0
/* 8037BCA8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8037BCAC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8037BCB0  7C 9F 23 78 */	mr r31, r4
/* 8037BCB4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8037BCB8  7C 7E 1B 78 */	mr r30, r3
/* 8037BCBC  38 61 00 08 */	addi r3, r1, 8
/* 8037BCC0  4B FF CC D5 */	bl mBGMElem_default_set
/* 8037BCC4  3C 60 81 13 */	lis r3, data_811351C0@ha /* 0x811351C0@ha */
/* 8037BCC8  9B C1 00 08 */	stb r30, 8(r1)
/* 8037BCCC  38 63 51 C0 */	addi r3, r3, data_811351C0@l /* 0x811351C0@l */
/* 8037BCD0  38 81 00 08 */	addi r4, r1, 8
/* 8037BCD4  B3 E1 00 0E */	sth r31, 0xe(r1)
/* 8037BCD8  38 63 01 64 */	addi r3, r3, 0x164
/* 8037BCDC  38 A0 00 03 */	li r5, 3
/* 8037BCE0  38 C0 FF FF */	li r6, -1
/* 8037BCE4  38 E0 00 00 */	li r7, 0
/* 8037BCE8  39 00 00 FF */	li r8, 0xff
/* 8037BCEC  4B FF FB ED */	bl mBGMPsComp_make_ps
/* 8037BCF0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8037BCF4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8037BCF8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8037BCFC  7C 08 03 A6 */	mtlr r0
/* 8037BD00  38 21 00 20 */	addi r1, r1, 0x20
/* 8037BD04  4E 80 00 20 */	blr 
