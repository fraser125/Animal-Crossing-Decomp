lbl_8045BCF0:
/* 8045BCF0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8045BCF4  7C 08 02 A6 */	mflr r0
/* 8045BCF8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8045BCFC  38 A1 00 0C */	addi r5, r1, 0xc
/* 8045BD00  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8045BD04  7C 7F 1B 78 */	mr r31, r3
/* 8045BD08  38 7F 00 1C */	addi r3, r31, 0x1c
/* 8045BD0C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8045BD10  7C 9E 23 78 */	mr r30, r4
/* 8045BD14  4B F5 F2 65 */	bl xyz_t_sub
/* 8045BD18  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8045BD1C  3C 60 80 64 */	lis r3, lit_5181@ha /* 0x80644954@ha */
/* 8045BD20  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8045BD24  EC 41 00 72 */	fmuls f2, f1, f1
/* 8045BD28  A8 1F 00 8C */	lha r0, 0x8c(r31)
/* 8045BD2C  EC 20 00 32 */	fmuls f1, f0, f0
/* 8045BD30  C0 03 49 54 */	lfs f0, lit_5181@l(r3)  /* 0x80644954@l */
/* 8045BD34  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 8045BD38  B0 1F 00 8C */	sth r0, 0x8c(r31)
/* 8045BD3C  EC 82 08 2A */	fadds f4, f2, f1
/* 8045BD40  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8045BD44  40 81 00 CC */	ble lbl_8045BE10
/* 8045BD48  3C 60 80 64 */	lis r3, lit_459@ha /* 0x806445BC@ha */
/* 8045BD4C  C0 03 45 BC */	lfs f0, lit_459@l(r3)  /* 0x806445BC@l */
/* 8045BD50  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8045BD54  40 81 00 6C */	ble lbl_8045BDC0
/* 8045BD58  FC 20 20 34 */	frsqrte f1, f4
/* 8045BD5C  3C 60 80 64 */	lis r3, lit_509@ha /* 0x806445FC@ha */
/* 8045BD60  38 83 45 FC */	addi r4, r3, lit_509@l /* 0x806445FC@l */
/* 8045BD64  3C 60 80 64 */	lis r3, lit_510@ha /* 0x80644604@ha */
/* 8045BD68  C8 64 00 00 */	lfd f3, 0(r4)
/* 8045BD6C  FC 01 00 72 */	fmul f0, f1, f1
/* 8045BD70  C8 43 46 04 */	lfd f2, lit_510@l(r3)  /* 0x80644604@l */
/* 8045BD74  FC 23 00 72 */	fmul f1, f3, f1
/* 8045BD78  FC 04 00 32 */	fmul f0, f4, f0
/* 8045BD7C  FC 02 00 28 */	fsub f0, f2, f0
/* 8045BD80  FC 21 00 32 */	fmul f1, f1, f0
/* 8045BD84  FC 01 00 72 */	fmul f0, f1, f1
/* 8045BD88  FC 23 00 72 */	fmul f1, f3, f1
/* 8045BD8C  FC 04 00 32 */	fmul f0, f4, f0
/* 8045BD90  FC 02 00 28 */	fsub f0, f2, f0
/* 8045BD94  FC 21 00 32 */	fmul f1, f1, f0
/* 8045BD98  FC 01 00 72 */	fmul f0, f1, f1
/* 8045BD9C  FC 23 00 72 */	fmul f1, f3, f1
/* 8045BDA0  FC 04 00 32 */	fmul f0, f4, f0
/* 8045BDA4  FC 02 00 28 */	fsub f0, f2, f0
/* 8045BDA8  FC 01 00 32 */	fmul f0, f1, f0
/* 8045BDAC  FC 04 00 32 */	fmul f0, f4, f0
/* 8045BDB0  FC 00 00 18 */	frsp f0, f0
/* 8045BDB4  D0 01 00 08 */	stfs f0, 8(r1)
/* 8045BDB8  C0 61 00 08 */	lfs f3, 8(r1)
/* 8045BDBC  48 00 00 08 */	b lbl_8045BDC4
lbl_8045BDC0:
/* 8045BDC0  FC 60 20 90 */	fmr f3, f4
lbl_8045BDC4:
/* 8045BDC4  3C 60 80 64 */	lis r3, lit_5182@ha /* 0x80644958@ha */
/* 8045BDC8  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 8045BDCC  C0 23 49 58 */	lfs f1, lit_5182@l(r3)  /* 0x80644958@l */
/* 8045BDD0  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8045BDD4  EC 61 18 24 */	fdivs f3, f1, f3
/* 8045BDD8  EC 22 00 F2 */	fmuls f1, f2, f3
/* 8045BDDC  EC 00 00 F2 */	fmuls f0, f0, f3
/* 8045BDE0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8045BDE4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8045BDE8  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8045BDEC  EC 00 08 2A */	fadds f0, f0, f1
/* 8045BDF0  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 8045BDF4  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8045BDF8  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8045BDFC  EC 01 00 2A */	fadds f0, f1, f0
/* 8045BE00  D0 1F 00 24 */	stfs f0, 0x24(r31)
/* 8045BE04  A8 1F 00 8C */	lha r0, 0x8c(r31)
/* 8045BE08  60 00 00 02 */	ori r0, r0, 2
/* 8045BE0C  B0 1F 00 8C */	sth r0, 0x8c(r31)
lbl_8045BE10:
/* 8045BE10  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8045BE14  3C 60 80 64 */	lis r3, lit_461@ha /* 0x806445C4@ha */
/* 8045BE18  38 83 45 C4 */	addi r4, r3, lit_461@l /* 0x806445C4@l */
/* 8045BE1C  FC 20 00 50 */	fneg f1, f0
/* 8045BE20  C0 44 00 00 */	lfs f2, 0(r4)
/* 8045BE24  3C 60 80 64 */	lis r3, lit_503@ha /* 0x806445DC@ha */
/* 8045BE28  3C 80 80 64 */	lis r4, lit_5183@ha /* 0x8064495C@ha */
/* 8045BE2C  C0 03 45 DC */	lfs f0, lit_503@l(r3)  /* 0x806445DC@l */
/* 8045BE30  EC 22 00 72 */	fmuls f1, f2, f1
/* 8045BE34  C0 44 49 5C */	lfs f2, lit_5183@l(r4)  /* 0x8064495C@l */
/* 8045BE38  EC 01 00 24 */	fdivs f0, f1, f0
/* 8045BE3C  EC 02 00 2A */	fadds f0, f2, f0
/* 8045BE40  D0 1F 00 20 */	stfs f0, 0x20(r31)
/* 8045BE44  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8045BE48  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8045BE4C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8045BE50  7C 08 03 A6 */	mtlr r0
/* 8045BE54  38 21 00 20 */	addi r1, r1, 0x20
/* 8045BE58  4E 80 00 20 */	blr 
