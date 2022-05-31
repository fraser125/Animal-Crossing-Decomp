lbl_8054D060:
/* 8054D060  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054D064  7C 08 02 A6 */	mflr r0
/* 8054D068  3C 80 80 65 */	lis r4, lit_516@ha /* 0x806494D8@ha */
/* 8054D06C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054D070  C0 04 94 D8 */	lfs f0, lit_516@l(r4)  /* 0x806494D8@l */
/* 8054D074  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8054D078  7C 7F 1B 78 */	mr r31, r3
/* 8054D07C  C0 23 00 00 */	lfs f1, 0(r3)
/* 8054D080  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8054D084  40 80 00 1C */	bge lbl_8054D0A0
/* 8054D088  3C 60 80 6A */	lis r3, chk0@ha /* 0x806A5470@ha */
/* 8054D08C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8054D090  38 63 54 70 */	addi r3, r3, chk0@l /* 0x806A5470@l */
/* 8054D094  38 80 00 03 */	li r4, 3
/* 8054D098  4B FF FF 99 */	bl func_8054D030
/* 8054D09C  48 00 00 44 */	b lbl_8054D0E0
lbl_8054D0A0:
/* 8054D0A0  3C 60 80 6A */	lis r3, chk1@ha /* 0x806A547C@ha */
/* 8054D0A4  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8054D0A8  38 63 54 7C */	addi r3, r3, chk1@l /* 0x806A547C@l */
/* 8054D0AC  38 80 00 03 */	li r4, 3
/* 8054D0B0  4B FF FF 81 */	bl func_8054D030
/* 8054D0B4  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8054D0B8  28 00 00 02 */	cmplwi r0, 2
/* 8054D0BC  40 82 00 20 */	bne lbl_8054D0DC
/* 8054D0C0  3C 80 80 65 */	lis r4, lit_517@ha /* 0x806494DC@ha */
/* 8054D0C4  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8054D0C8  C0 04 94 DC */	lfs f0, lit_517@l(r4)  /* 0x806494DC@l */
/* 8054D0CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8054D0D0  4C 41 13 82 */	cror 2, 1, 2
/* 8054D0D4  40 82 00 08 */	bne lbl_8054D0DC
/* 8054D0D8  38 60 00 04 */	li r3, 4
lbl_8054D0DC:
/* 8054D0DC  38 63 00 04 */	addi r3, r3, 4
lbl_8054D0E0:
/* 8054D0E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054D0E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8054D0E8  7C 08 03 A6 */	mtlr r0
/* 8054D0EC  38 21 00 10 */	addi r1, r1, 0x10
/* 8054D0F0  4E 80 00 20 */	blr 
