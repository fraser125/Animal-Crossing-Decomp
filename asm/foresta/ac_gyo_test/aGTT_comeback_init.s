lbl_805A4B0C:
/* 805A4B0C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805A4B10  7C 08 02 A6 */	mflr r0
/* 805A4B14  90 01 00 24 */	stw r0, 0x24(r1)
/* 805A4B18  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805A4B1C  7C 7F 1B 78 */	mr r31, r3
/* 805A4B20  4B AB 81 D5 */	bl fqrand
/* 805A4B24  3C 60 80 65 */	lis r3, lit_730@ha /* 0x8064A3F8@ha */
/* 805A4B28  C0 03 A3 F8 */	lfs f0, lit_730@l(r3)  /* 0x8064A3F8@l */
/* 805A4B2C  EC 00 00 72 */	fmuls f0, f0, f1
/* 805A4B30  FC 00 00 1E */	fctiwz f0, f0
/* 805A4B34  D8 01 00 08 */	stfd f0, 8(r1)
/* 805A4B38  80 61 00 0C */	lwz r3, 0xc(r1)
/* 805A4B3C  38 03 00 01 */	addi r0, r3, 1
/* 805A4B40  B0 1F 02 30 */	sth r0, 0x230(r31)
/* 805A4B44  4B AB 81 E9 */	bl fqrand2
/* 805A4B48  3C 80 80 65 */	lis r4, lit_627@ha /* 0x8064A3EC@ha */
/* 805A4B4C  7F E3 FB 78 */	mr r3, r31
/* 805A4B50  C0 04 A3 EC */	lfs f0, lit_627@l(r4)  /* 0x8064A3EC@l */
/* 805A4B54  EC 00 00 72 */	fmuls f0, f0, f1
/* 805A4B58  FC 00 00 1E */	fctiwz f0, f0
/* 805A4B5C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 805A4B60  80 81 00 14 */	lwz r4, 0x14(r1)
/* 805A4B64  38 04 00 0F */	addi r0, r4, 0xf
/* 805A4B68  B0 1F 02 32 */	sth r0, 0x232(r31)
/* 805A4B6C  4B FF E3 8D */	bl aGTT_speed_reset
/* 805A4B70  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805A4B74  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805A4B78  7C 08 03 A6 */	mtlr r0
/* 805A4B7C  38 21 00 20 */	addi r1, r1, 0x20
/* 805A4B80  4E 80 00 20 */	blr 
