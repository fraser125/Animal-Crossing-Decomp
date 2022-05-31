lbl_8059BB28:
/* 8059BB28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059BB2C  7C 08 02 A6 */	mflr r0
/* 8059BB30  38 80 00 01 */	li r4, 1
/* 8059BB34  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059BB38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8059BB3C  7C 7F 1B 78 */	mr r31, r3
/* 8059BB40  4B FF FC 6D */	bl aIHT_fuwafuwa
/* 8059BB44  3C 60 80 65 */	lis r3, lit_581@ha /* 0x8064A090@ha */
/* 8059BB48  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 8059BB4C  C0 03 A0 90 */	lfs f0, lit_581@l(r3)  /* 0x8064A090@l */
/* 8059BB50  EC 01 00 2A */	fadds f0, f1, f0
/* 8059BB54  D0 1F 00 78 */	stfs f0, 0x78(r31)
/* 8059BB58  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 8059BB5C  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 8059BB60  EC 01 00 2A */	fadds f0, f1, f0
/* 8059BB64  D0 1F 00 6C */	stfs f0, 0x6c(r31)
/* 8059BB68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059BB6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8059BB70  7C 08 03 A6 */	mtlr r0
/* 8059BB74  38 21 00 10 */	addi r1, r1, 0x10
/* 8059BB78  4E 80 00 20 */	blr 
