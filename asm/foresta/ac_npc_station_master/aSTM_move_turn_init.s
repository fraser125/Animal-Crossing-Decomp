lbl_805801D4:
/* 805801D4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805801D8  7C 08 02 A6 */	mflr r0
/* 805801DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 805801E0  38 00 00 01 */	li r0, 1
/* 805801E4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805801E8  7C 7F 1B 78 */	mr r31, r3
/* 805801EC  98 04 1F 51 */	stb r0, 0x1f51(r4)
/* 805801F0  4B FF F6 DD */	bl player_x_drt
/* 805801F4  3C 60 80 65 */	lis r3, lit_716@ha /* 0x80649A48@ha */
/* 805801F8  3C 80 80 65 */	lis r4, lit_717@ha /* 0x80649A4C@ha */
/* 805801FC  38 A3 9A 48 */	addi r5, r3, lit_716@l /* 0x80649A48@l */
/* 80580200  C0 44 9A 4C */	lfs f2, lit_717@l(r4)  /* 0x80649A4C@l */
/* 80580204  C0 65 00 00 */	lfs f3, 0(r5)
/* 80580208  7F E3 FB 78 */	mr r3, r31
/* 8058020C  38 80 00 04 */	li r4, 4
/* 80580210  38 A0 00 04 */	li r5, 4
/* 80580214  EC 03 00 72 */	fmuls f0, f3, f1
/* 80580218  38 C0 00 03 */	li r6, 3
/* 8058021C  38 E0 00 00 */	li r7, 0
/* 80580220  D0 1F 09 9C */	stfs f0, 0x99c(r31)
/* 80580224  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80580228  C0 1F 09 9C */	lfs f0, 0x99c(r31)
/* 8058022C  EC 23 08 2A */	fadds f1, f3, f1
/* 80580230  EC 01 00 2A */	fadds f0, f1, f0
/* 80580234  D0 1F 09 0C */	stfs f0, 0x90c(r31)
/* 80580238  81 1F 09 98 */	lwz r8, 0x998(r31)
/* 8058023C  C0 08 00 30 */	lfs f0, 0x30(r8)
/* 80580240  EC 02 00 2A */	fadds f0, f2, f0
/* 80580244  D0 1F 09 10 */	stfs f0, 0x910(r31)
/* 80580248  C0 3F 09 0C */	lfs f1, 0x90c(r31)
/* 8058024C  C0 1F 09 10 */	lfs f0, 0x910(r31)
/* 80580250  FC 20 08 1E */	fctiwz f1, f1
/* 80580254  FC 00 00 1E */	fctiwz f0, f0
/* 80580258  D8 21 00 08 */	stfd f1, 8(r1)
/* 8058025C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80580260  81 01 00 0C */	lwz r8, 0xc(r1)
/* 80580264  81 21 00 14 */	lwz r9, 0x14(r1)
/* 80580268  4B FF EF 99 */	bl func_8057F200
/* 8058026C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80580270  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80580274  7C 08 03 A6 */	mtlr r0
/* 80580278  38 21 00 20 */	addi r1, r1, 0x20
/* 8058027C  4E 80 00 20 */	blr 
