lbl_806397E4:
/* 806397E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806397E8  7C 08 02 A6 */	mflr r0
/* 806397EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 806397F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806397F4  A8 03 00 3C */	lha r0, 0x3c(r3)
/* 806397F8  2C 00 00 0D */	cmpwi r0, 0xd
/* 806397FC  41 82 00 5C */	beq lbl_80639858
/* 80639800  2C 00 00 0E */	cmpwi r0, 0xe
/* 80639804  41 82 00 54 */	beq lbl_80639858
/* 80639808  2C 00 00 0F */	cmpwi r0, 0xf
/* 8063980C  41 82 00 4C */	beq lbl_80639858
/* 80639810  2C 00 00 0C */	cmpwi r0, 0xc
/* 80639814  41 82 00 44 */	beq lbl_80639858
/* 80639818  3B E3 01 34 */	addi r31, r3, 0x134
/* 8063981C  38 A3 00 08 */	addi r5, r3, 8
/* 80639820  38 80 00 36 */	li r4, 0x36
/* 80639824  4B FF 4E D9 */	bl sAdo_RoomIncectPos
/* 80639828  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8063982C  41 82 00 24 */	beq lbl_80639850
/* 80639830  3C 80 81 07 */	lis r4, cKF_ba_r_int_sum_matumushi@ha /* 0x810746D0@ha */
/* 80639834  7F E3 FB 78 */	mr r3, r31
/* 80639838  38 84 46 D0 */	addi r4, r4, cKF_ba_r_int_sum_matumushi@l /* 0x810746D0@l */
/* 8063983C  38 A0 00 00 */	li r5, 0
/* 80639840  4B D3 72 B5 */	bl cKF_SkeletonInfo_R_init_standard_stop
/* 80639844  3C 60 80 65 */	lis r3, lit_626@ha /* 0x8064D28C@ha */
/* 80639848  C0 03 D2 8C */	lfs f0, lit_626@l(r3)  /* 0x8064D28C@l */
/* 8063984C  D0 1F 00 0C */	stfs f0, 0xc(r31)
lbl_80639850:
/* 80639850  7F E3 FB 78 */	mr r3, r31
/* 80639854  4B D3 77 C1 */	bl cKF_SkeletonInfo_R_play
lbl_80639858:
/* 80639858  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063985C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80639860  7C 08 03 A6 */	mtlr r0
/* 80639864  38 21 00 10 */	addi r1, r1, 0x10
/* 80639868  4E 80 00 20 */	blr 
