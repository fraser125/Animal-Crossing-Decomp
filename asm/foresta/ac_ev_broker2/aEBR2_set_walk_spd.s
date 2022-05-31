lbl_8051ACAC:
/* 8051ACAC  3C 80 80 65 */	lis r4, lit_545@ha /* 0x80649094@ha */
/* 8051ACB0  3C A0 80 65 */	lis r5, lit_546@ha /* 0x80649098@ha */
/* 8051ACB4  38 C4 90 94 */	addi r6, r4, lit_545@l /* 0x80649094@l */
/* 8051ACB8  C0 25 90 98 */	lfs f1, lit_546@l(r5)  /* 0x80649098@l */
/* 8051ACBC  C0 06 00 00 */	lfs f0, 0(r6)
/* 8051ACC0  3C 80 80 65 */	lis r4, lit_547@ha /* 0x8064909C@ha */
/* 8051ACC4  D0 03 08 F8 */	stfs f0, 0x8f8(r3)
/* 8051ACC8  C0 04 90 9C */	lfs f0, lit_547@l(r4)  /* 0x8064909C@l */
/* 8051ACCC  D0 23 08 FC */	stfs f1, 0x8fc(r3)
/* 8051ACD0  D0 03 09 00 */	stfs f0, 0x900(r3)
/* 8051ACD4  4E 80 00 20 */	blr 
