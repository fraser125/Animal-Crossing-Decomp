lbl_8050BEF0:
/* 8050BEF0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8050BEF4  7C 08 02 A6 */	mflr r0
/* 8050BEF8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8050BEFC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8050BF00  7C 7F 1B 78 */	mr r31, r3
/* 8050BF04  4B B5 0D F1 */	bl fqrand
/* 8050BF08  3C 60 80 65 */	lis r3, lit_510@ha /* 0x80648E10@ha */
/* 8050BF0C  38 00 00 00 */	li r0, 0
/* 8050BF10  38 83 8E 10 */	addi r4, r3, lit_510@l /* 0x80648E10@l */
/* 8050BF14  38 61 00 08 */	addi r3, r1, 8
/* 8050BF18  C0 44 00 00 */	lfs f2, 0(r4)
/* 8050BF1C  38 9F 00 28 */	addi r4, r31, 0x28
/* 8050BF20  EC 02 00 72 */	fmuls f0, f2, f1
/* 8050BF24  EC 02 00 2A */	fadds f0, f2, f0
/* 8050BF28  D0 1F 01 80 */	stfs f0, 0x180(r31)
/* 8050BF2C  90 1F 01 88 */	stw r0, 0x188(r31)
/* 8050BF30  4B EA EF 8D */	bl xyz_t_move
/* 8050BF34  4B B5 0D C1 */	bl fqrand
/* 8050BF38  3C 80 80 65 */	lis r4, lit_674@ha /* 0x80648E48@ha */
/* 8050BF3C  3C 60 80 65 */	lis r3, lit_673@ha /* 0x80648E44@ha */
/* 8050BF40  C0 64 8E 48 */	lfs f3, lit_674@l(r4)  /* 0x80648E48@l */
/* 8050BF44  C0 43 8E 44 */	lfs f2, lit_673@l(r3)  /* 0x80648E44@l */
/* 8050BF48  EC 23 00 72 */	fmuls f1, f3, f1
/* 8050BF4C  C0 01 00 08 */	lfs f0, 8(r1)
/* 8050BF50  EC 22 08 28 */	fsubs f1, f2, f1
/* 8050BF54  EC 00 08 2A */	fadds f0, f0, f1
/* 8050BF58  D0 01 00 08 */	stfs f0, 8(r1)
/* 8050BF5C  4B B5 0D 99 */	bl fqrand
/* 8050BF60  3C 80 80 65 */	lis r4, lit_674@ha /* 0x80648E48@ha */
/* 8050BF64  3C 60 80 65 */	lis r3, lit_673@ha /* 0x80648E44@ha */
/* 8050BF68  C0 64 8E 48 */	lfs f3, lit_674@l(r4)  /* 0x80648E48@l */
/* 8050BF6C  38 81 00 08 */	addi r4, r1, 8
/* 8050BF70  C0 43 8E 44 */	lfs f2, lit_673@l(r3)  /* 0x80648E44@l */
/* 8050BF74  38 7F 00 28 */	addi r3, r31, 0x28
/* 8050BF78  EC 23 00 72 */	fmuls f1, f3, f1
/* 8050BF7C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8050BF80  EC 22 08 28 */	fsubs f1, f2, f1
/* 8050BF84  EC 00 08 2A */	fadds f0, f0, f1
/* 8050BF88  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8050BF8C  4B EA F1 A5 */	bl search_position_angleY
/* 8050BF90  B0 7F 00 DE */	sth r3, 0xde(r31)
/* 8050BF94  3C 60 80 65 */	lis r3, lit_596@ha /* 0x80648E28@ha */
/* 8050BF98  C0 03 8E 28 */	lfs f0, lit_596@l(r3)  /* 0x80648E28@l */
/* 8050BF9C  A8 1F 00 DE */	lha r0, 0xde(r31)
/* 8050BFA0  B0 1F 00 36 */	sth r0, 0x36(r31)
/* 8050BFA4  D0 1F 00 74 */	stfs f0, 0x74(r31)
/* 8050BFA8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8050BFAC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8050BFB0  7C 08 03 A6 */	mtlr r0
/* 8050BFB4  38 21 00 20 */	addi r1, r1, 0x20
/* 8050BFB8  4E 80 00 20 */	blr 
