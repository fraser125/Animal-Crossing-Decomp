lbl_8060A79C:
/* 8060A79C  A8 03 00 06 */	lha r0, 6(r3)
/* 8060A7A0  2C 00 00 01 */	cmpwi r0, 1
/* 8060A7A4  41 82 00 30 */	beq lbl_8060A7D4
/* 8060A7A8  40 80 00 10 */	bge lbl_8060A7B8
/* 8060A7AC  2C 00 00 00 */	cmpwi r0, 0
/* 8060A7B0  40 80 00 14 */	bge lbl_8060A7C4
/* 8060A7B4  48 00 00 40 */	b lbl_8060A7F4
lbl_8060A7B8:
/* 8060A7B8  2C 00 00 03 */	cmpwi r0, 3
/* 8060A7BC  40 80 00 38 */	bge lbl_8060A7F4
/* 8060A7C0  48 00 00 24 */	b lbl_8060A7E4
lbl_8060A7C4:
/* 8060A7C4  3C 80 80 65 */	lis r4, data_8064BEA4@ha /* 0x8064BEA4@ha */
/* 8060A7C8  C0 04 BE A4 */	lfs f0, data_8064BEA4@l(r4)  /* 0x8064BEA4@l */
/* 8060A7CC  D0 03 00 40 */	stfs f0, 0x40(r3)
/* 8060A7D0  48 00 00 30 */	b lbl_8060A800
lbl_8060A7D4:
/* 8060A7D4  3C 80 80 65 */	lis r4, lit_389@ha /* 0x8064BEA8@ha */
/* 8060A7D8  C0 04 BE A8 */	lfs f0, lit_389@l(r4)  /* 0x8064BEA8@l */
/* 8060A7DC  D0 03 00 40 */	stfs f0, 0x40(r3)
/* 8060A7E0  48 00 00 20 */	b lbl_8060A800
lbl_8060A7E4:
/* 8060A7E4  3C 80 80 65 */	lis r4, lit_390@ha /* 0x8064BEAC@ha */
/* 8060A7E8  C0 04 BE AC */	lfs f0, lit_390@l(r4)  /* 0x8064BEAC@l */
/* 8060A7EC  D0 03 00 40 */	stfs f0, 0x40(r3)
/* 8060A7F0  48 00 00 10 */	b lbl_8060A800
lbl_8060A7F4:
/* 8060A7F4  3C 80 80 65 */	lis r4, lit_391@ha /* 0x8064BEB0@ha */
/* 8060A7F8  C0 04 BE B0 */	lfs f0, lit_391@l(r4)  /* 0x8064BEB0@l */
/* 8060A7FC  D0 03 00 40 */	stfs f0, 0x40(r3)
lbl_8060A800:
/* 8060A800  38 00 00 18 */	li r0, 0x18
/* 8060A804  B0 03 00 00 */	sth r0, 0(r3)
/* 8060A808  4E 80 00 20 */	blr 
