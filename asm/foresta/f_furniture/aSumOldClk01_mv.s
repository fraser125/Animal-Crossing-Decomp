lbl_80639F0C:
/* 80639F0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80639F10  7C 08 02 A6 */	mflr r0
/* 80639F14  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80639F18  90 01 00 14 */	stw r0, 0x14(r1)
/* 80639F1C  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80639F20  3C 84 00 02 */	addis r4, r4, 2
/* 80639F24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80639F28  80 84 60 8C */	lwz r4, 0x608c(r4)
/* 80639F2C  28 04 00 00 */	cmplwi r4, 0
/* 80639F30  41 82 00 A0 */	beq lbl_80639FD0
/* 80639F34  80 84 00 60 */	lwz r4, 0x60(r4)
/* 80639F38  3B E3 01 34 */	addi r31, r3, 0x134
/* 80639F3C  80 04 00 08 */	lwz r0, 8(r4)
/* 80639F40  2C 00 00 00 */	cmpwi r0, 0
/* 80639F44  41 82 00 30 */	beq lbl_80639F74
/* 80639F48  3C 80 81 08 */	lis r4, cKF_ba_r_int_sum_oldclk01@ha /* 0x810852B8@ha */
/* 80639F4C  7F E3 FB 78 */	mr r3, r31
/* 80639F50  38 84 52 B8 */	addi r4, r4, cKF_ba_r_int_sum_oldclk01@l /* 0x810852B8@l */
/* 80639F54  38 A0 00 00 */	li r5, 0
/* 80639F58  4B D3 6C 8D */	bl cKF_SkeletonInfo_R_init_standard_repeat
/* 80639F5C  7F E3 FB 78 */	mr r3, r31
/* 80639F60  4B D3 70 B5 */	bl cKF_SkeletonInfo_R_play
/* 80639F64  3C 60 80 65 */	lis r3, lit_626@ha /* 0x8064D28C@ha */
/* 80639F68  C0 03 D2 8C */	lfs f0, lit_626@l(r3)  /* 0x8064D28C@l */
/* 80639F6C  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 80639F70  48 00 00 60 */	b lbl_80639FD0
lbl_80639F74:
/* 80639F74  80 04 00 00 */	lwz r0, 0(r4)
/* 80639F78  2C 00 00 01 */	cmpwi r0, 1
/* 80639F7C  41 82 00 10 */	beq lbl_80639F8C
/* 80639F80  80 04 00 04 */	lwz r0, 4(r4)
/* 80639F84  2C 00 00 01 */	cmpwi r0, 1
/* 80639F88  40 82 00 40 */	bne lbl_80639FC8
lbl_80639F8C:
/* 80639F8C  A8 03 00 3C */	lha r0, 0x3c(r3)
/* 80639F90  2C 00 00 0D */	cmpwi r0, 0xd
/* 80639F94  41 82 00 28 */	beq lbl_80639FBC
/* 80639F98  2C 00 00 0E */	cmpwi r0, 0xe
/* 80639F9C  41 82 00 20 */	beq lbl_80639FBC
/* 80639FA0  2C 00 00 0F */	cmpwi r0, 0xf
/* 80639FA4  41 82 00 18 */	beq lbl_80639FBC
/* 80639FA8  2C 00 00 0C */	cmpwi r0, 0xc
/* 80639FAC  41 82 00 10 */	beq lbl_80639FBC
/* 80639FB0  38 83 00 08 */	addi r4, r3, 8
/* 80639FB4  38 60 01 2D */	li r3, 0x12d
/* 80639FB8  4B FF 3F F1 */	bl sAdo_OngenTrgStart
lbl_80639FBC:
/* 80639FBC  7F E3 FB 78 */	mr r3, r31
/* 80639FC0  4B D3 70 55 */	bl cKF_SkeletonInfo_R_play
/* 80639FC4  48 00 00 0C */	b lbl_80639FD0
lbl_80639FC8:
/* 80639FC8  7F E3 FB 78 */	mr r3, r31
/* 80639FCC  4B D3 70 49 */	bl cKF_SkeletonInfo_R_play
lbl_80639FD0:
/* 80639FD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80639FD4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80639FD8  7C 08 03 A6 */	mtlr r0
/* 80639FDC  38 21 00 10 */	addi r1, r1, 0x10
/* 80639FE0  4E 80 00 20 */	blr 
