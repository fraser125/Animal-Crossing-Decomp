lbl_80638414:
/* 80638414  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80638418  7C 08 02 A6 */	mflr r0
/* 8063841C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80638420  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80638424  A8 03 00 3C */	lha r0, 0x3c(r3)
/* 80638428  2C 00 00 0D */	cmpwi r0, 0xd
/* 8063842C  41 82 00 5C */	beq lbl_80638488
/* 80638430  2C 00 00 0E */	cmpwi r0, 0xe
/* 80638434  41 82 00 54 */	beq lbl_80638488
/* 80638438  2C 00 00 0F */	cmpwi r0, 0xf
/* 8063843C  41 82 00 4C */	beq lbl_80638488
/* 80638440  2C 00 00 0C */	cmpwi r0, 0xc
/* 80638444  41 82 00 44 */	beq lbl_80638488
/* 80638448  3B E3 01 34 */	addi r31, r3, 0x134
/* 8063844C  38 A3 00 08 */	addi r5, r3, 8
/* 80638450  38 80 00 3D */	li r4, 0x3d
/* 80638454  4B FF 62 A9 */	bl sAdo_RoomIncectPos
/* 80638458  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8063845C  41 82 00 24 */	beq lbl_80638480
/* 80638460  3C 80 81 05 */	lis r4, cKF_ba_r_int_sum_higurashi@ha /* 0x81053D68@ha */
/* 80638464  7F E3 FB 78 */	mr r3, r31
/* 80638468  38 84 3D 68 */	addi r4, r4, cKF_ba_r_int_sum_higurashi@l /* 0x81053D68@l */
/* 8063846C  38 A0 00 00 */	li r5, 0
/* 80638470  4B D3 86 85 */	bl cKF_SkeletonInfo_R_init_standard_stop
/* 80638474  3C 60 80 65 */	lis r3, lit_626@ha /* 0x8064D28C@ha */
/* 80638478  C0 03 D2 8C */	lfs f0, lit_626@l(r3)  /* 0x8064D28C@l */
/* 8063847C  D0 1F 00 0C */	stfs f0, 0xc(r31)
lbl_80638480:
/* 80638480  7F E3 FB 78 */	mr r3, r31
/* 80638484  4B D3 8B 91 */	bl cKF_SkeletonInfo_R_play
lbl_80638488:
/* 80638488  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063848C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80638490  7C 08 03 A6 */	mtlr r0
/* 80638494  38 21 00 10 */	addi r1, r1, 0x10
/* 80638498  4E 80 00 20 */	blr 
