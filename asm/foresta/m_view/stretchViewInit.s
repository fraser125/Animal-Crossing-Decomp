lbl_803F4180:
/* 803F4180  3C A0 80 64 */	lis r5, lit_385@ha /* 0x806432FC@ha */
/* 803F4184  3C 80 80 64 */	lis r4, lit_384@ha /* 0x806432F8@ha */
/* 803F4188  C0 25 32 FC */	lfs f1, lit_385@l(r5)  /* 0x806432FC@l */
/* 803F418C  C0 04 32 F8 */	lfs f0, lit_384@l(r4)  /* 0x806432F8@l */
/* 803F4190  D0 23 00 E0 */	stfs f1, 0xe0(r3)
/* 803F4194  D0 23 00 E4 */	stfs f1, 0xe4(r3)
/* 803F4198  D0 23 00 E8 */	stfs f1, 0xe8(r3)
/* 803F419C  D0 03 00 EC */	stfs f0, 0xec(r3)
/* 803F41A0  D0 03 00 F0 */	stfs f0, 0xf0(r3)
/* 803F41A4  D0 03 00 F4 */	stfs f0, 0xf4(r3)
/* 803F41A8  80 83 00 E0 */	lwz r4, 0xe0(r3)
/* 803F41AC  80 03 00 E4 */	lwz r0, 0xe4(r3)
/* 803F41B0  90 83 00 FC */	stw r4, 0xfc(r3)
/* 803F41B4  90 03 01 00 */	stw r0, 0x100(r3)
/* 803F41B8  80 03 00 E8 */	lwz r0, 0xe8(r3)
/* 803F41BC  90 03 01 04 */	stw r0, 0x104(r3)
/* 803F41C0  80 83 00 EC */	lwz r4, 0xec(r3)
/* 803F41C4  80 03 00 F0 */	lwz r0, 0xf0(r3)
/* 803F41C8  90 83 01 08 */	stw r4, 0x108(r3)
/* 803F41CC  90 03 01 0C */	stw r0, 0x10c(r3)
/* 803F41D0  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 803F41D4  90 03 01 10 */	stw r0, 0x110(r3)
/* 803F41D8  D0 23 00 F8 */	stfs f1, 0xf8(r3)
/* 803F41DC  38 60 00 00 */	li r3, 0
/* 803F41E0  4E 80 00 20 */	blr 
