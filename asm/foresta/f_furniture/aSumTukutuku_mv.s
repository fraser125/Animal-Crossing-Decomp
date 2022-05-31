lbl_8063B34C:
/* 8063B34C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063B350  7C 08 02 A6 */	mflr r0
/* 8063B354  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063B358  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8063B35C  A8 03 00 3C */	lha r0, 0x3c(r3)
/* 8063B360  2C 00 00 0D */	cmpwi r0, 0xd
/* 8063B364  41 82 00 5C */	beq lbl_8063B3C0
/* 8063B368  2C 00 00 0E */	cmpwi r0, 0xe
/* 8063B36C  41 82 00 54 */	beq lbl_8063B3C0
/* 8063B370  2C 00 00 0F */	cmpwi r0, 0xf
/* 8063B374  41 82 00 4C */	beq lbl_8063B3C0
/* 8063B378  2C 00 00 0C */	cmpwi r0, 0xc
/* 8063B37C  41 82 00 44 */	beq lbl_8063B3C0
/* 8063B380  3B E3 01 34 */	addi r31, r3, 0x134
/* 8063B384  38 A3 00 08 */	addi r5, r3, 8
/* 8063B388  38 80 00 3F */	li r4, 0x3f
/* 8063B38C  4B FF 33 71 */	bl sAdo_RoomIncectPos
/* 8063B390  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8063B394  41 82 00 24 */	beq lbl_8063B3B8
/* 8063B398  3C 80 81 0C */	lis r4, cKF_ba_r_int_sum_tukutuku@ha /* 0x810C1E48@ha */
/* 8063B39C  7F E3 FB 78 */	mr r3, r31
/* 8063B3A0  38 84 1E 48 */	addi r4, r4, cKF_ba_r_int_sum_tukutuku@l /* 0x810C1E48@l */
/* 8063B3A4  38 A0 00 00 */	li r5, 0
/* 8063B3A8  4B D3 57 4D */	bl cKF_SkeletonInfo_R_init_standard_stop
/* 8063B3AC  3C 60 80 65 */	lis r3, lit_626@ha /* 0x8064D28C@ha */
/* 8063B3B0  C0 03 D2 8C */	lfs f0, lit_626@l(r3)  /* 0x8064D28C@l */
/* 8063B3B4  D0 1F 00 0C */	stfs f0, 0xc(r31)
lbl_8063B3B8:
/* 8063B3B8  7F E3 FB 78 */	mr r3, r31
/* 8063B3BC  4B D3 5C 59 */	bl cKF_SkeletonInfo_R_play
lbl_8063B3C0:
/* 8063B3C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063B3C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8063B3C8  7C 08 03 A6 */	mtlr r0
/* 8063B3CC  38 21 00 10 */	addi r1, r1, 0x10
/* 8063B3D0  4E 80 00 20 */	blr 
