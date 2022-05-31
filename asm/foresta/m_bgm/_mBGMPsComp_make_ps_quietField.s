lbl_8037BEE0:
/* 8037BEE0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8037BEE4  7C 08 02 A6 */	mflr r0
/* 8037BEE8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8037BEEC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8037BEF0  7C 7F 1B 78 */	mr r31, r3
/* 8037BEF4  38 61 00 08 */	addi r3, r1, 8
/* 8037BEF8  4B FF CA 9D */	bl mBGMElem_default_set
/* 8037BEFC  3C 60 81 13 */	lis r3, data_811351C0@ha /* 0x811351C0@ha */
/* 8037BF00  B3 E1 00 0E */	sth r31, 0xe(r1)
/* 8037BF04  38 63 51 C0 */	addi r3, r3, data_811351C0@l /* 0x811351C0@l */
/* 8037BF08  38 81 00 08 */	addi r4, r1, 8
/* 8037BF0C  38 63 01 64 */	addi r3, r3, 0x164
/* 8037BF10  38 A0 00 08 */	li r5, 8
/* 8037BF14  38 C0 FF FF */	li r6, -1
/* 8037BF18  38 E0 00 40 */	li r7, 0x40
/* 8037BF1C  39 00 00 FF */	li r8, 0xff
/* 8037BF20  4B FF F9 B9 */	bl mBGMPsComp_make_ps
/* 8037BF24  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8037BF28  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8037BF2C  7C 08 03 A6 */	mtlr r0
/* 8037BF30  38 21 00 20 */	addi r1, r1, 0x20
/* 8037BF34  4E 80 00 20 */	blr 
