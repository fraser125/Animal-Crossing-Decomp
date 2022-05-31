lbl_8063B208:
/* 8063B208  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063B20C  7C 08 02 A6 */	mflr r0
/* 8063B210  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063B214  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8063B218  A8 03 00 3C */	lha r0, 0x3c(r3)
/* 8063B21C  2C 00 00 0D */	cmpwi r0, 0xd
/* 8063B220  41 82 00 5C */	beq lbl_8063B27C
/* 8063B224  2C 00 00 0E */	cmpwi r0, 0xe
/* 8063B228  41 82 00 54 */	beq lbl_8063B27C
/* 8063B22C  2C 00 00 0F */	cmpwi r0, 0xf
/* 8063B230  41 82 00 4C */	beq lbl_8063B27C
/* 8063B234  2C 00 00 0C */	cmpwi r0, 0xc
/* 8063B238  41 82 00 44 */	beq lbl_8063B27C
/* 8063B23C  3B E3 01 34 */	addi r31, r3, 0x134
/* 8063B240  38 A3 00 08 */	addi r5, r3, 8
/* 8063B244  38 80 00 3B */	li r4, 0x3b
/* 8063B248  4B FF 34 B5 */	bl sAdo_RoomIncectPos
/* 8063B24C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8063B250  41 82 00 24 */	beq lbl_8063B274
/* 8063B254  3C 80 81 0C */	lis r4, cKF_ba_r_int_sum_tonosama@ha /* 0x810BA2CC@ha */
/* 8063B258  7F E3 FB 78 */	mr r3, r31
/* 8063B25C  38 84 A2 CC */	addi r4, r4, cKF_ba_r_int_sum_tonosama@l /* 0x810BA2CC@l */
/* 8063B260  38 A0 00 00 */	li r5, 0
/* 8063B264  4B D3 58 91 */	bl cKF_SkeletonInfo_R_init_standard_stop
/* 8063B268  3C 60 80 65 */	lis r3, lit_626@ha /* 0x8064D28C@ha */
/* 8063B26C  C0 03 D2 8C */	lfs f0, lit_626@l(r3)  /* 0x8064D28C@l */
/* 8063B270  D0 1F 00 0C */	stfs f0, 0xc(r31)
lbl_8063B274:
/* 8063B274  7F E3 FB 78 */	mr r3, r31
/* 8063B278  4B D3 5D 9D */	bl cKF_SkeletonInfo_R_play
lbl_8063B27C:
/* 8063B27C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063B280  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8063B284  7C 08 03 A6 */	mtlr r0
/* 8063B288  38 21 00 10 */	addi r1, r1, 0x10
/* 8063B28C  4E 80 00 20 */	blr 
