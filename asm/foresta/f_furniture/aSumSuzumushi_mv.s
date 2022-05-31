lbl_8063AE90:
/* 8063AE90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063AE94  7C 08 02 A6 */	mflr r0
/* 8063AE98  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063AE9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8063AEA0  A8 03 00 3C */	lha r0, 0x3c(r3)
/* 8063AEA4  2C 00 00 0D */	cmpwi r0, 0xd
/* 8063AEA8  41 82 00 5C */	beq lbl_8063AF04
/* 8063AEAC  2C 00 00 0E */	cmpwi r0, 0xe
/* 8063AEB0  41 82 00 54 */	beq lbl_8063AF04
/* 8063AEB4  2C 00 00 0F */	cmpwi r0, 0xf
/* 8063AEB8  41 82 00 4C */	beq lbl_8063AF04
/* 8063AEBC  2C 00 00 0C */	cmpwi r0, 0xc
/* 8063AEC0  41 82 00 44 */	beq lbl_8063AF04
/* 8063AEC4  3B E3 01 34 */	addi r31, r3, 0x134
/* 8063AEC8  38 A3 00 08 */	addi r5, r3, 8
/* 8063AECC  38 80 00 39 */	li r4, 0x39
/* 8063AED0  4B FF 38 2D */	bl sAdo_RoomIncectPos
/* 8063AED4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8063AED8  41 82 00 24 */	beq lbl_8063AEFC
/* 8063AEDC  3C 80 81 0B */	lis r4, cKF_ba_r_int_sum_suzumushi@ha /* 0x810B0CF0@ha */
/* 8063AEE0  7F E3 FB 78 */	mr r3, r31
/* 8063AEE4  38 84 0C F0 */	addi r4, r4, cKF_ba_r_int_sum_suzumushi@l /* 0x810B0CF0@l */
/* 8063AEE8  38 A0 00 00 */	li r5, 0
/* 8063AEEC  4B D3 5C 09 */	bl cKF_SkeletonInfo_R_init_standard_stop
/* 8063AEF0  3C 60 80 65 */	lis r3, lit_626@ha /* 0x8064D28C@ha */
/* 8063AEF4  C0 03 D2 8C */	lfs f0, lit_626@l(r3)  /* 0x8064D28C@l */
/* 8063AEF8  D0 1F 00 0C */	stfs f0, 0xc(r31)
lbl_8063AEFC:
/* 8063AEFC  7F E3 FB 78 */	mr r3, r31
/* 8063AF00  4B D3 61 15 */	bl cKF_SkeletonInfo_R_play
lbl_8063AF04:
/* 8063AF04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063AF08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8063AF0C  7C 08 03 A6 */	mtlr r0
/* 8063AF10  38 21 00 10 */	addi r1, r1, 0x10
/* 8063AF14  4E 80 00 20 */	blr 
