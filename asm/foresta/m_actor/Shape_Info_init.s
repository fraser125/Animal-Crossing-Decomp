lbl_803743F0:
/* 803743F0  D0 23 00 E4 */	stfs f1, 0xe4(r3)
/* 803743F4  3C A0 80 64 */	lis r5, data_806411FC@ha /* 0x806411FC@ha */
/* 803743F8  38 E0 00 01 */	li r7, 1
/* 803743FC  38 C3 00 28 */	addi r6, r3, 0x28
/* 80374400  90 83 00 E8 */	stw r4, 0xe8(r3)
/* 80374404  38 80 00 00 */	li r4, 0
/* 80374408  C0 05 11 FC */	lfs f0, data_806411FC@l(r5)  /* 0x806411FC@l */
/* 8037440C  38 00 FF FF */	li r0, -1
/* 80374410  D0 43 00 EC */	stfs f2, 0xec(r3)
/* 80374414  D0 63 00 F0 */	stfs f3, 0xf0(r3)
/* 80374418  98 E3 01 08 */	stb r7, 0x108(r3)
/* 8037441C  90 C3 01 00 */	stw r6, 0x100(r3)
/* 80374420  90 83 00 FC */	stw r4, 0xfc(r3)
/* 80374424  D0 03 00 F4 */	stfs f0, 0xf4(r3)
/* 80374428  D0 03 00 F8 */	stfs f0, 0xf8(r3)
/* 8037442C  98 83 01 0A */	stb r4, 0x10a(r3)
/* 80374430  90 C3 01 00 */	stw r6, 0x100(r3)
/* 80374434  90 03 01 04 */	stw r0, 0x104(r3)
/* 80374438  98 83 01 09 */	stb r4, 0x109(r3)
/* 8037443C  4E 80 00 20 */	blr 
