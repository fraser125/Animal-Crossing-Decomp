lbl_8037A738:
/* 8037A738  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037A73C  7C 08 02 A6 */	mflr r0
/* 8037A740  38 80 00 0C */	li r4, 0xc
/* 8037A744  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037A748  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8037A74C  7C 7F 1B 78 */	mr r31, r3
/* 8037A750  4B CE 29 19 */	bl bzero
/* 8037A754  7F E3 FB 78 */	mr r3, r31
/* 8037A758  4B FF E2 3D */	bl mBGMElem_default_set
/* 8037A75C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037A760  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8037A764  7C 08 03 A6 */	mtlr r0
/* 8037A768  38 21 00 10 */	addi r1, r1, 0x10
/* 8037A76C  4E 80 00 20 */	blr 
