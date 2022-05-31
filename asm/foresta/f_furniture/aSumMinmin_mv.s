lbl_80639AF8:
/* 80639AF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80639AFC  7C 08 02 A6 */	mflr r0
/* 80639B00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80639B04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80639B08  A8 03 00 3C */	lha r0, 0x3c(r3)
/* 80639B0C  2C 00 00 0D */	cmpwi r0, 0xd
/* 80639B10  41 82 00 5C */	beq lbl_80639B6C
/* 80639B14  2C 00 00 0E */	cmpwi r0, 0xe
/* 80639B18  41 82 00 54 */	beq lbl_80639B6C
/* 80639B1C  2C 00 00 0F */	cmpwi r0, 0xf
/* 80639B20  41 82 00 4C */	beq lbl_80639B6C
/* 80639B24  2C 00 00 0C */	cmpwi r0, 0xc
/* 80639B28  41 82 00 44 */	beq lbl_80639B6C
/* 80639B2C  3B E3 01 34 */	addi r31, r3, 0x134
/* 80639B30  38 A3 00 08 */	addi r5, r3, 8
/* 80639B34  38 80 00 40 */	li r4, 0x40
/* 80639B38  4B FF 4B C5 */	bl sAdo_RoomIncectPos
/* 80639B3C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80639B40  41 82 00 24 */	beq lbl_80639B64
/* 80639B44  3C 80 81 07 */	lis r4, cKF_ba_r_int_sum_minmin@ha /* 0x8107709C@ha */
/* 80639B48  7F E3 FB 78 */	mr r3, r31
/* 80639B4C  38 84 70 9C */	addi r4, r4, cKF_ba_r_int_sum_minmin@l /* 0x8107709C@l */
/* 80639B50  38 A0 00 00 */	li r5, 0
/* 80639B54  4B D3 6F A1 */	bl cKF_SkeletonInfo_R_init_standard_stop
/* 80639B58  3C 60 80 65 */	lis r3, lit_626@ha /* 0x8064D28C@ha */
/* 80639B5C  C0 03 D2 8C */	lfs f0, lit_626@l(r3)  /* 0x8064D28C@l */
/* 80639B60  D0 1F 00 0C */	stfs f0, 0xc(r31)
lbl_80639B64:
/* 80639B64  7F E3 FB 78 */	mr r3, r31
/* 80639B68  4B D3 74 AD */	bl cKF_SkeletonInfo_R_play
lbl_80639B6C:
/* 80639B6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80639B70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80639B74  7C 08 03 A6 */	mtlr r0
/* 80639B78  38 21 00 10 */	addi r1, r1, 0x10
/* 80639B7C  4E 80 00 20 */	blr 
