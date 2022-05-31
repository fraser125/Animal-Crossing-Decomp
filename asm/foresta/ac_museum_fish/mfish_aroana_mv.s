lbl_8043C008:
/* 8043C008  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8043C00C  7C 08 02 A6 */	mflr r0
/* 8043C010  90 01 00 14 */	stw r0, 0x14(r1)
/* 8043C014  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8043C018  7C 9F 23 78 */	mr r31, r4
/* 8043C01C  93 C1 00 08 */	stw r30, 8(r1)
/* 8043C020  7C 7E 1B 78 */	mr r30, r3
/* 8043C024  4B FF 85 D9 */	bl mfish_onefish_mv
/* 8043C028  7F C3 F3 78 */	mr r3, r30
/* 8043C02C  7F E4 FB 78 */	mr r4, r31
/* 8043C030  4B FF FC 39 */	bl mfish_aroana_base_mv
/* 8043C034  7F C3 F3 78 */	mr r3, r30
/* 8043C038  7F E4 FB 78 */	mr r4, r31
/* 8043C03C  4B FF 9C 55 */	bl Museum_Fish_BGCheck
/* 8043C040  3C 60 80 64 */	lis r3, data_80644244@ha /* 0x80644244@ha */
/* 8043C044  C0 5E 05 E8 */	lfs f2, 0x5e8(r30)
/* 8043C048  C0 63 42 44 */	lfs f3, data_80644244@l(r3)  /* 0x80644244@l */
/* 8043C04C  3C 80 80 64 */	lis r4, lit_471@ha /* 0x8064425C@ha */
/* 8043C050  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 8043C054  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 8043C058  EC 43 00 B2 */	fmuls f2, f3, f2
/* 8043C05C  C0 64 42 5C */	lfs f3, lit_471@l(r4)  /* 0x8064425C@l */
/* 8043C060  EC 01 00 2A */	fadds f0, f1, f0
/* 8043C064  EC 02 00 24 */	fdivs f0, f2, f0
/* 8043C068  EC 03 00 2A */	fadds f0, f3, f0
/* 8043C06C  D0 1E 00 44 */	stfs f0, 0x44(r30)
/* 8043C070  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8043C074  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8043C078  83 C1 00 08 */	lwz r30, 8(r1)
/* 8043C07C  7C 08 03 A6 */	mtlr r0
/* 8043C080  38 21 00 10 */	addi r1, r1, 0x10
/* 8043C084  4E 80 00 20 */	blr 
