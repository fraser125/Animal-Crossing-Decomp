lbl_8051ACD8:
/* 8051ACD8  3C 80 80 65 */	lis r4, lit_552@ha /* 0x806490A0@ha */
/* 8051ACDC  3C A0 80 65 */	lis r5, lit_553@ha /* 0x806490A4@ha */
/* 8051ACE0  38 C4 90 A0 */	addi r6, r4, lit_552@l /* 0x806490A0@l */
/* 8051ACE4  C0 25 90 A4 */	lfs f1, lit_553@l(r5)  /* 0x806490A4@l */
/* 8051ACE8  C0 06 00 00 */	lfs f0, 0(r6)
/* 8051ACEC  3C 80 80 65 */	lis r4, lit_554@ha /* 0x806490A8@ha */
/* 8051ACF0  D0 03 08 F8 */	stfs f0, 0x8f8(r3)
/* 8051ACF4  C0 04 90 A8 */	lfs f0, lit_554@l(r4)  /* 0x806490A8@l */
/* 8051ACF8  D0 23 08 FC */	stfs f1, 0x8fc(r3)
/* 8051ACFC  D0 03 09 00 */	stfs f0, 0x900(r3)
/* 8051AD00  4E 80 00 20 */	blr 
