lbl_804EABD0:
/* 804EABD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EABD4  7C 08 02 A6 */	mflr r0
/* 804EABD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EABDC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804EABE0  7C 7F 1B 78 */	mr r31, r3
/* 804EABE4  38 9F 00 DE */	addi r4, r31, 0xde
/* 804EABE8  A8 C3 00 36 */	lha r6, 0x36(r3)
/* 804EABEC  38 7F 00 28 */	addi r3, r31, 0x28
/* 804EABF0  38 BF 00 5C */	addi r5, r31, 0x5c
/* 804EABF4  38 FF 01 74 */	addi r7, r31, 0x174
/* 804EABF8  4B E8 7A C9 */	bl cKF_SkeletonInfo_R_AnimationMove_base
/* 804EABFC  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804EAC00  C0 5F 0D 34 */	lfs f2, 0xd34(r31)
/* 804EAC04  38 83 65 64 */	addi r4, r3, lit_603@l /* 0x80646564@l */
/* 804EAC08  38 FF 0D 34 */	addi r7, r31, 0xd34
/* 804EAC0C  C0 24 00 00 */	lfs f1, 0(r4)
/* 804EAC10  3C 60 80 64 */	lis r3, lit_5247@ha /* 0x80647CE4@ha */
/* 804EAC14  C0 03 7C E4 */	lfs f0, lit_5247@l(r3)  /* 0x80647CE4@l */
/* 804EAC18  38 DF 0D 28 */	addi r6, r31, 0xd28
/* 804EAC1C  EC 22 08 2A */	fadds f1, f2, f1
/* 804EAC20  D0 3F 0D 34 */	stfs f1, 0xd34(r31)
/* 804EAC24  C0 3F 0D 34 */	lfs f1, 0xd34(r31)
/* 804EAC28  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804EAC2C  4C 41 13 82 */	cror 2, 1, 2
/* 804EAC30  40 82 00 A8 */	bne lbl_804EACD8
/* 804EAC34  3C 60 80 65 */	lis r3, lit_8888@ha /* 0x806484B0@ha */
/* 804EAC38  C0 03 84 B0 */	lfs f0, lit_8888@l(r3)  /* 0x806484B0@l */
/* 804EAC3C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804EAC40  40 81 00 08 */	ble lbl_804EAC48
/* 804EAC44  D0 07 00 00 */	stfs f0, 0(r7)
lbl_804EAC48:
/* 804EAC48  3C 60 80 64 */	lis r3, lit_5247@ha /* 0x80647CE4@ha */
/* 804EAC4C  3C 80 80 65 */	lis r4, lit_8889@ha /* 0x806484B4@ha */
/* 804EAC50  38 A3 7C E4 */	addi r5, r3, lit_5247@l /* 0x80647CE4@l */
/* 804EAC54  C0 47 00 00 */	lfs f2, 0(r7)
/* 804EAC58  C0 05 00 00 */	lfs f0, 0(r5)
/* 804EAC5C  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804EAC60  C0 24 84 B4 */	lfs f1, lit_8889@l(r4)  /* 0x806484B4@l */
/* 804EAC64  EC 42 00 28 */	fsubs f2, f2, f0
/* 804EAC68  C0 03 65 64 */	lfs f0, lit_603@l(r3)  /* 0x80646564@l */
/* 804EAC6C  EC 42 08 24 */	fdivs f2, f2, f1
/* 804EAC70  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804EAC74  4C 41 13 82 */	cror 2, 1, 2
/* 804EAC78  40 82 00 28 */	bne lbl_804EACA0
/* 804EAC7C  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 804EAC80  C0 06 00 00 */	lfs f0, 0(r6)
/* 804EAC84  EC 01 00 2A */	fadds f0, f1, f0
/* 804EAC88  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 804EAC8C  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 804EAC90  C0 06 00 08 */	lfs f0, 8(r6)
/* 804EAC94  EC 01 00 2A */	fadds f0, f1, f0
/* 804EAC98  D0 1F 00 30 */	stfs f0, 0x30(r31)
/* 804EAC9C  48 00 00 3C */	b lbl_804EACD8
lbl_804EACA0:
/* 804EACA0  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804EACA4  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 804EACA8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804EACAC  40 81 00 2C */	ble lbl_804EACD8
/* 804EACB0  C0 06 00 00 */	lfs f0, 0(r6)
/* 804EACB4  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 804EACB8  EC 00 00 B2 */	fmuls f0, f0, f2
/* 804EACBC  EC 01 00 2A */	fadds f0, f1, f0
/* 804EACC0  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 804EACC4  C0 06 00 08 */	lfs f0, 8(r6)
/* 804EACC8  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 804EACCC  EC 00 00 B2 */	fmuls f0, f0, f2
/* 804EACD0  EC 01 00 2A */	fadds f0, f1, f0
/* 804EACD4  D0 1F 00 30 */	stfs f0, 0x30(r31)
lbl_804EACD8:
/* 804EACD8  7F E3 FB 78 */	mr r3, r31
/* 804EACDC  4B E8 96 39 */	bl Actor_position_moveF
/* 804EACE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EACE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804EACE8  7C 08 03 A6 */	mtlr r0
/* 804EACEC  38 21 00 10 */	addi r1, r1, 0x10
/* 804EACF0  4E 80 00 20 */	blr 
