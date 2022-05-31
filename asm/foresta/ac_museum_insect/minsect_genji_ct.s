lbl_8046C1CC:
/* 8046C1CC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8046C1D0  7C 08 02 A6 */	mflr r0
/* 8046C1D4  38 A0 00 00 */	li r5, 0
/* 8046C1D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8046C1DC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8046C1E0  7C 7F 1B 78 */	mr r31, r3
/* 8046C1E4  4B FF F2 A1 */	bl genji_light_ct
/* 8046C1E8  3C 60 80 64 */	lis r3, base_genji_pos@ha /* 0x806448AC@ha */
/* 8046C1EC  38 00 EE 39 */	li r0, -4551
/* 8046C1F0  38 A3 48 AC */	addi r5, r3, base_genji_pos@l /* 0x806448AC@l */
/* 8046C1F4  80 65 00 00 */	lwz r3, 0(r5)
/* 8046C1F8  80 85 00 04 */	lwz r4, 4(r5)
/* 8046C1FC  90 7F 00 1C */	stw r3, 0x1c(r31)
/* 8046C200  80 65 00 08 */	lwz r3, 8(r5)
/* 8046C204  90 9F 00 20 */	stw r4, 0x20(r31)
/* 8046C208  90 7F 00 24 */	stw r3, 0x24(r31)
/* 8046C20C  B0 1F 00 6C */	sth r0, 0x6c(r31)
/* 8046C210  4B BF 0A E5 */	bl fqrand
/* 8046C214  3C 60 80 64 */	lis r3, lit_675@ha /* 0x80644648@ha */
/* 8046C218  C0 03 46 48 */	lfs f0, lit_675@l(r3)  /* 0x80644648@l */
/* 8046C21C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8046C220  FC 00 00 1E */	fctiwz f0, f0
/* 8046C224  D8 01 00 08 */	stfd f0, 8(r1)
/* 8046C228  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8046C22C  38 03 02 58 */	addi r0, r3, 0x258
/* 8046C230  B0 1F 00 82 */	sth r0, 0x82(r31)
/* 8046C234  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8046C238  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8046C23C  7C 08 03 A6 */	mtlr r0
/* 8046C240  38 21 00 20 */	addi r1, r1, 0x20
/* 8046C244  4E 80 00 20 */	blr 
