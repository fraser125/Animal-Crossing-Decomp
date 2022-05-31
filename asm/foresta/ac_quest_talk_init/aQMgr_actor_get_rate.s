lbl_8048AFD8:
/* 8048AFD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048AFDC  7C 08 02 A6 */	mflr r0
/* 8048AFE0  2C 03 00 00 */	cmpwi r3, 0
/* 8048AFE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048AFE8  38 00 00 00 */	li r0, 0
/* 8048AFEC  40 81 00 64 */	ble lbl_8048B050
/* 8048AFF0  38 00 00 64 */	li r0, 0x64
/* 8048AFF4  7C A3 03 D6 */	divw r5, r3, r0
/* 8048AFF8  2C 05 00 07 */	cmpwi r5, 7
/* 8048AFFC  41 80 00 08 */	blt lbl_8048B004
/* 8048B000  38 A0 00 06 */	li r5, 6
lbl_8048B004:
/* 8048B004  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 8048B008  3C 00 43 30 */	lis r0, 0x4330
/* 8048B00C  3C 80 80 64 */	lis r4, lit_957@ha /* 0x80644BC4@ha */
/* 8048B010  90 61 00 0C */	stw r3, 0xc(r1)
/* 8048B014  38 64 4B C4 */	addi r3, r4, lit_957@l /* 0x80644BC4@l */
/* 8048B018  3C 80 80 69 */	lis r4, rate_table@ha /* 0x8068B110@ha */
/* 8048B01C  90 01 00 08 */	stw r0, 8(r1)
/* 8048B020  54 A0 18 38 */	slwi r0, r5, 3
/* 8048B024  C8 23 00 00 */	lfd f1, 0(r3)
/* 8048B028  38 84 B1 10 */	addi r4, r4, rate_table@l /* 0x8068B110@l */
/* 8048B02C  C8 01 00 08 */	lfd f0, 8(r1)
/* 8048B030  7C 64 02 14 */	add r3, r4, r0
/* 8048B034  7C 44 04 2E */	lfsx f2, r4, r0
/* 8048B038  EC 00 08 28 */	fsubs f0, f0, f1
/* 8048B03C  C0 23 00 04 */	lfs f1, 4(r3)
/* 8048B040  EC 02 00 32 */	fmuls f0, f2, f0
/* 8048B044  EC 21 00 2A */	fadds f1, f1, f0
/* 8048B048  4B C0 FD 5D */	bl func_8009ADA4
/* 8048B04C  7C 60 1B 78 */	mr r0, r3
lbl_8048B050:
/* 8048B050  7C 03 03 78 */	mr r3, r0
/* 8048B054  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048B058  7C 08 03 A6 */	mtlr r0
/* 8048B05C  38 21 00 10 */	addi r1, r1, 0x10
/* 8048B060  4E 80 00 20 */	blr 
