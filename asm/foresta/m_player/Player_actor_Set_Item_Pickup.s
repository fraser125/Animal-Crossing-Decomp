lbl_804ED6FC:
/* 804ED6FC  3C 80 80 64 */	lis r4, lit_603@ha /* 0x80646564@ha */
/* 804ED700  C0 23 0D 40 */	lfs f1, 0xd40(r3)
/* 804ED704  38 A4 65 64 */	addi r5, r4, lit_603@l /* 0x80646564@l */
/* 804ED708  38 E3 0D 40 */	addi r7, r3, 0xd40
/* 804ED70C  C0 65 00 00 */	lfs f3, 0(r5)
/* 804ED710  3C 80 80 64 */	lis r4, lit_1165@ha /* 0x80646A24@ha */
/* 804ED714  C0 04 6A 24 */	lfs f0, lit_1165@l(r4)  /* 0x80646A24@l */
/* 804ED718  38 A3 0D 3C */	addi r5, r3, 0xd3c
/* 804ED71C  EC 21 18 2A */	fadds f1, f1, f3
/* 804ED720  38 C3 0D 24 */	addi r6, r3, 0xd24
/* 804ED724  D0 23 0D 40 */	stfs f1, 0xd40(r3)
/* 804ED728  C0 23 0D 40 */	lfs f1, 0xd40(r3)
/* 804ED72C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804ED730  40 81 00 30 */	ble lbl_804ED760
/* 804ED734  3C 80 80 64 */	lis r4, lit_604@ha /* 0x80646568@ha */
/* 804ED738  D0 07 00 00 */	stfs f0, 0(r7)
/* 804ED73C  C0 04 65 68 */	lfs f0, lit_604@l(r4)  /* 0x80646568@l */
/* 804ED740  D0 05 00 00 */	stfs f0, 0(r5)
/* 804ED744  80 83 10 5C */	lwz r4, 0x105c(r3)
/* 804ED748  80 03 10 60 */	lwz r0, 0x1060(r3)
/* 804ED74C  90 86 00 00 */	stw r4, 0(r6)
/* 804ED750  90 06 00 04 */	stw r0, 4(r6)
/* 804ED754  80 03 10 64 */	lwz r0, 0x1064(r3)
/* 804ED758  90 06 00 08 */	stw r0, 8(r6)
/* 804ED75C  4E 80 00 20 */	blr 
lbl_804ED760:
/* 804ED760  3C 80 80 64 */	lis r4, lit_2591@ha /* 0x80646C44@ha */
/* 804ED764  38 E3 0D 30 */	addi r7, r3, 0xd30
/* 804ED768  C0 44 6C 44 */	lfs f2, lit_2591@l(r4)  /* 0x80646C44@l */
/* 804ED76C  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 804ED770  40 80 00 38 */	bge lbl_804ED7A8
/* 804ED774  C0 26 00 00 */	lfs f1, 0(r6)
/* 804ED778  C0 03 10 5C */	lfs f0, 0x105c(r3)
/* 804ED77C  EC 01 00 28 */	fsubs f0, f1, f0
/* 804ED780  D0 07 00 00 */	stfs f0, 0(r7)
/* 804ED784  C0 26 00 04 */	lfs f1, 4(r6)
/* 804ED788  C0 03 10 60 */	lfs f0, 0x1060(r3)
/* 804ED78C  EC 01 00 28 */	fsubs f0, f1, f0
/* 804ED790  D0 07 00 04 */	stfs f0, 4(r7)
/* 804ED794  C0 26 00 08 */	lfs f1, 8(r6)
/* 804ED798  C0 03 10 64 */	lfs f0, 0x1064(r3)
/* 804ED79C  EC 01 00 28 */	fsubs f0, f1, f0
/* 804ED7A0  D0 07 00 08 */	stfs f0, 8(r7)
/* 804ED7A4  4E 80 00 20 */	blr 
lbl_804ED7A8:
/* 804ED7A8  EC 21 10 28 */	fsubs f1, f1, f2
/* 804ED7AC  3C 80 80 64 */	lis r4, lit_604@ha /* 0x80646568@ha */
/* 804ED7B0  C0 04 65 68 */	lfs f0, lit_604@l(r4)  /* 0x80646568@l */
/* 804ED7B4  EC 21 10 24 */	fdivs f1, f1, f2
/* 804ED7B8  EC 43 08 28 */	fsubs f2, f3, f1
/* 804ED7BC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804ED7C0  40 80 00 0C */	bge lbl_804ED7CC
/* 804ED7C4  FC 40 00 90 */	fmr f2, f0
/* 804ED7C8  48 00 00 10 */	b lbl_804ED7D8
lbl_804ED7CC:
/* 804ED7CC  FC 02 18 40 */	fcmpo cr0, f2, f3
/* 804ED7D0  40 81 00 08 */	ble lbl_804ED7D8
/* 804ED7D4  FC 40 18 90 */	fmr f2, f3
lbl_804ED7D8:
/* 804ED7D8  3C 80 80 64 */	lis r4, lit_790@ha /* 0x80646668@ha */
/* 804ED7DC  C0 04 66 68 */	lfs f0, lit_790@l(r4)  /* 0x80646668@l */
/* 804ED7E0  EC 00 00 B2 */	fmuls f0, f0, f2
/* 804ED7E4  D0 05 00 00 */	stfs f0, 0(r5)
/* 804ED7E8  C0 07 00 00 */	lfs f0, 0(r7)
/* 804ED7EC  C0 23 10 5C */	lfs f1, 0x105c(r3)
/* 804ED7F0  EC 02 00 32 */	fmuls f0, f2, f0
/* 804ED7F4  EC 01 00 2A */	fadds f0, f1, f0
/* 804ED7F8  D0 06 00 00 */	stfs f0, 0(r6)
/* 804ED7FC  C0 07 00 04 */	lfs f0, 4(r7)
/* 804ED800  C0 23 10 60 */	lfs f1, 0x1060(r3)
/* 804ED804  EC 02 00 32 */	fmuls f0, f2, f0
/* 804ED808  EC 01 00 2A */	fadds f0, f1, f0
/* 804ED80C  D0 06 00 04 */	stfs f0, 4(r6)
/* 804ED810  C0 07 00 08 */	lfs f0, 8(r7)
/* 804ED814  C0 23 10 64 */	lfs f1, 0x1064(r3)
/* 804ED818  EC 02 00 32 */	fmuls f0, f2, f0
/* 804ED81C  EC 01 00 2A */	fadds f0, f1, f0
/* 804ED820  D0 06 00 08 */	stfs f0, 8(r6)
/* 804ED824  4E 80 00 20 */	blr 
