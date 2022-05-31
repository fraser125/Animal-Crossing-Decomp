lbl_80631324:
/* 80631324  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80631328  7C 08 02 A6 */	mflr r0
/* 8063132C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80631330  90 01 00 14 */	stw r0, 0x14(r1)
/* 80631334  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80631338  3C 84 00 02 */	addis r4, r4, 2
/* 8063133C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80631340  80 84 60 8C */	lwz r4, 0x608c(r4)
/* 80631344  28 04 00 00 */	cmplwi r4, 0
/* 80631348  41 82 00 A0 */	beq lbl_806313E8
/* 8063134C  80 84 00 60 */	lwz r4, 0x60(r4)
/* 80631350  3B E3 01 34 */	addi r31, r3, 0x134
/* 80631354  80 04 00 08 */	lwz r0, 8(r4)
/* 80631358  2C 00 00 00 */	cmpwi r0, 0
/* 8063135C  41 82 00 30 */	beq lbl_8063138C
/* 80631360  3C 80 80 EF */	lis r4, cKF_ba_r_int_kon_atqclock@ha /* 0x80EEEF54@ha */
/* 80631364  7F E3 FB 78 */	mr r3, r31
/* 80631368  38 84 EF 54 */	addi r4, r4, cKF_ba_r_int_kon_atqclock@l /* 0x80EEEF54@l */
/* 8063136C  38 A0 00 00 */	li r5, 0
/* 80631370  4B D3 F8 75 */	bl cKF_SkeletonInfo_R_init_standard_repeat
/* 80631374  7F E3 FB 78 */	mr r3, r31
/* 80631378  4B D3 FC 9D */	bl cKF_SkeletonInfo_R_play
/* 8063137C  3C 60 80 65 */	lis r3, lit_626@ha /* 0x8064D28C@ha */
/* 80631380  C0 03 D2 8C */	lfs f0, lit_626@l(r3)  /* 0x8064D28C@l */
/* 80631384  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 80631388  48 00 00 60 */	b lbl_806313E8
lbl_8063138C:
/* 8063138C  80 04 00 00 */	lwz r0, 0(r4)
/* 80631390  2C 00 00 01 */	cmpwi r0, 1
/* 80631394  41 82 00 10 */	beq lbl_806313A4
/* 80631398  80 04 00 04 */	lwz r0, 4(r4)
/* 8063139C  2C 00 00 01 */	cmpwi r0, 1
/* 806313A0  40 82 00 40 */	bne lbl_806313E0
lbl_806313A4:
/* 806313A4  A8 03 00 3C */	lha r0, 0x3c(r3)
/* 806313A8  2C 00 00 0D */	cmpwi r0, 0xd
/* 806313AC  41 82 00 28 */	beq lbl_806313D4
/* 806313B0  2C 00 00 0E */	cmpwi r0, 0xe
/* 806313B4  41 82 00 20 */	beq lbl_806313D4
/* 806313B8  2C 00 00 0F */	cmpwi r0, 0xf
/* 806313BC  41 82 00 18 */	beq lbl_806313D4
/* 806313C0  2C 00 00 0C */	cmpwi r0, 0xc
/* 806313C4  41 82 00 10 */	beq lbl_806313D4
/* 806313C8  38 83 00 08 */	addi r4, r3, 8
/* 806313CC  38 60 01 2D */	li r3, 0x12d
/* 806313D0  4B FF CB D9 */	bl sAdo_OngenTrgStart
lbl_806313D4:
/* 806313D4  7F E3 FB 78 */	mr r3, r31
/* 806313D8  4B D3 FC 3D */	bl cKF_SkeletonInfo_R_play
/* 806313DC  48 00 00 0C */	b lbl_806313E8
lbl_806313E0:
/* 806313E0  7F E3 FB 78 */	mr r3, r31
/* 806313E4  4B D3 FC 31 */	bl cKF_SkeletonInfo_R_play
lbl_806313E8:
/* 806313E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806313EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806313F0  7C 08 03 A6 */	mtlr r0
/* 806313F4  38 21 00 10 */	addi r1, r1, 0x10
/* 806313F8  4E 80 00 20 */	blr 
