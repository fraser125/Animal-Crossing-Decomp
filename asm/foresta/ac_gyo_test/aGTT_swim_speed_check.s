lbl_805A3598:
/* 805A3598  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805A359C  7C 08 02 A6 */	mflr r0
/* 805A35A0  90 01 00 34 */	stw r0, 0x34(r1)
/* 805A35A4  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 805A35A8  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 805A35AC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805A35B0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805A35B4  3C 80 80 65 */	lis r4, lit_554@ha /* 0x8064A3D8@ha */
/* 805A35B8  7C 7E 1B 78 */	mr r30, r3
/* 805A35BC  C0 04 A3 D8 */	lfs f0, lit_554@l(r4)  /* 0x8064A3D8@l */
/* 805A35C0  FF E0 18 90 */	fmr f31, f3
/* 805A35C4  38 7E 02 28 */	addi r3, r30, 0x228
/* 805A35C8  EC 40 00 B2 */	fmuls f2, f0, f2
/* 805A35CC  4B E1 76 9D */	bl chase_f
/* 805A35D0  3C 80 80 65 */	lis r4, lit_555@ha /* 0x8064A3DC@ha */
/* 805A35D4  C0 1E 02 28 */	lfs f0, 0x228(r30)
/* 805A35D8  C0 44 A3 DC */	lfs f2, lit_555@l(r4)  /* 0x8064A3DC@l */
/* 805A35DC  FC 20 F8 90 */	fmr f1, f31
/* 805A35E0  7C 7F 1B 78 */	mr r31, r3
/* 805A35E4  EC 02 00 32 */	fmuls f0, f2, f0
/* 805A35E8  FC 00 00 1E */	fctiwz f0, f0
/* 805A35EC  D8 01 00 08 */	stfd f0, 8(r1)
/* 805A35F0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 805A35F4  7C 03 07 34 */	extsh r3, r0
/* 805A35F8  4B FF FE E9 */	bl aGTT_speed_calc
/* 805A35FC  D0 3E 00 74 */	stfs f1, 0x74(r30)
/* 805A3600  7F E3 FB 78 */	mr r3, r31
/* 805A3604  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 805A3608  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805A360C  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 805A3610  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805A3614  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805A3618  7C 08 03 A6 */	mtlr r0
/* 805A361C  38 21 00 30 */	addi r1, r1, 0x30
/* 805A3620  4E 80 00 20 */	blr 
