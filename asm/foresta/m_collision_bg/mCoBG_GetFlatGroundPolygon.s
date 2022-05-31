lbl_80392D58:
/* 80392D58  54 C0 07 FE */	clrlwi r0, r6, 0x1f
/* 80392D5C  3C C0 80 65 */	lis r6, offset_from_base@ha /* 0x80651004@ha */
/* 80392D60  1C E0 00 24 */	mulli r7, r0, 0x24
/* 80392D64  38 06 10 04 */	addi r0, r6, offset_from_base@l /* 0x80651004@l */
/* 80392D68  7C C0 3A 14 */	add r6, r0, r7
/* 80392D6C  C0 06 00 00 */	lfs f0, 0(r6)
/* 80392D70  EC 02 00 2A */	fadds f0, f2, f0
/* 80392D74  D0 03 00 00 */	stfs f0, 0(r3)
/* 80392D78  D0 23 00 04 */	stfs f1, 4(r3)
/* 80392D7C  C0 06 00 08 */	lfs f0, 8(r6)
/* 80392D80  EC 03 00 2A */	fadds f0, f3, f0
/* 80392D84  D0 03 00 08 */	stfs f0, 8(r3)
/* 80392D88  C0 06 00 0C */	lfs f0, 0xc(r6)
/* 80392D8C  EC 02 00 2A */	fadds f0, f2, f0
/* 80392D90  D0 04 00 00 */	stfs f0, 0(r4)
/* 80392D94  D0 24 00 04 */	stfs f1, 4(r4)
/* 80392D98  C0 06 00 14 */	lfs f0, 0x14(r6)
/* 80392D9C  EC 03 00 2A */	fadds f0, f3, f0
/* 80392DA0  D0 04 00 08 */	stfs f0, 8(r4)
/* 80392DA4  C0 06 00 18 */	lfs f0, 0x18(r6)
/* 80392DA8  EC 02 00 2A */	fadds f0, f2, f0
/* 80392DAC  D0 05 00 00 */	stfs f0, 0(r5)
/* 80392DB0  D0 25 00 04 */	stfs f1, 4(r5)
/* 80392DB4  C0 06 00 20 */	lfs f0, 0x20(r6)
/* 80392DB8  EC 03 00 2A */	fadds f0, f3, f0
/* 80392DBC  D0 05 00 08 */	stfs f0, 8(r5)
/* 80392DC0  4E 80 00 20 */	blr 
