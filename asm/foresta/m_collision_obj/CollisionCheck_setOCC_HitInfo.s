lbl_80395494:
/* 80395494  80 07 00 00 */	lwz r0, 0(r7)
/* 80395498  90 04 00 04 */	stw r0, 4(r4)
/* 8039549C  88 04 00 09 */	lbz r0, 9(r4)
/* 803954A0  60 00 00 04 */	ori r0, r0, 4
/* 803954A4  98 04 00 09 */	stb r0, 9(r4)
/* 803954A8  C0 0A 00 00 */	lfs f0, 0(r10)
/* 803954AC  D0 05 00 38 */	stfs f0, 0x38(r5)
/* 803954B0  C0 0A 00 04 */	lfs f0, 4(r10)
/* 803954B4  D0 05 00 3C */	stfs f0, 0x3c(r5)
/* 803954B8  C0 0A 00 08 */	lfs f0, 8(r10)
/* 803954BC  D0 05 00 40 */	stfs f0, 0x40(r5)
/* 803954C0  4E 80 00 20 */	blr 
