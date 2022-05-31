lbl_8063AFD4:
/* 8063AFD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063AFD8  7C 08 02 A6 */	mflr r0
/* 8063AFDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063AFE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8063AFE4  A8 03 00 3C */	lha r0, 0x3c(r3)
/* 8063AFE8  2C 00 00 0D */	cmpwi r0, 0xd
/* 8063AFEC  41 82 00 5C */	beq lbl_8063B048
/* 8063AFF0  2C 00 00 0E */	cmpwi r0, 0xe
/* 8063AFF4  41 82 00 54 */	beq lbl_8063B048
/* 8063AFF8  2C 00 00 0F */	cmpwi r0, 0xf
/* 8063AFFC  41 82 00 4C */	beq lbl_8063B048
/* 8063B000  2C 00 00 0C */	cmpwi r0, 0xc
/* 8063B004  41 82 00 44 */	beq lbl_8063B048
/* 8063B008  3B E3 01 34 */	addi r31, r3, 0x134
/* 8063B00C  38 A3 00 08 */	addi r5, r3, 8
/* 8063B010  38 80 00 3A */	li r4, 0x3a
/* 8063B014  4B FF 36 E9 */	bl sAdo_RoomIncectPos
/* 8063B018  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8063B01C  41 82 00 24 */	beq lbl_8063B040
/* 8063B020  3C 80 81 0B */	lis r4, cKF_ba_r_int_sum_syouryou@ha /* 0x810B1D28@ha */
/* 8063B024  7F E3 FB 78 */	mr r3, r31
/* 8063B028  38 84 1D 28 */	addi r4, r4, cKF_ba_r_int_sum_syouryou@l /* 0x810B1D28@l */
/* 8063B02C  38 A0 00 00 */	li r5, 0
/* 8063B030  4B D3 5A C5 */	bl cKF_SkeletonInfo_R_init_standard_stop
/* 8063B034  3C 60 80 65 */	lis r3, lit_626@ha /* 0x8064D28C@ha */
/* 8063B038  C0 03 D2 8C */	lfs f0, lit_626@l(r3)  /* 0x8064D28C@l */
/* 8063B03C  D0 1F 00 0C */	stfs f0, 0xc(r31)
lbl_8063B040:
/* 8063B040  7F E3 FB 78 */	mr r3, r31
/* 8063B044  4B D3 5F D1 */	bl cKF_SkeletonInfo_R_play
lbl_8063B048:
/* 8063B048  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063B04C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8063B050  7C 08 03 A6 */	mtlr r0
/* 8063B054  38 21 00 10 */	addi r1, r1, 0x10
/* 8063B058  4E 80 00 20 */	blr 
