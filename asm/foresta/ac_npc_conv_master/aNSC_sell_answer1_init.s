lbl_8054AAFC:
/* 8054AAFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054AB00  7C 08 02 A6 */	mflr r0
/* 8054AB04  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054AB08  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8054AB0C  7C 7F 1B 78 */	mr r31, r3
/* 8054AB10  4B FF FE D5 */	bl aNSC_sell_answer0_init
/* 8054AB14  38 00 00 00 */	li r0, 0
/* 8054AB18  B0 1F 09 B4 */	sth r0, 0x9b4(r31)
/* 8054AB1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054AB20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8054AB24  7C 08 03 A6 */	mtlr r0
/* 8054AB28  38 21 00 10 */	addi r1, r1, 0x10
/* 8054AB2C  4E 80 00 20 */	blr 
