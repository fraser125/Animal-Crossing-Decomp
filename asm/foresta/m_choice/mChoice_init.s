lbl_80383564:
/* 80383564  3C 80 80 64 */	lis r4, data_8064173C@ha /* 0x8064173C@ha */
/* 80383568  3C A0 80 64 */	lis r5, lit_398@ha /* 0x80641740@ha */
/* 8038356C  38 C4 17 3C */	addi r6, r4, data_8064173C@l /* 0x8064173C@l */
/* 80383570  38 00 00 B4 */	li r0, 0xb4
/* 80383574  C0 06 00 00 */	lfs f0, 0(r6)
/* 80383578  3C 80 80 64 */	lis r4, lit_399@ha /* 0x80641744@ha */
/* 8038357C  39 04 17 44 */	addi r8, r4, lit_399@l /* 0x80641744@l */
/* 80383580  39 20 00 96 */	li r9, 0x96
/* 80383584  D0 03 00 00 */	stfs f0, 0(r3)
/* 80383588  3C 80 80 64 */	lis r4, lit_400@ha /* 0x80641748@ha */
/* 8038358C  C0 05 17 40 */	lfs f0, lit_398@l(r5)  /* 0x80641740@l */
/* 80383590  38 E4 17 48 */	addi r7, r4, lit_400@l /* 0x80641748@l */
/* 80383594  C0 88 00 00 */	lfs f4, 0(r8)
/* 80383598  3C 80 80 64 */	lis r4, lit_401@ha /* 0x8064174C@ha */
/* 8038359C  D0 03 00 04 */	stfs f0, 4(r3)
/* 803835A0  38 C4 17 4C */	addi r6, r4, lit_401@l /* 0x8064174C@l */
/* 803835A4  C0 67 00 00 */	lfs f3, 0(r7)
/* 803835A8  3C 80 80 64 */	lis r4, lit_402@ha /* 0x80641750@ha */
/* 803835AC  98 03 00 18 */	stb r0, 0x18(r3)
/* 803835B0  38 A4 17 50 */	addi r5, r4, lit_402@l /* 0x80641750@l */
/* 803835B4  C0 46 00 00 */	lfs f2, 0(r6)
/* 803835B8  3C 80 80 64 */	lis r4, lit_403@ha /* 0x80641754@ha */
/* 803835BC  99 23 00 19 */	stb r9, 0x19(r3)
/* 803835C0  38 00 00 6E */	li r0, 0x6e
/* 803835C4  39 80 00 FF */	li r12, 0xff
/* 803835C8  39 60 00 06 */	li r11, 6
/* 803835CC  98 03 00 1A */	stb r0, 0x1a(r3)
/* 803835D0  39 40 00 00 */	li r10, 0
/* 803835D4  39 20 00 78 */	li r9, 0x78
/* 803835D8  39 00 00 32 */	li r8, 0x32
/* 803835DC  99 83 00 1B */	stb r12, 0x1b(r3)
/* 803835E0  38 E0 00 C3 */	li r7, 0xc3
/* 803835E4  38 C0 00 B9 */	li r6, 0xb9
/* 803835E8  C0 25 00 00 */	lfs f1, 0(r5)
/* 803835EC  D0 83 00 1C */	stfs f4, 0x1c(r3)
/* 803835F0  38 00 FF FF */	li r0, -1
/* 803835F4  C0 04 17 54 */	lfs f0, lit_403@l(r4)  /* 0x80641754@l */
/* 803835F8  D0 83 00 20 */	stfs f4, 0x20(r3)
/* 803835FC  D0 63 00 24 */	stfs f3, 0x24(r3)
/* 80383600  D0 43 00 28 */	stfs f2, 0x28(r3)
/* 80383604  D0 83 00 2C */	stfs f4, 0x2c(r3)
/* 80383608  D0 83 00 30 */	stfs f4, 0x30(r3)
/* 8038360C  91 63 00 C0 */	stw r11, 0xc0(r3)
/* 80383610  91 43 00 C8 */	stw r10, 0xc8(r3)
/* 80383614  99 23 00 CC */	stb r9, 0xcc(r3)
/* 80383618  99 03 00 CD */	stb r8, 0xcd(r3)
/* 8038361C  99 03 00 CE */	stb r8, 0xce(r3)
/* 80383620  99 83 00 CF */	stb r12, 0xcf(r3)
/* 80383624  99 43 00 D0 */	stb r10, 0xd0(r3)
/* 80383628  98 E3 00 D1 */	stb r7, 0xd1(r3)
/* 8038362C  98 C3 00 D2 */	stb r6, 0xd2(r3)
/* 80383630  99 83 00 D3 */	stb r12, 0xd3(r3)
/* 80383634  D0 23 00 F4 */	stfs f1, 0xf4(r3)
/* 80383638  D0 03 00 D4 */	stfs f0, 0xd4(r3)
/* 8038363C  D0 63 00 D8 */	stfs f3, 0xd8(r3)
/* 80383640  D0 23 00 DC */	stfs f1, 0xdc(r3)
/* 80383644  91 43 00 E0 */	stw r10, 0xe0(r3)
/* 80383648  90 03 00 E4 */	stw r0, 0xe4(r3)
/* 8038364C  91 43 00 E8 */	stw r10, 0xe8(r3)
/* 80383650  91 43 00 EC */	stw r10, 0xec(r3)
/* 80383654  91 43 00 F0 */	stw r10, 0xf0(r3)
/* 80383658  D0 23 00 F4 */	stfs f1, 0xf4(r3)
/* 8038365C  D0 23 00 F8 */	stfs f1, 0xf8(r3)
/* 80383660  99 43 00 FC */	stb r10, 0xfc(r3)
/* 80383664  99 43 00 FD */	stb r10, 0xfd(r3)
/* 80383668  4E 80 00 20 */	blr 
