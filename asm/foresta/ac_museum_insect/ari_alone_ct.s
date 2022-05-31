lbl_8045B1C0:
/* 8045B1C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8045B1C4  7C 08 02 A6 */	mflr r0
/* 8045B1C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8045B1CC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8045B1D0  7C 7F 1B 78 */	mr r31, r3
/* 8045B1D4  A8 03 00 8C */	lha r0, 0x8c(r3)
/* 8045B1D8  60 00 00 01 */	ori r0, r0, 1
/* 8045B1DC  B0 03 00 8C */	sth r0, 0x8c(r3)
/* 8045B1E0  4B C0 1B 15 */	bl fqrand
/* 8045B1E4  3C 60 80 64 */	lis r3, lit_4585@ha /* 0x80644900@ha */
/* 8045B1E8  C0 03 49 00 */	lfs f0, lit_4585@l(r3)  /* 0x80644900@l */
/* 8045B1EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8045B1F0  40 80 00 30 */	bge lbl_8045B220
/* 8045B1F4  38 00 00 01 */	li r0, 1
/* 8045B1F8  3C 60 80 68 */	lis r3, ari_rail_pos@ha /* 0x80686DDC@ha */
/* 8045B1FC  B0 1F 00 74 */	sth r0, 0x74(r31)
/* 8045B200  38 83 6D DC */	addi r4, r3, ari_rail_pos@l /* 0x80686DDC@l */
/* 8045B204  80 64 00 00 */	lwz r3, 0(r4)
/* 8045B208  80 04 00 04 */	lwz r0, 4(r4)
/* 8045B20C  90 7F 00 1C */	stw r3, 0x1c(r31)
/* 8045B210  90 1F 00 20 */	stw r0, 0x20(r31)
/* 8045B214  80 04 00 08 */	lwz r0, 8(r4)
/* 8045B218  90 1F 00 24 */	stw r0, 0x24(r31)
/* 8045B21C  48 00 00 2C */	b lbl_8045B248
lbl_8045B220:
/* 8045B220  3C 60 80 68 */	lis r3, ari_rail_pos@ha /* 0x80686DDC@ha */
/* 8045B224  38 00 FF FF */	li r0, -1
/* 8045B228  38 A3 6D DC */	addi r5, r3, ari_rail_pos@l /* 0x80686DDC@l */
/* 8045B22C  80 85 00 18 */	lwz r4, 0x18(r5)
/* 8045B230  80 65 00 1C */	lwz r3, 0x1c(r5)
/* 8045B234  90 9F 00 1C */	stw r4, 0x1c(r31)
/* 8045B238  90 7F 00 20 */	stw r3, 0x20(r31)
/* 8045B23C  80 65 00 20 */	lwz r3, 0x20(r5)
/* 8045B240  90 7F 00 24 */	stw r3, 0x24(r31)
/* 8045B244  B0 1F 00 74 */	sth r0, 0x74(r31)
lbl_8045B248:
/* 8045B248  38 00 00 01 */	li r0, 1
/* 8045B24C  B0 1F 00 70 */	sth r0, 0x70(r31)
/* 8045B250  4B C0 1A A5 */	bl fqrand
/* 8045B254  3C 80 80 64 */	lis r4, lit_460@ha /* 0x806445C0@ha */
/* 8045B258  3C 60 80 64 */	lis r3, lit_512@ha /* 0x80644610@ha */
/* 8045B25C  C0 44 45 C0 */	lfs f2, lit_460@l(r4)  /* 0x806445C0@l */
/* 8045B260  C0 03 46 10 */	lfs f0, lit_512@l(r3)  /* 0x80644610@l */
/* 8045B264  EC 22 00 72 */	fmuls f1, f2, f1
/* 8045B268  EC 00 08 2A */	fadds f0, f0, f1
/* 8045B26C  D0 1F 00 40 */	stfs f0, 0x40(r31)
/* 8045B270  4B C0 1A 85 */	bl fqrand
/* 8045B274  3C 60 80 64 */	lis r3, lit_4586@ha /* 0x80644904@ha */
/* 8045B278  C0 03 49 04 */	lfs f0, lit_4586@l(r3)  /* 0x80644904@l */
/* 8045B27C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8045B280  FC 00 00 1E */	fctiwz f0, f0
/* 8045B284  D8 01 00 08 */	stfd f0, 8(r1)
/* 8045B288  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8045B28C  38 03 00 28 */	addi r0, r3, 0x28
/* 8045B290  B0 1F 00 6E */	sth r0, 0x6e(r31)
/* 8045B294  4B C0 1A 99 */	bl fqrand2
/* 8045B298  3C 60 80 64 */	lis r3, lit_461@ha /* 0x806445C4@ha */
/* 8045B29C  C0 03 45 C4 */	lfs f0, lit_461@l(r3)  /* 0x806445C4@l */
/* 8045B2A0  EC 00 00 72 */	fmuls f0, f0, f1
/* 8045B2A4  D0 1F 00 5C */	stfs f0, 0x5c(r31)
/* 8045B2A8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8045B2AC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8045B2B0  7C 08 03 A6 */	mtlr r0
/* 8045B2B4  38 21 00 20 */	addi r1, r1, 0x20
/* 8045B2B8  4E 80 00 20 */	blr 
