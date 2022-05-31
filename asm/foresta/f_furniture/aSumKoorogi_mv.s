lbl_80638A6C:
/* 80638A6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80638A70  7C 08 02 A6 */	mflr r0
/* 80638A74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80638A78  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80638A7C  A8 03 00 3C */	lha r0, 0x3c(r3)
/* 80638A80  2C 00 00 0D */	cmpwi r0, 0xd
/* 80638A84  41 82 00 5C */	beq lbl_80638AE0
/* 80638A88  2C 00 00 0E */	cmpwi r0, 0xe
/* 80638A8C  41 82 00 54 */	beq lbl_80638AE0
/* 80638A90  2C 00 00 0F */	cmpwi r0, 0xf
/* 80638A94  41 82 00 4C */	beq lbl_80638AE0
/* 80638A98  2C 00 00 0C */	cmpwi r0, 0xc
/* 80638A9C  41 82 00 44 */	beq lbl_80638AE0
/* 80638AA0  3B E3 01 34 */	addi r31, r3, 0x134
/* 80638AA4  38 A3 00 08 */	addi r5, r3, 8
/* 80638AA8  38 80 00 38 */	li r4, 0x38
/* 80638AAC  4B FF 5C 51 */	bl sAdo_RoomIncectPos
/* 80638AB0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80638AB4  41 82 00 24 */	beq lbl_80638AD8
/* 80638AB8  3C 80 81 06 */	lis r4, cKF_ba_r_int_sum_koorogi@ha /* 0x81062724@ha */
/* 80638ABC  7F E3 FB 78 */	mr r3, r31
/* 80638AC0  38 84 27 24 */	addi r4, r4, cKF_ba_r_int_sum_koorogi@l /* 0x81062724@l */
/* 80638AC4  38 A0 00 00 */	li r5, 0
/* 80638AC8  4B D3 80 2D */	bl cKF_SkeletonInfo_R_init_standard_stop
/* 80638ACC  3C 60 80 65 */	lis r3, lit_626@ha /* 0x8064D28C@ha */
/* 80638AD0  C0 03 D2 8C */	lfs f0, lit_626@l(r3)  /* 0x8064D28C@l */
/* 80638AD4  D0 1F 00 0C */	stfs f0, 0xc(r31)
lbl_80638AD8:
/* 80638AD8  7F E3 FB 78 */	mr r3, r31
/* 80638ADC  4B D3 85 39 */	bl cKF_SkeletonInfo_R_play
lbl_80638AE0:
/* 80638AE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80638AE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80638AE8  7C 08 03 A6 */	mtlr r0
/* 80638AEC  38 21 00 10 */	addi r1, r1, 0x10
/* 80638AF0  4E 80 00 20 */	blr 
