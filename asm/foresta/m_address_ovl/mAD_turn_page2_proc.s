lbl_805C29E0:
/* 805C29E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805C29E4  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 805C29E8  3C 60 80 65 */	lis r3, lit_622@ha /* 0x8064AD0C@ha */
/* 805C29EC  C0 03 AD 0C */	lfs f0, lit_622@l(r3)  /* 0x8064AD0C@l */
/* 805C29F0  80 C4 09 94 */	lwz r6, 0x994(r4)
/* 805C29F4  C0 26 00 0C */	lfs f1, 0xc(r6)
/* 805C29F8  FC 20 0A 10 */	fabs f1, f1
/* 805C29FC  FC 20 08 18 */	frsp f1, f1
/* 805C2A00  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C2A04  40 81 00 80 */	ble lbl_805C2A84
/* 805C2A08  3C 60 80 65 */	lis r3, lit_619@ha /* 0x8064ACF4@ha */
/* 805C2A0C  3C 80 80 65 */	lis r4, lit_620@ha /* 0x8064ACFC@ha */
/* 805C2A10  38 A3 AC F4 */	addi r5, r3, lit_619@l /* 0x8064ACF4@l */
/* 805C2A14  C8 84 AC FC */	lfd f4, lit_620@l(r4)  /* 0x8064ACFC@l */
/* 805C2A18  C8 A5 00 00 */	lfd f5, 0(r5)
/* 805C2A1C  3C 60 80 65 */	lis r3, lit_621@ha /* 0x8064AD04@ha */
/* 805C2A20  C8 63 AD 04 */	lfd f3, lit_621@l(r3)  /* 0x8064AD04@l */
/* 805C2A24  FC 40 28 34 */	frsqrte f2, f5
/* 805C2A28  C0 06 00 10 */	lfs f0, 0x10(r6)
/* 805C2A2C  FC 22 00 B2 */	fmul f1, f2, f2
/* 805C2A30  FC 44 00 B2 */	fmul f2, f4, f2
/* 805C2A34  FC 25 00 72 */	fmul f1, f5, f1
/* 805C2A38  FC 23 08 28 */	fsub f1, f3, f1
/* 805C2A3C  FC 42 00 72 */	fmul f2, f2, f1
/* 805C2A40  FC 22 00 B2 */	fmul f1, f2, f2
/* 805C2A44  FC 44 00 B2 */	fmul f2, f4, f2
/* 805C2A48  FC 25 00 72 */	fmul f1, f5, f1
/* 805C2A4C  FC 23 08 28 */	fsub f1, f3, f1
/* 805C2A50  FC 42 00 72 */	fmul f2, f2, f1
/* 805C2A54  FC 22 00 B2 */	fmul f1, f2, f2
/* 805C2A58  FC 44 00 B2 */	fmul f2, f4, f2
/* 805C2A5C  FC 25 00 72 */	fmul f1, f5, f1
/* 805C2A60  FC 23 08 28 */	fsub f1, f3, f1
/* 805C2A64  FC 22 00 72 */	fmul f1, f2, f1
/* 805C2A68  FC 25 00 72 */	fmul f1, f5, f1
/* 805C2A6C  FC 20 08 18 */	frsp f1, f1
/* 805C2A70  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 805C2A74  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 805C2A78  EC 00 00 72 */	fmuls f0, f0, f1
/* 805C2A7C  D0 06 00 10 */	stfs f0, 0x10(r6)
/* 805C2A80  48 00 00 84 */	b lbl_805C2B04
lbl_805C2A84:
/* 805C2A84  3C 60 80 65 */	lis r3, lit_618@ha /* 0x8064ACF0@ha */
/* 805C2A88  C0 03 AC F0 */	lfs f0, lit_618@l(r3)  /* 0x8064ACF0@l */
/* 805C2A8C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C2A90  40 80 00 74 */	bge lbl_805C2B04
/* 805C2A94  3C 80 80 65 */	lis r4, lit_620@ha /* 0x8064ACFC@ha */
/* 805C2A98  CC A4 AC FC */	lfdu f5, lit_620@l(r4)  /* 0x8064ACFC@l */
/* 805C2A9C  3C 60 80 65 */	lis r3, lit_621@ha /* 0x8064AD04@ha */
/* 805C2AA0  C0 06 00 10 */	lfs f0, 0x10(r6)
/* 805C2AA4  FC 40 28 34 */	frsqrte f2, f5
/* 805C2AA8  C8 84 00 00 */	lfd f4, 0(r4)
/* 805C2AAC  C8 63 AD 04 */	lfd f3, lit_621@l(r3)  /* 0x8064AD04@l */
/* 805C2AB0  FC 22 00 B2 */	fmul f1, f2, f2
/* 805C2AB4  FC 44 00 B2 */	fmul f2, f4, f2
/* 805C2AB8  FC 25 00 72 */	fmul f1, f5, f1
/* 805C2ABC  FC 23 08 28 */	fsub f1, f3, f1
/* 805C2AC0  FC 42 00 72 */	fmul f2, f2, f1
/* 805C2AC4  FC 22 00 B2 */	fmul f1, f2, f2
/* 805C2AC8  FC 44 00 B2 */	fmul f2, f4, f2
/* 805C2ACC  FC 25 00 72 */	fmul f1, f5, f1
/* 805C2AD0  FC 23 08 28 */	fsub f1, f3, f1
/* 805C2AD4  FC 42 00 72 */	fmul f2, f2, f1
/* 805C2AD8  FC 22 00 B2 */	fmul f1, f2, f2
/* 805C2ADC  FC 44 00 B2 */	fmul f2, f4, f2
/* 805C2AE0  FC 25 00 72 */	fmul f1, f5, f1
/* 805C2AE4  FC 23 08 28 */	fsub f1, f3, f1
/* 805C2AE8  FC 22 00 72 */	fmul f1, f2, f1
/* 805C2AEC  FC 25 00 72 */	fmul f1, f5, f1
/* 805C2AF0  FC 20 08 18 */	frsp f1, f1
/* 805C2AF4  D0 21 00 08 */	stfs f1, 8(r1)
/* 805C2AF8  C0 21 00 08 */	lfs f1, 8(r1)
/* 805C2AFC  EC 00 00 72 */	fmuls f0, f0, f1
/* 805C2B00  D0 06 00 10 */	stfs f0, 0x10(r6)
lbl_805C2B04:
/* 805C2B04  C0 46 00 0C */	lfs f2, 0xc(r6)
/* 805C2B08  3C 60 80 65 */	lis r3, data_8064ACDC@ha /* 0x8064ACDC@ha */
/* 805C2B0C  C0 26 00 10 */	lfs f1, 0x10(r6)
/* 805C2B10  C0 03 AC DC */	lfs f0, data_8064ACDC@l(r3)  /* 0x8064ACDC@l */
/* 805C2B14  EC 22 08 2A */	fadds f1, f2, f1
/* 805C2B18  D0 26 00 0C */	stfs f1, 0xc(r6)
/* 805C2B1C  C0 46 00 0C */	lfs f2, 0xc(r6)
/* 805C2B20  C0 26 00 10 */	lfs f1, 0x10(r6)
/* 805C2B24  EC 22 00 72 */	fmuls f1, f2, f1
/* 805C2B28  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C2B2C  40 81 00 14 */	ble lbl_805C2B40
/* 805C2B30  D0 06 00 0C */	stfs f0, 0xc(r6)
/* 805C2B34  38 00 00 02 */	li r0, 2
/* 805C2B38  D0 06 00 10 */	stfs f0, 0x10(r6)
/* 805C2B3C  98 06 00 02 */	stb r0, 2(r6)
lbl_805C2B40:
/* 805C2B40  38 21 00 10 */	addi r1, r1, 0x10
/* 805C2B44  4E 80 00 20 */	blr 
