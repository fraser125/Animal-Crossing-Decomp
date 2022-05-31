lbl_805A6A0C:
/* 805A6A0C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805A6A10  7C 08 02 A6 */	mflr r0
/* 805A6A14  90 01 00 24 */	stw r0, 0x24(r1)
/* 805A6A18  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805A6A1C  7C 7F 1B 78 */	mr r31, r3
/* 805A6A20  4B AB 62 D5 */	bl fqrand
/* 805A6A24  3C 60 80 65 */	lis r3, lit_748@ha /* 0x8064A488@ha */
/* 805A6A28  C0 03 A4 88 */	lfs f0, lit_748@l(r3)  /* 0x8064A488@l */
/* 805A6A2C  EC 00 00 72 */	fmuls f0, f0, f1
/* 805A6A30  FC 00 00 1E */	fctiwz f0, f0
/* 805A6A34  D8 01 00 08 */	stfd f0, 8(r1)
/* 805A6A38  80 61 00 0C */	lwz r3, 0xc(r1)
/* 805A6A3C  38 03 00 01 */	addi r0, r3, 1
/* 805A6A40  B0 1F 02 30 */	sth r0, 0x230(r31)
/* 805A6A44  4B AB 62 E9 */	bl fqrand2
/* 805A6A48  3C 80 80 65 */	lis r4, lit_603@ha /* 0x8064A46C@ha */
/* 805A6A4C  7F E3 FB 78 */	mr r3, r31
/* 805A6A50  C0 04 A4 6C */	lfs f0, lit_603@l(r4)  /* 0x8064A46C@l */
/* 805A6A54  EC 00 00 72 */	fmuls f0, f0, f1
/* 805A6A58  FC 00 00 1E */	fctiwz f0, f0
/* 805A6A5C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 805A6A60  80 81 00 14 */	lwz r4, 0x14(r1)
/* 805A6A64  38 04 00 0F */	addi r0, r4, 0xf
/* 805A6A68  B0 1F 02 32 */	sth r0, 0x232(r31)
/* 805A6A6C  4B FF E4 7D */	bl aGKK_speed_reset
/* 805A6A70  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805A6A74  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805A6A78  7C 08 03 A6 */	mtlr r0
/* 805A6A7C  38 21 00 20 */	addi r1, r1, 0x20
/* 805A6A80  4E 80 00 20 */	blr 
