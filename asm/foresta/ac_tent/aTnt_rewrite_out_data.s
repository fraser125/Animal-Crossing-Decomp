lbl_805BE318:
/* 805BE318  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805BE31C  7C 08 02 A6 */	mflr r0
/* 805BE320  90 01 00 44 */	stw r0, 0x44(r1)
/* 805BE324  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 805BE328  88 04 20 D3 */	lbz r0, 0x20d3(r4)
/* 805BE32C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805BE330  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805BE334  28 00 00 00 */	cmplwi r0, 0
/* 805BE338  3F E4 00 03 */	addis r31, r4, 3
/* 805BE33C  40 82 00 C0 */	bne lbl_805BE3FC
/* 805BE340  80 04 00 14 */	lwz r0, 0x14(r4)
/* 805BE344  3C 80 80 65 */	lis r4, lit_523@ha /* 0x8064ABAC@ha */
/* 805BE348  38 A4 AB AC */	addi r5, r4, lit_523@l /* 0x8064ABAC@l */
/* 805BE34C  38 C0 00 00 */	li r6, 0
/* 805BE350  90 1F 85 44 */	stw r0, -0x7abc(r31)
/* 805BE354  3C 80 80 65 */	lis r4, lit_436@ha /* 0x8064AB98@ha */
/* 805BE358  C0 45 00 00 */	lfs f2, 0(r5)
/* 805BE35C  38 00 00 03 */	li r0, 3
/* 805BE360  98 DF 85 48 */	stb r6, -0x7ab8(r31)
/* 805BE364  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 805BE368  98 DF 85 49 */	stb r6, -0x7ab7(r31)
/* 805BE36C  C0 24 AB 98 */	lfs f1, lit_436@l(r4)  /* 0x8064AB98@l */
/* 805BE370  B0 1F 85 4A */	sth r0, -0x7ab6(r31)
/* 805BE374  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 805BE378  C0 63 00 28 */	lfs f3, 0x28(r3)
/* 805BE37C  38 61 00 08 */	addi r3, r1, 8
/* 805BE380  EC 02 00 2A */	fadds f0, f2, f0
/* 805BE384  D0 61 00 14 */	stfs f3, 0x14(r1)
/* 805BE388  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805BE38C  80 81 00 14 */	lwz r4, 0x14(r1)
/* 805BE390  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 805BE394  90 81 00 08 */	stw r4, 8(r1)
/* 805BE398  90 A1 00 0C */	stw r5, 0xc(r1)
/* 805BE39C  90 01 00 10 */	stw r0, 0x10(r1)
/* 805BE3A0  4B DD 15 F9 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 805BE3A4  C0 61 00 14 */	lfs f3, 0x14(r1)
/* 805BE3A8  FC 40 08 18 */	frsp f2, f1
/* 805BE3AC  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 805BE3B0  38 80 58 49 */	li r4, 0x5849
/* 805BE3B4  FC 60 18 1E */	fctiwz f3, f3
/* 805BE3B8  38 00 00 01 */	li r0, 1
/* 805BE3BC  FC 40 10 1E */	fctiwz f2, f2
/* 805BE3C0  FC 00 00 1E */	fctiwz f0, f0
/* 805BE3C4  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 805BE3C8  38 60 21 68 */	li r3, 0x2168
/* 805BE3CC  D8 61 00 20 */	stfd f3, 0x20(r1)
/* 805BE3D0  D8 41 00 28 */	stfd f2, 0x28(r1)
/* 805BE3D4  80 A1 00 24 */	lwz r5, 0x24(r1)
/* 805BE3D8  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 805BE3DC  80 C1 00 2C */	lwz r6, 0x2c(r1)
/* 805BE3E0  B0 BF 85 4C */	sth r5, -0x7ab4(r31)
/* 805BE3E4  80 A1 00 34 */	lwz r5, 0x34(r1)
/* 805BE3E8  B0 DF 85 4E */	sth r6, -0x7ab2(r31)
/* 805BE3EC  B0 BF 85 50 */	sth r5, -0x7ab0(r31)
/* 805BE3F0  B0 9F 85 52 */	sth r4, -0x7aae(r31)
/* 805BE3F4  98 1F 85 54 */	stb r0, -0x7aac(r31)
/* 805BE3F8  4B DB D7 15 */	bl mBGMPsComp_make_ps_wipe
lbl_805BE3FC:
/* 805BE3FC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805BE400  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 805BE404  7C 08 03 A6 */	mtlr r0
/* 805BE408  38 21 00 40 */	addi r1, r1, 0x40
/* 805BE40C  4E 80 00 20 */	blr 
