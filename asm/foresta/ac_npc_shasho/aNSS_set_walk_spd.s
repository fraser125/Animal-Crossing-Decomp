lbl_805765A8:
/* 805765A8  3C 80 80 65 */	lis r4, data_8064996C@ha /* 0x8064996C@ha */
/* 805765AC  3C A0 80 65 */	lis r5, lit_490@ha /* 0x80649970@ha */
/* 805765B0  38 C4 99 6C */	addi r6, r4, data_8064996C@l /* 0x8064996C@l */
/* 805765B4  C0 25 99 70 */	lfs f1, lit_490@l(r5)  /* 0x80649970@l */
/* 805765B8  C0 06 00 00 */	lfs f0, 0(r6)
/* 805765BC  3C 80 80 65 */	lis r4, lit_491@ha /* 0x80649974@ha */
/* 805765C0  D0 03 08 F8 */	stfs f0, 0x8f8(r3)
/* 805765C4  C0 04 99 74 */	lfs f0, lit_491@l(r4)  /* 0x80649974@l */
/* 805765C8  D0 23 08 FC */	stfs f1, 0x8fc(r3)
/* 805765CC  D0 03 09 00 */	stfs f0, 0x900(r3)
/* 805765D0  4E 80 00 20 */	blr 
