lbl_804E219C:
/* 804E219C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804E21A0  7C 08 02 A6 */	mflr r0
/* 804E21A4  90 01 00 44 */	stw r0, 0x44(r1)
/* 804E21A8  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 804E21AC  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 804E21B0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 804E21B4  7C 7F 1B 78 */	mr r31, r3
/* 804E21B8  80 83 0F 30 */	lwz r4, 0xf30(r3)
/* 804E21BC  28 04 00 00 */	cmplwi r4, 0
/* 804E21C0  41 82 01 04 */	beq lbl_804E22C4
/* 804E21C4  C0 1F 0A 28 */	lfs f0, 0xa28(r31)
/* 804E21C8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 804E21CC  80 04 02 38 */	lwz r0, 0x238(r4)
/* 804E21D0  2C 00 00 03 */	cmpwi r0, 3
/* 804E21D4  41 82 00 4C */	beq lbl_804E2220
/* 804E21D8  3C 80 80 65 */	lis r4, lit_6386@ha /* 0x80648070@ha */
/* 804E21DC  3C A0 80 65 */	lis r5, lit_6385@ha /* 0x8064806C@ha */
/* 804E21E0  C0 24 80 70 */	lfs f1, lit_6386@l(r4)  /* 0x80648070@l */
/* 804E21E4  38 81 00 10 */	addi r4, r1, 0x10
/* 804E21E8  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 804E21EC  C0 45 80 6C */	lfs f2, lit_6385@l(r5)  /* 0x8064806C@l */
/* 804E21F0  EC 01 00 2A */	fadds f0, f1, f0
/* 804E21F4  EF E2 00 2A */	fadds f31, f2, f0
/* 804E21F8  4B FF 80 F1 */	bl Player_actor_Get_ItemRodVirtualTopPos
/* 804E21FC  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 804E2200  3C 60 80 65 */	lis r3, lit_6388@ha /* 0x80648078@ha */
/* 804E2204  3C 80 80 65 */	lis r4, lit_6387@ha /* 0x80648074@ha */
/* 804E2208  C0 23 80 78 */	lfs f1, lit_6388@l(r3)  /* 0x80648078@l */
/* 804E220C  EC 00 F8 28 */	fsubs f0, f0, f31
/* 804E2210  C0 44 80 74 */	lfs f2, lit_6387@l(r4)  /* 0x80648074@l */
/* 804E2214  EC 01 00 32 */	fmuls f0, f1, f0
/* 804E2218  EC 22 00 2A */	fadds f1, f2, f0
/* 804E221C  48 00 00 0C */	b lbl_804E2228
lbl_804E2220:
/* 804E2220  3C 60 80 65 */	lis r3, lit_6389@ha /* 0x8064807C@ha */
/* 804E2224  C0 23 80 7C */	lfs f1, lit_6389@l(r3)  /* 0x8064807C@l */
lbl_804E2228:
/* 804E2228  3C 60 80 65 */	lis r3, lit_6390@ha /* 0x80648084@ha */
/* 804E222C  3C 80 80 64 */	lis r4, lit_1027@ha /* 0x806469F4@ha */
/* 804E2230  38 A3 80 84 */	addi r5, r3, lit_6390@l /* 0x80648084@l */
/* 804E2234  C8 C4 69 F4 */	lfd f6, lit_1027@l(r4)  /* 0x806469F4@l */
/* 804E2238  C8 E5 00 00 */	lfd f7, 0(r5)
/* 804E223C  3C 60 80 64 */	lis r3, lit_1028@ha /* 0x806469FC@ha */
/* 804E2240  38 A3 69 FC */	addi r5, r3, lit_1028@l /* 0x806469FC@l */
/* 804E2244  FC 80 38 34 */	frsqrte f4, f7
/* 804E2248  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804E224C  38 83 65 64 */	addi r4, r3, lit_603@l /* 0x80646564@l */
/* 804E2250  C8 A5 00 00 */	lfd f5, 0(r5)
/* 804E2254  3C 60 80 65 */	lis r3, lit_6391@ha /* 0x8064808C@ha */
/* 804E2258  C0 04 00 00 */	lfs f0, 0(r4)
/* 804E225C  FC 44 01 32 */	fmul f2, f4, f4
/* 804E2260  C0 63 80 8C */	lfs f3, lit_6391@l(r3)  /* 0x8064808C@l */
/* 804E2264  38 61 00 0C */	addi r3, r1, 0xc
/* 804E2268  FC 86 01 32 */	fmul f4, f6, f4
/* 804E226C  FC 47 00 B2 */	fmul f2, f7, f2
/* 804E2270  FC 45 10 28 */	fsub f2, f5, f2
/* 804E2274  FC 84 00 B2 */	fmul f4, f4, f2
/* 804E2278  FC 44 01 32 */	fmul f2, f4, f4
/* 804E227C  FC 86 01 32 */	fmul f4, f6, f4
/* 804E2280  FC 47 00 B2 */	fmul f2, f7, f2
/* 804E2284  FC 45 10 28 */	fsub f2, f5, f2
/* 804E2288  FC 84 00 B2 */	fmul f4, f4, f2
/* 804E228C  FC 44 01 32 */	fmul f2, f4, f4
/* 804E2290  FC 86 01 32 */	fmul f4, f6, f4
/* 804E2294  FC 47 00 B2 */	fmul f2, f7, f2
/* 804E2298  FC 45 10 28 */	fsub f2, f5, f2
/* 804E229C  FC 44 00 B2 */	fmul f2, f4, f2
/* 804E22A0  FC 47 00 B2 */	fmul f2, f7, f2
/* 804E22A4  FC 40 10 18 */	frsp f2, f2
/* 804E22A8  D0 41 00 08 */	stfs f2, 8(r1)
/* 804E22AC  C0 41 00 08 */	lfs f2, 8(r1)
/* 804E22B0  EC 40 10 28 */	fsubs f2, f0, f2
/* 804E22B4  4B ED 8F E1 */	bl add_calc2
/* 804E22B8  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 804E22BC  7F E3 FB 78 */	mr r3, r31
/* 804E22C0  4B FF E9 79 */	bl Player_actor_Item_SetAnimation_Base
lbl_804E22C4:
/* 804E22C4  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 804E22C8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804E22CC  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 804E22D0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 804E22D4  7C 08 03 A6 */	mtlr r0
/* 804E22D8  38 21 00 40 */	addi r1, r1, 0x40
/* 804E22DC  4E 80 00 20 */	blr 
