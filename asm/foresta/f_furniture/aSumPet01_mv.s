lbl_8063A05C:
/* 8063A05C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063A060  7C 08 02 A6 */	mflr r0
/* 8063A064  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063A068  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8063A06C  A8 03 00 3C */	lha r0, 0x3c(r3)
/* 8063A070  2C 00 00 0D */	cmpwi r0, 0xd
/* 8063A074  41 82 00 5C */	beq lbl_8063A0D0
/* 8063A078  2C 00 00 0E */	cmpwi r0, 0xe
/* 8063A07C  41 82 00 54 */	beq lbl_8063A0D0
/* 8063A080  2C 00 00 0F */	cmpwi r0, 0xf
/* 8063A084  41 82 00 4C */	beq lbl_8063A0D0
/* 8063A088  2C 00 00 0C */	cmpwi r0, 0xc
/* 8063A08C  41 82 00 44 */	beq lbl_8063A0D0
/* 8063A090  3B E3 01 34 */	addi r31, r3, 0x134
/* 8063A094  38 A3 00 08 */	addi r5, r3, 8
/* 8063A098  38 80 00 3E */	li r4, 0x3e
/* 8063A09C  4B FF 46 61 */	bl sAdo_RoomIncectPos
/* 8063A0A0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8063A0A4  41 82 00 24 */	beq lbl_8063A0C8
/* 8063A0A8  3C 80 81 09 */	lis r4, cKF_ba_r_int_sum_pet01@ha /* 0x81088CE4@ha */
/* 8063A0AC  7F E3 FB 78 */	mr r3, r31
/* 8063A0B0  38 84 8C E4 */	addi r4, r4, cKF_ba_r_int_sum_pet01@l /* 0x81088CE4@l */
/* 8063A0B4  38 A0 00 00 */	li r5, 0
/* 8063A0B8  4B D3 6A 3D */	bl cKF_SkeletonInfo_R_init_standard_stop
/* 8063A0BC  3C 60 80 65 */	lis r3, lit_626@ha /* 0x8064D28C@ha */
/* 8063A0C0  C0 03 D2 8C */	lfs f0, lit_626@l(r3)  /* 0x8064D28C@l */
/* 8063A0C4  D0 1F 00 0C */	stfs f0, 0xc(r31)
lbl_8063A0C8:
/* 8063A0C8  7F E3 FB 78 */	mr r3, r31
/* 8063A0CC  4B D3 6F 49 */	bl cKF_SkeletonInfo_R_play
lbl_8063A0D0:
/* 8063A0D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063A0D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8063A0D8  7C 08 03 A6 */	mtlr r0
/* 8063A0DC  38 21 00 10 */	addi r1, r1, 0x10
/* 8063A0E0  4E 80 00 20 */	blr 
