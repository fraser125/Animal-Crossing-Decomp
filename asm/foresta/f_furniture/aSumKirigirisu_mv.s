lbl_806385A8:
/* 806385A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806385AC  7C 08 02 A6 */	mflr r0
/* 806385B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 806385B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806385B8  A8 03 00 3C */	lha r0, 0x3c(r3)
/* 806385BC  2C 00 00 0D */	cmpwi r0, 0xd
/* 806385C0  41 82 00 5C */	beq lbl_8063861C
/* 806385C4  2C 00 00 0E */	cmpwi r0, 0xe
/* 806385C8  41 82 00 54 */	beq lbl_8063861C
/* 806385CC  2C 00 00 0F */	cmpwi r0, 0xf
/* 806385D0  41 82 00 4C */	beq lbl_8063861C
/* 806385D4  2C 00 00 0C */	cmpwi r0, 0xc
/* 806385D8  41 82 00 44 */	beq lbl_8063861C
/* 806385DC  3B E3 01 34 */	addi r31, r3, 0x134
/* 806385E0  38 A3 00 08 */	addi r5, r3, 8
/* 806385E4  38 80 00 37 */	li r4, 0x37
/* 806385E8  4B FF 61 15 */	bl sAdo_RoomIncectPos
/* 806385EC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806385F0  41 82 00 24 */	beq lbl_80638614
/* 806385F4  3C 80 81 06 */	lis r4, cKF_ba_r_int_sum_kirigirisu@ha /* 0x8105D460@ha */
/* 806385F8  7F E3 FB 78 */	mr r3, r31
/* 806385FC  38 84 D4 60 */	addi r4, r4, cKF_ba_r_int_sum_kirigirisu@l /* 0x8105D460@l */
/* 80638600  38 A0 00 00 */	li r5, 0
/* 80638604  4B D3 84 F1 */	bl cKF_SkeletonInfo_R_init_standard_stop
/* 80638608  3C 60 80 65 */	lis r3, lit_626@ha /* 0x8064D28C@ha */
/* 8063860C  C0 03 D2 8C */	lfs f0, lit_626@l(r3)  /* 0x8064D28C@l */
/* 80638610  D0 1F 00 0C */	stfs f0, 0xc(r31)
lbl_80638614:
/* 80638614  7F E3 FB 78 */	mr r3, r31
/* 80638618  4B D3 89 FD */	bl cKF_SkeletonInfo_R_play
lbl_8063861C:
/* 8063861C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80638620  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80638624  7C 08 03 A6 */	mtlr r0
/* 80638628  38 21 00 10 */	addi r1, r1, 0x10
/* 8063862C  4E 80 00 20 */	blr 
