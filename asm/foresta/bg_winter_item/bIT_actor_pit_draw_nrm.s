lbl_804C594C:
/* 804C594C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804C5950  7C 08 02 A6 */	mflr r0
/* 804C5954  3D 20 80 64 */	lis r9, lit_1546@ha /* 0x80646194@ha */
/* 804C5958  7C CA 33 78 */	mr r10, r6
/* 804C595C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804C5960  3C C0 80 66 */	lis r6, ZeroSVec@ha /* 0x8065F05C@ha */
/* 804C5964  C0 29 61 94 */	lfs f1, lit_1546@l(r9)  /* 0x80646194@l */
/* 804C5968  38 06 F0 5C */	addi r0, r6, ZeroSVec@l /* 0x8065F05C@l */
/* 804C596C  C0 05 00 0C */	lfs f0, 0xc(r5)
/* 804C5970  7C A6 2B 78 */	mr r6, r5
/* 804C5974  39 20 00 FF */	li r9, 0xff
/* 804C5978  EC 01 00 32 */	fmuls f0, f1, f0
/* 804C597C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 804C5980  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 804C5984  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 804C5988  90 E1 00 08 */	stw r7, 8(r1)
/* 804C598C  7C 07 03 78 */	mr r7, r0
/* 804C5990  91 01 00 0C */	stw r8, 0xc(r1)
/* 804C5994  39 01 00 10 */	addi r8, r1, 0x10
/* 804C5998  A0 A5 00 12 */	lhz r5, 0x12(r5)
/* 804C599C  4B FF DE CD */	bl bit_cmn_single_drawS
/* 804C59A0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804C59A4  7C 08 03 A6 */	mtlr r0
/* 804C59A8  38 21 00 20 */	addi r1, r1, 0x20
/* 804C59AC  4E 80 00 20 */	blr 
