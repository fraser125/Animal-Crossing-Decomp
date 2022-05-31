lbl_803B9E7C:
/* 803B9E7C  3C 60 80 65 */	lis r3, mEnv_wind_info@ha /* 0x80656334@ha */
/* 803B9E80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B9E84  38 63 63 34 */	addi r3, r3, mEnv_wind_info@l /* 0x80656334@l */
/* 803B9E88  C0 03 00 08 */	lfs f0, 8(r3)
/* 803B9E8C  FC 00 00 1E */	fctiwz f0, f0
/* 803B9E90  D8 01 00 08 */	stfd f0, 8(r1)
/* 803B9E94  80 61 00 0C */	lwz r3, 0xc(r1)
/* 803B9E98  38 21 00 10 */	addi r1, r1, 0x10
/* 803B9E9C  4E 80 00 20 */	blr 
