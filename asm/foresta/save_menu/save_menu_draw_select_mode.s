lbl_8062CFCC:
/* 8062CFCC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8062CFD0  7C 08 02 A6 */	mflr r0
/* 8062CFD4  3C 80 80 65 */	lis r4, lit_495@ha /* 0x8064D1F8@ha */
/* 8062CFD8  90 01 00 44 */	stw r0, 0x44(r1)
/* 8062CFDC  38 84 D1 F8 */	addi r4, r4, lit_495@l /* 0x8064D1F8@l */
/* 8062CFE0  38 00 00 03 */	li r0, 3
/* 8062CFE4  38 A1 00 14 */	addi r5, r1, 0x14
/* 8062CFE8  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8062CFEC  7C 7F 1B 78 */	mr r31, r3
/* 8062CFF0  38 84 FF FC */	addi r4, r4, -4
/* 8062CFF4  7C 09 03 A6 */	mtctr r0
lbl_8062CFF8:
/* 8062CFF8  80 64 00 04 */	lwz r3, 4(r4)
/* 8062CFFC  84 04 00 08 */	lwzu r0, 8(r4)
/* 8062D000  90 65 00 04 */	stw r3, 4(r5)
/* 8062D004  94 05 00 08 */	stwu r0, 8(r5)
/* 8062D008  42 00 FF F0 */	bdnz lbl_8062CFF8
/* 8062D00C  A0 04 00 04 */	lhz r0, 4(r4)
/* 8062D010  38 80 00 01 */	li r4, 1
/* 8062D014  B0 05 00 04 */	sth r0, 4(r5)
/* 8062D018  80 7F 00 00 */	lwz r3, 0(r31)
/* 8062D01C  4B D8 31 1D */	bl mFont_SetMatrix
/* 8062D020  38 C0 00 01 */	li r6, 1
/* 8062D024  3C 60 80 65 */	lis r3, lit_499@ha /* 0x8064D21C@ha */
/* 8062D028  90 C1 00 08 */	stw r6, 8(r1)
/* 8062D02C  38 00 00 00 */	li r0, 0
/* 8062D030  C0 63 D2 1C */	lfs f3, lit_499@l(r3)  /* 0x8064D21C@l */
/* 8062D034  3C A0 80 65 */	lis r5, lit_497@ha /* 0x8064D214@ha */
/* 8062D038  90 01 00 0C */	stw r0, 0xc(r1)
/* 8062D03C  3C 80 80 65 */	lis r4, lit_498@ha /* 0x8064D218@ha */
/* 8062D040  C0 25 D2 14 */	lfs f1, lit_497@l(r5)  /* 0x8064D214@l */
/* 8062D044  FC 80 18 90 */	fmr f4, f3
/* 8062D048  90 C1 00 10 */	stw r6, 0x10(r1)
/* 8062D04C  7F E3 FB 78 */	mr r3, r31
/* 8062D050  C0 44 D2 18 */	lfs f2, lit_498@l(r4)  /* 0x8064D218@l */
/* 8062D054  38 81 00 18 */	addi r4, r1, 0x18
/* 8062D058  80 DF 02 0C */	lwz r6, 0x20c(r31)
/* 8062D05C  80 FF 02 10 */	lwz r7, 0x210(r31)
/* 8062D060  38 A0 00 0D */	li r5, 0xd
/* 8062D064  81 1F 02 14 */	lwz r8, 0x214(r31)
/* 8062D068  39 20 00 FF */	li r9, 0xff
/* 8062D06C  39 40 00 00 */	li r10, 0
/* 8062D070  4B D8 30 01 */	bl mFont_SetLineStrings_AndSpace
/* 8062D074  80 7F 00 00 */	lwz r3, 0(r31)
/* 8062D078  38 80 00 01 */	li r4, 1
/* 8062D07C  4B D8 31 BD */	bl mFont_UnSetMatrix
/* 8062D080  80 7F 00 00 */	lwz r3, 0(r31)
/* 8062D084  38 80 00 01 */	li r4, 1
/* 8062D088  4B D8 30 B1 */	bl mFont_SetMatrix
/* 8062D08C  38 C0 00 01 */	li r6, 1
/* 8062D090  3C 60 80 65 */	lis r3, lit_499@ha /* 0x8064D21C@ha */
/* 8062D094  90 C1 00 08 */	stw r6, 8(r1)
/* 8062D098  38 00 00 00 */	li r0, 0
/* 8062D09C  C0 63 D2 1C */	lfs f3, lit_499@l(r3)  /* 0x8064D21C@l */
/* 8062D0A0  3C A0 80 65 */	lis r5, lit_500@ha /* 0x8064D220@ha */
/* 8062D0A4  90 01 00 0C */	stw r0, 0xc(r1)
/* 8062D0A8  3C 80 80 65 */	lis r4, lit_501@ha /* 0x8064D224@ha */
/* 8062D0AC  C0 25 D2 20 */	lfs f1, lit_500@l(r5)  /* 0x8064D220@l */
/* 8062D0B0  FC 80 18 90 */	fmr f4, f3
/* 8062D0B4  90 C1 00 10 */	stw r6, 0x10(r1)
/* 8062D0B8  7F E3 FB 78 */	mr r3, r31
/* 8062D0BC  C0 44 D2 24 */	lfs f2, lit_501@l(r4)  /* 0x8064D224@l */
/* 8062D0C0  38 81 00 25 */	addi r4, r1, 0x25
/* 8062D0C4  80 DF 02 18 */	lwz r6, 0x218(r31)
/* 8062D0C8  80 FF 02 1C */	lwz r7, 0x21c(r31)
/* 8062D0CC  38 A0 00 0D */	li r5, 0xd
/* 8062D0D0  81 1F 02 20 */	lwz r8, 0x220(r31)
/* 8062D0D4  39 20 00 FF */	li r9, 0xff
/* 8062D0D8  39 40 00 00 */	li r10, 0
/* 8062D0DC  4B D8 2F 95 */	bl mFont_SetLineStrings_AndSpace
/* 8062D0E0  80 7F 00 00 */	lwz r3, 0(r31)
/* 8062D0E4  38 80 00 01 */	li r4, 1
/* 8062D0E8  4B D8 31 51 */	bl mFont_UnSetMatrix
/* 8062D0EC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8062D0F0  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8062D0F4  7C 08 03 A6 */	mtlr r0
/* 8062D0F8  38 21 00 40 */	addi r1, r1, 0x40
/* 8062D0FC  4E 80 00 20 */	blr 
