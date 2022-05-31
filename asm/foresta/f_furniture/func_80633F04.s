lbl_80633F04:
/* 80633F04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80633F08  7C 08 02 A6 */	mflr r0
/* 80633F0C  7C 67 1B 78 */	mr r7, r3
/* 80633F10  3C 80 80 F6 */	lis r4, cKF_bs_r_int_nog_pawnB@ha /* 0x80F5BD54@ha */
/* 80633F14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80633F18  3C 60 80 F6 */	lis r3, cKF_ba_r_int_nog_pawnB@ha /* 0x80F5BD1C@ha */
/* 80633F1C  38 84 BD 54 */	addi r4, r4, cKF_bs_r_int_nog_pawnB@l /* 0x80F5BD54@l */
/* 80633F20  38 C7 01 A4 */	addi r6, r7, 0x1a4
/* 80633F24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80633F28  3B E7 01 34 */	addi r31, r7, 0x134
/* 80633F2C  38 A3 BD 1C */	addi r5, r3, cKF_ba_r_int_nog_pawnB@l /* 0x80F5BD1C@l */
/* 80633F30  38 E7 01 DA */	addi r7, r7, 0x1da
/* 80633F34  7F E3 FB 78 */	mr r3, r31
/* 80633F38  4B D3 CB 5D */	bl cKF_SkeletonInfo_R_ct
/* 80633F3C  3C 80 80 F6 */	lis r4, cKF_ba_r_int_nog_pawnB@ha /* 0x80F5BD1C@ha */
/* 80633F40  7F E3 FB 78 */	mr r3, r31
/* 80633F44  38 84 BD 1C */	addi r4, r4, cKF_ba_r_int_nog_pawnB@l /* 0x80F5BD1C@l */
/* 80633F48  38 A0 00 00 */	li r5, 0
/* 80633F4C  4B D3 CC 99 */	bl cKF_SkeletonInfo_R_init_standard_repeat
/* 80633F50  3C 80 80 65 */	lis r4, lit_626@ha /* 0x8064D28C@ha */
/* 80633F54  7F E3 FB 78 */	mr r3, r31
/* 80633F58  C0 04 D2 8C */	lfs f0, lit_626@l(r4)  /* 0x8064D28C@l */
/* 80633F5C  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 80633F60  4B D3 D0 B5 */	bl cKF_SkeletonInfo_R_play
/* 80633F64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80633F68  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80633F6C  7C 08 03 A6 */	mtlr r0
/* 80633F70  38 21 00 10 */	addi r1, r1, 0x10
/* 80633F74  4E 80 00 20 */	blr 
