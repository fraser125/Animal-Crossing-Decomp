lbl_804A8F74:
/* 804A8F74  3C A0 80 69 */	lis r5, data_8068ECB0@ha /* 0x8068ECB0@ha */
/* 804A8F78  54 80 10 3A */	slwi r0, r4, 2
/* 804A8F7C  38 E5 EC B0 */	addi r7, r5, data_8068ECB0@l /* 0x8068ECB0@l */
/* 804A8F80  C0 03 01 E4 */	lfs f0, 0x1e4(r3)
/* 804A8F84  38 87 00 7C */	addi r4, r7, 0x7c
/* 804A8F88  7C 44 04 2E */	lfsx f2, r4, r0
/* 804A8F8C  38 C7 00 84 */	addi r6, r7, 0x84
/* 804A8F90  38 A7 00 6C */	addi r5, r7, 0x6c
/* 804A8F94  38 87 00 74 */	addi r4, r7, 0x74
/* 804A8F98  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 804A8F9C  7C 66 04 2E */	lfsx f3, r6, r0
/* 804A8FA0  7C 85 04 2E */	lfsx f4, r5, r0
/* 804A8FA4  7C A4 04 2E */	lfsx f5, r4, r0
/* 804A8FA8  40 80 00 0C */	bge lbl_804A8FB4
/* 804A8FAC  FC 00 20 90 */	fmr f0, f4
/* 804A8FB0  48 00 00 2C */	b lbl_804A8FDC
lbl_804A8FB4:
/* 804A8FB4  FC 00 18 40 */	fcmpo cr0, f0, f3
/* 804A8FB8  40 81 00 0C */	ble lbl_804A8FC4
/* 804A8FBC  FC 00 28 90 */	fmr f0, f5
/* 804A8FC0  48 00 00 1C */	b lbl_804A8FDC
lbl_804A8FC4:
/* 804A8FC4  EC 20 10 28 */	fsubs f1, f0, f2
/* 804A8FC8  EC 03 10 28 */	fsubs f0, f3, f2
/* 804A8FCC  EC 45 20 28 */	fsubs f2, f5, f4
/* 804A8FD0  EC 01 00 24 */	fdivs f0, f1, f0
/* 804A8FD4  EC 02 00 32 */	fmuls f0, f2, f0
/* 804A8FD8  EC 04 00 2A */	fadds f0, f4, f0
lbl_804A8FDC:
/* 804A8FDC  D0 03 00 5C */	stfs f0, 0x5c(r3)
/* 804A8FE0  D0 03 00 60 */	stfs f0, 0x60(r3)
/* 804A8FE4  D0 03 00 64 */	stfs f0, 0x64(r3)
/* 804A8FE8  4E 80 00 20 */	blr 
