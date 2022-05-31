lbl_806353DC:
/* 806353DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806353E0  7C 08 02 A6 */	mflr r0
/* 806353E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 806353E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806353EC  A8 03 00 3C */	lha r0, 0x3c(r3)
/* 806353F0  2C 00 00 0D */	cmpwi r0, 0xd
/* 806353F4  41 82 00 5C */	beq lbl_80635450
/* 806353F8  2C 00 00 0E */	cmpwi r0, 0xe
/* 806353FC  41 82 00 54 */	beq lbl_80635450
/* 80635400  2C 00 00 0F */	cmpwi r0, 0xf
/* 80635404  41 82 00 4C */	beq lbl_80635450
/* 80635408  2C 00 00 0C */	cmpwi r0, 0xc
/* 8063540C  41 82 00 44 */	beq lbl_80635450
/* 80635410  3B E3 01 34 */	addi r31, r3, 0x134
/* 80635414  38 A3 00 08 */	addi r5, r3, 8
/* 80635418  38 80 00 3C */	li r4, 0x3c
/* 8063541C  4B FF 92 E1 */	bl sAdo_RoomIncectPos
/* 80635420  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80635424  41 82 00 24 */	beq lbl_80635448
/* 80635428  3C 80 80 FD */	lis r4, cKF_ba_r_int_sum_abura@ha /* 0x80FD294C@ha */
/* 8063542C  7F E3 FB 78 */	mr r3, r31
/* 80635430  38 84 29 4C */	addi r4, r4, cKF_ba_r_int_sum_abura@l /* 0x80FD294C@l */
/* 80635434  38 A0 00 00 */	li r5, 0
/* 80635438  4B D3 B6 BD */	bl cKF_SkeletonInfo_R_init_standard_stop
/* 8063543C  3C 60 80 65 */	lis r3, lit_626@ha /* 0x8064D28C@ha */
/* 80635440  C0 03 D2 8C */	lfs f0, lit_626@l(r3)  /* 0x8064D28C@l */
/* 80635444  D0 1F 00 0C */	stfs f0, 0xc(r31)
lbl_80635448:
/* 80635448  7F E3 FB 78 */	mr r3, r31
/* 8063544C  4B D3 BB C9 */	bl cKF_SkeletonInfo_R_play
lbl_80635450:
/* 80635450  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80635454  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80635458  7C 08 03 A6 */	mtlr r0
/* 8063545C  38 21 00 10 */	addi r1, r1, 0x10
/* 80635460  4E 80 00 20 */	blr 
