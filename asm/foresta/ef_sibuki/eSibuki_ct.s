lbl_8061D560:
/* 8061D560  A8 03 00 08 */	lha r0, 8(r3)
/* 8061D564  2C 00 00 00 */	cmpwi r0, 0
/* 8061D568  40 82 00 1C */	bne lbl_8061D584
/* 8061D56C  3C 80 80 65 */	lis r4, lit_388@ha /* 0x8064CB7C@ha */
/* 8061D570  C0 04 CB 7C */	lfs f0, lit_388@l(r4)  /* 0x8064CB7C@l */
/* 8061D574  D0 03 00 34 */	stfs f0, 0x34(r3)
/* 8061D578  D0 03 00 38 */	stfs f0, 0x38(r3)
/* 8061D57C  D0 03 00 3C */	stfs f0, 0x3c(r3)
/* 8061D580  48 00 00 18 */	b lbl_8061D598
lbl_8061D584:
/* 8061D584  3C 80 80 65 */	lis r4, lit_388@ha /* 0x8064CB7C@ha */
/* 8061D588  C0 04 CB 7C */	lfs f0, lit_388@l(r4)  /* 0x8064CB7C@l */
/* 8061D58C  D0 03 00 34 */	stfs f0, 0x34(r3)
/* 8061D590  D0 03 00 38 */	stfs f0, 0x38(r3)
/* 8061D594  D0 03 00 3C */	stfs f0, 0x3c(r3)
lbl_8061D598:
/* 8061D598  38 00 00 0C */	li r0, 0xc
/* 8061D59C  B0 03 00 00 */	sth r0, 0(r3)
/* 8061D5A0  B0 03 00 4C */	sth r0, 0x4c(r3)
/* 8061D5A4  4E 80 00 20 */	blr 