lbl_8060466C:
/* 8060466C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80604670  7C 08 02 A6 */	mflr r0
/* 80604674  90 01 00 34 */	stw r0, 0x34(r1)
/* 80604678  39 61 00 30 */	addi r11, r1, 0x30
/* 8060467C  4B A9 68 59 */	bl func_8009AED4
/* 80604680  7C 7E 1B 78 */	mr r30, r3
/* 80604684  7C 9F 23 78 */	mr r31, r4
/* 80604688  A8 63 00 28 */	lha r3, 0x28(r3)
/* 8060468C  4B DB 64 65 */	bl sin_s
/* 80604690  3C 60 80 65 */	lis r3, lit_514@ha /* 0x8064BB40@ha */
/* 80604694  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80604698  C0 43 BB 40 */	lfs f2, lit_514@l(r3)  /* 0x8064BB40@l */
/* 8060469C  EC 22 00 72 */	fmuls f1, f2, f1
/* 806046A0  EC 00 08 2A */	fadds f0, f0, f1
/* 806046A4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 806046A8  A8 7E 00 28 */	lha r3, 0x28(r30)
/* 806046AC  4B DB 63 F1 */	bl cos_s
/* 806046B0  3C 60 80 65 */	lis r3, lit_514@ha /* 0x8064BB40@ha */
/* 806046B4  C0 1E 00 08 */	lfs f0, 8(r30)
/* 806046B8  38 83 BB 40 */	addi r4, r3, lit_514@l /* 0x8064BB40@l */
/* 806046BC  7F E3 FB 78 */	mr r3, r31
/* 806046C0  C0 44 00 00 */	lfs f2, 0(r4)
/* 806046C4  38 81 00 14 */	addi r4, r1, 0x14
/* 806046C8  38 A1 00 08 */	addi r5, r1, 8
/* 806046CC  EC 22 00 72 */	fmuls f1, f2, f1
/* 806046D0  EC 00 08 2A */	fadds f0, f0, f1
/* 806046D4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 806046D8  C0 1E 00 04 */	lfs f0, 4(r30)
/* 806046DC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 806046E0  4B DB 70 45 */	bl Game_play_Projection_Trans
/* 806046E4  3C 60 80 65 */	lis r3, lit_515@ha /* 0x8064BB44@ha */
/* 806046E8  C0 41 00 08 */	lfs f2, 8(r1)
/* 806046EC  C0 23 BB 44 */	lfs f1, lit_515@l(r3)  /* 0x8064BB44@l */
/* 806046F0  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 806046F4  4C 41 13 82 */	cror 2, 1, 2
/* 806046F8  40 82 00 C0 */	bne lbl_806047B8
/* 806046FC  3C 60 80 65 */	lis r3, lit_516@ha /* 0x8064BB48@ha */
/* 80604700  C0 03 BB 48 */	lfs f0, lit_516@l(r3)  /* 0x8064BB48@l */
/* 80604704  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80604708  40 80 00 B0 */	bge lbl_806047B8
/* 8060470C  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 80604710  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 80604714  4C 41 13 82 */	cror 2, 1, 2
/* 80604718  40 82 00 A0 */	bne lbl_806047B8
/* 8060471C  3C 60 80 65 */	lis r3, lit_517@ha /* 0x8064BB4C@ha */
/* 80604720  C0 03 BB 4C */	lfs f0, lit_517@l(r3)  /* 0x8064BB4C@l */
/* 80604724  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80604728  40 80 00 90 */	bge lbl_806047B8
/* 8060472C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80604730  3C 60 80 65 */	lis r3, lit_518@ha /* 0x8064BB50@ha */
/* 80604734  C0 23 BB 50 */	lfs f1, lit_518@l(r3)  /* 0x8064BB50@l */
/* 80604738  80 85 02 D4 */	lwz r4, 0x2d4(r5)
/* 8060473C  FC 40 08 90 */	fmr f2, f1
/* 80604740  3B A4 FF C0 */	addi r29, r4, -64
/* 80604744  FC 60 08 90 */	fmr f3, f1
/* 80604748  93 A5 02 D4 */	stw r29, 0x2d4(r5)
/* 8060474C  7F A3 EB 78 */	mr r3, r29
/* 80604750  A8 9E 00 26 */	lha r4, 0x26(r30)
/* 80604754  83 FF 00 00 */	lwz r31, 0(r31)
/* 80604758  A8 BE 00 24 */	lha r5, 0x24(r30)
/* 8060475C  7C 86 23 78 */	mr r6, r4
/* 80604760  C0 81 00 14 */	lfs f4, 0x14(r1)
/* 80604764  C0 A1 00 18 */	lfs f5, 0x18(r1)
/* 80604768  C0 C1 00 1C */	lfs f6, 0x1c(r1)
/* 8060476C  4B E0 9C 6D */	bl suMtxMakeSRT
/* 80604770  80 DF 02 E0 */	lwz r6, 0x2e0(r31)
/* 80604774  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 80604778  3C 60 80 6D */	lis r3, data_806D1D28@ha /* 0x806D1D28@ha */
/* 8060477C  3C 00 DE 00 */	lis r0, 0xde00
/* 80604780  38 A6 00 08 */	addi r5, r6, 8
/* 80604784  38 84 00 03 */	addi r4, r4, 0x0003 /* 0xDA380003@l */
/* 80604788  90 BF 02 E0 */	stw r5, 0x2e0(r31)
/* 8060478C  38 63 1D 28 */	addi r3, r3, data_806D1D28@l /* 0x806D1D28@l */
/* 80604790  90 86 00 00 */	stw r4, 0(r6)
/* 80604794  93 A6 00 04 */	stw r29, 4(r6)
/* 80604798  80 BF 02 E0 */	lwz r5, 0x2e0(r31)
/* 8060479C  38 85 00 08 */	addi r4, r5, 8
/* 806047A0  90 9F 02 E0 */	stw r4, 0x2e0(r31)
/* 806047A4  90 05 00 00 */	stw r0, 0(r5)
/* 806047A8  A8 1E 00 22 */	lha r0, 0x22(r30)
/* 806047AC  54 00 10 3A */	slwi r0, r0, 2
/* 806047B0  7C 03 00 2E */	lwzx r0, r3, r0
/* 806047B4  90 05 00 04 */	stw r0, 4(r5)
lbl_806047B8:
/* 806047B8  39 61 00 30 */	addi r11, r1, 0x30
/* 806047BC  4B A9 67 65 */	bl func_8009AF20
/* 806047C0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806047C4  7C 08 03 A6 */	mtlr r0
/* 806047C8  38 21 00 30 */	addi r1, r1, 0x30
/* 806047CC  4E 80 00 20 */	blr 
