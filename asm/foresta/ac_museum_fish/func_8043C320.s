lbl_8043C320:
/* 8043C320  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8043C324  7C 08 02 A6 */	mflr r0
/* 8043C328  2C 04 00 00 */	cmpwi r4, 0
/* 8043C32C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8043C330  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8043C334  7C 7F 1B 78 */	mr r31, r3
/* 8043C338  40 82 00 48 */	bne lbl_8043C380
/* 8043C33C  4B C2 09 B9 */	bl fqrand
/* 8043C340  3C 60 80 64 */	lis r3, lit_1559@ha /* 0x8064434C@ha */
/* 8043C344  C0 03 43 4C */	lfs f0, lit_1559@l(r3)  /* 0x8064434C@l */
/* 8043C348  EC 00 00 72 */	fmuls f0, f0, f1
/* 8043C34C  FC 00 00 1E */	fctiwz f0, f0
/* 8043C350  D8 01 00 08 */	stfd f0, 8(r1)
/* 8043C354  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8043C358  38 03 00 19 */	addi r0, r3, 0x19
/* 8043C35C  B0 1F 06 40 */	sth r0, 0x640(r31)
/* 8043C360  4B C2 09 CD */	bl fqrand2
/* 8043C364  3C 80 80 64 */	lis r4, lit_2301@ha /* 0x80644380@ha */
/* 8043C368  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 8043C36C  C0 24 43 80 */	lfs f1, lit_2301@l(r4)  /* 0x80644380@l */
/* 8043C370  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 8043C374  EC 01 00 2A */	fadds f0, f1, f0
/* 8043C378  D0 1F 05 AC */	stfs f0, 0x5ac(r31)
/* 8043C37C  48 00 00 A8 */	b lbl_8043C424
lbl_8043C380:
/* 8043C380  2C 04 00 01 */	cmpwi r4, 1
/* 8043C384  40 82 00 54 */	bne lbl_8043C3D8
/* 8043C388  A8 1F 06 40 */	lha r0, 0x640(r31)
/* 8043C38C  2C 00 00 00 */	cmpwi r0, 0
/* 8043C390  40 82 00 94 */	bne lbl_8043C424
/* 8043C394  4B C2 09 61 */	bl fqrand
/* 8043C398  3C 60 80 64 */	lis r3, lit_1145@ha /* 0x80644328@ha */
/* 8043C39C  C0 03 43 28 */	lfs f0, lit_1145@l(r3)  /* 0x80644328@l */
/* 8043C3A0  EC 00 00 72 */	fmuls f0, f0, f1
/* 8043C3A4  FC 00 00 1E */	fctiwz f0, f0
/* 8043C3A8  D8 01 00 08 */	stfd f0, 8(r1)
/* 8043C3AC  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8043C3B0  38 03 00 14 */	addi r0, r3, 0x14
/* 8043C3B4  B0 1F 06 40 */	sth r0, 0x640(r31)
/* 8043C3B8  4B C2 09 75 */	bl fqrand2
/* 8043C3BC  3C 80 80 64 */	lis r4, lit_557@ha /* 0x80644280@ha */
/* 8043C3C0  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 8043C3C4  C0 24 42 80 */	lfs f1, lit_557@l(r4)  /* 0x80644280@l */
/* 8043C3C8  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 8043C3CC  EC 01 00 2A */	fadds f0, f1, f0
/* 8043C3D0  D0 1F 05 AC */	stfs f0, 0x5ac(r31)
/* 8043C3D4  48 00 00 50 */	b lbl_8043C424
lbl_8043C3D8:
/* 8043C3D8  A8 1F 06 40 */	lha r0, 0x640(r31)
/* 8043C3DC  2C 00 00 00 */	cmpwi r0, 0
/* 8043C3E0  40 82 00 44 */	bne lbl_8043C424
/* 8043C3E4  4B C2 09 11 */	bl fqrand
/* 8043C3E8  3C 60 80 64 */	lis r3, lit_1559@ha /* 0x8064434C@ha */
/* 8043C3EC  C0 03 43 4C */	lfs f0, lit_1559@l(r3)  /* 0x8064434C@l */
/* 8043C3F0  EC 00 00 72 */	fmuls f0, f0, f1
/* 8043C3F4  FC 00 00 1E */	fctiwz f0, f0
/* 8043C3F8  D8 01 00 08 */	stfd f0, 8(r1)
/* 8043C3FC  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8043C400  38 03 00 2D */	addi r0, r3, 0x2d
/* 8043C404  B0 1F 06 40 */	sth r0, 0x640(r31)
/* 8043C408  4B C2 09 25 */	bl fqrand2
/* 8043C40C  3C 80 80 64 */	lis r4, lit_472@ha /* 0x80644260@ha */
/* 8043C410  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 8043C414  C0 24 42 60 */	lfs f1, lit_472@l(r4)  /* 0x80644260@l */
/* 8043C418  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 8043C41C  EC 01 00 2A */	fadds f0, f1, f0
/* 8043C420  D0 1F 05 AC */	stfs f0, 0x5ac(r31)
lbl_8043C424:
/* 8043C424  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8043C428  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8043C42C  7C 08 03 A6 */	mtlr r0
/* 8043C430  38 21 00 20 */	addi r1, r1, 0x20
/* 8043C434  4E 80 00 20 */	blr 
