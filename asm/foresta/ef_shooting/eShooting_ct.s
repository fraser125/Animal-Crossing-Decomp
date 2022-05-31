lbl_8061BB4C:
/* 8061BB4C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8061BB50  7C 08 02 A6 */	mflr r0
/* 8061BB54  90 01 00 24 */	stw r0, 0x24(r1)
/* 8061BB58  38 00 01 40 */	li r0, 0x140
/* 8061BB5C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8061BB60  7C 7F 1B 78 */	mr r31, r3
/* 8061BB64  B0 03 00 00 */	sth r0, 0(r3)
/* 8061BB68  4B A4 11 8D */	bl fqrand
/* 8061BB6C  3C 80 80 65 */	lis r4, lit_386@ha /* 0x8064CAA0@ha */
/* 8061BB70  3C 60 80 65 */	lis r3, data_8064CA9C@ha /* 0x8064CA9C@ha */
/* 8061BB74  C0 44 CA A0 */	lfs f2, lit_386@l(r4)  /* 0x8064CAA0@l */
/* 8061BB78  38 00 00 00 */	li r0, 0
/* 8061BB7C  C0 03 CA 9C */	lfs f0, data_8064CA9C@l(r3)  /* 0x8064CA9C@l */
/* 8061BB80  EC 22 00 72 */	fmuls f1, f2, f1
/* 8061BB84  EC 00 08 2A */	fadds f0, f0, f1
/* 8061BB88  FC 00 00 1E */	fctiwz f0, f0
/* 8061BB8C  D8 01 00 08 */	stfd f0, 8(r1)
/* 8061BB90  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8061BB94  B0 7F 00 4C */	sth r3, 0x4c(r31)
/* 8061BB98  B0 1F 00 4E */	sth r0, 0x4e(r31)
/* 8061BB9C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8061BBA0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8061BBA4  7C 08 03 A6 */	mtlr r0
/* 8061BBA8  38 21 00 20 */	addi r1, r1, 0x20
/* 8061BBAC  4E 80 00 20 */	blr 
