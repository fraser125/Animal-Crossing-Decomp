lbl_8047FAF8:
/* 8047FAF8  A8 03 00 3C */	lha r0, 0x3c(r3)
/* 8047FAFC  2C 00 00 0A */	cmpwi r0, 0xa
/* 8047FB00  40 82 00 1C */	bne lbl_8047FB1C
/* 8047FB04  3C 80 80 64 */	lis r4, lit_4140@ha /* 0x80644A90@ha */
/* 8047FB08  C0 23 00 34 */	lfs f1, 0x34(r3)
/* 8047FB0C  C0 04 4A 90 */	lfs f0, lit_4140@l(r4)  /* 0x80644A90@l */
/* 8047FB10  EC 01 00 28 */	fsubs f0, f1, f0
/* 8047FB14  D0 03 00 38 */	stfs f0, 0x38(r3)
/* 8047FB18  4E 80 00 20 */	blr 
lbl_8047FB1C:
/* 8047FB1C  3C 80 80 64 */	lis r4, lit_4140@ha /* 0x80644A90@ha */
/* 8047FB20  C0 03 00 34 */	lfs f0, 0x34(r3)
/* 8047FB24  C0 24 4A 90 */	lfs f1, lit_4140@l(r4)  /* 0x80644A90@l */
/* 8047FB28  EC 01 00 2A */	fadds f0, f1, f0
/* 8047FB2C  D0 03 00 38 */	stfs f0, 0x38(r3)
/* 8047FB30  4E 80 00 20 */	blr 
