lbl_8059AF38:
/* 8059AF38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059AF3C  7C 08 02 A6 */	mflr r0
/* 8059AF40  38 80 00 01 */	li r4, 1
/* 8059AF44  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059AF48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8059AF4C  7C 7F 1B 78 */	mr r31, r3
/* 8059AF50  4B FF FB 4D */	bl aIHD_fuwafuwa
/* 8059AF54  3C 60 80 65 */	lis r3, lit_563@ha /* 0x8064A000@ha */
/* 8059AF58  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 8059AF5C  C0 03 A0 00 */	lfs f0, lit_563@l(r3)  /* 0x8064A000@l */
/* 8059AF60  EC 01 00 2A */	fadds f0, f1, f0
/* 8059AF64  D0 1F 00 78 */	stfs f0, 0x78(r31)
/* 8059AF68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059AF6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8059AF70  7C 08 03 A6 */	mtlr r0
/* 8059AF74  38 21 00 10 */	addi r1, r1, 0x10
/* 8059AF78  4E 80 00 20 */	blr 
