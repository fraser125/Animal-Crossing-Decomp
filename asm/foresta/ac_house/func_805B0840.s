lbl_805B0840:
/* 805B0840  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805B0844  2C 05 00 01 */	cmpwi r5, 1
/* 805B0848  81 23 00 00 */	lwz r9, 0(r3)
/* 805B084C  41 82 00 0C */	beq lbl_805B0858
/* 805B0850  2C 05 00 03 */	cmpwi r5, 3
/* 805B0854  40 82 00 74 */	bne lbl_805B08C8
lbl_805B0858:
/* 805B0858  3C 60 80 65 */	lis r3, lit_784@ha /* 0x8064A7B0@ha */
/* 805B085C  3C 80 80 65 */	lis r4, lit_783@ha /* 0x8064A7AC@ha */
/* 805B0860  C0 68 02 CC */	lfs f3, 0x2cc(r8)
/* 805B0864  3C E0 80 65 */	lis r7, lit_710@ha /* 0x8064A7A4@ha */
/* 805B0868  C0 03 A7 B0 */	lfs f0, lit_784@l(r3)  /* 0x8064A7B0@l */
/* 805B086C  3C 00 FA 00 */	lis r0, 0xfa00
/* 805B0870  C0 24 A7 AC */	lfs f1, lit_783@l(r4)  /* 0x8064A7AC@l */
/* 805B0874  C0 47 A7 A4 */	lfs f2, lit_710@l(r7)  /* 0x8064A7A4@l */
/* 805B0878  EC 00 00 F2 */	fmuls f0, f0, f3
/* 805B087C  EC 21 00 F2 */	fmuls f1, f1, f3
/* 805B0880  80 E9 02 D0 */	lwz r7, 0x2d0(r9)
/* 805B0884  EC 02 00 2A */	fadds f0, f2, f0
/* 805B0888  90 07 00 00 */	stw r0, 0(r7)
/* 805B088C  EC 22 08 2A */	fadds f1, f2, f1
/* 805B0890  7C E8 3B 78 */	mr r8, r7
/* 805B0894  38 E7 00 08 */	addi r7, r7, 8
/* 805B0898  FC 00 00 1E */	fctiwz f0, f0
/* 805B089C  FC 20 08 1E */	fctiwz f1, f1
/* 805B08A0  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 805B08A4  D8 21 00 08 */	stfd f1, 8(r1)
/* 805B08A8  80 61 00 14 */	lwz r3, 0x14(r1)
/* 805B08AC  80 81 00 0C */	lwz r4, 0xc(r1)
/* 805B08B0  54 60 82 1E */	rlwinm r0, r3, 0x10, 8, 0xf
/* 805B08B4  50 60 C0 0E */	rlwimi r0, r3, 0x18, 0, 7
/* 805B08B8  50 80 44 2E */	rlwimi r0, r4, 8, 0x10, 0x17
/* 805B08BC  60 00 00 FF */	ori r0, r0, 0xff
/* 805B08C0  90 08 00 04 */	stw r0, 4(r8)
/* 805B08C4  90 E9 02 D0 */	stw r7, 0x2d0(r9)
lbl_805B08C8:
/* 805B08C8  2C 05 00 07 */	cmpwi r5, 7
/* 805B08CC  40 82 00 0C */	bne lbl_805B08D8
/* 805B08D0  38 00 00 00 */	li r0, 0
/* 805B08D4  90 06 00 00 */	stw r0, 0(r6)
lbl_805B08D8:
/* 805B08D8  38 60 00 01 */	li r3, 1
/* 805B08DC  38 21 00 20 */	addi r1, r1, 0x20
/* 805B08E0  4E 80 00 20 */	blr 
