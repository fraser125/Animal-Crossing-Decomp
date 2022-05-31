lbl_80634E40:
/* 80634E40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80634E44  7C 08 02 A6 */	mflr r0
/* 80634E48  7C 67 1B 78 */	mr r7, r3
/* 80634E4C  3C 80 80 F7 */	lis r4, cKF_bs_r_int_nog_tri_clock01@ha /* 0x80F70C64@ha */
/* 80634E50  90 01 00 14 */	stw r0, 0x14(r1)
/* 80634E54  3C 60 80 F7 */	lis r3, cKF_ba_r_int_nog_tri_clock01@ha /* 0x80F70C14@ha */
/* 80634E58  38 84 0C 64 */	addi r4, r4, cKF_bs_r_int_nog_tri_clock01@l /* 0x80F70C64@l */
/* 80634E5C  38 C7 01 A4 */	addi r6, r7, 0x1a4
/* 80634E60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80634E64  3B E7 01 34 */	addi r31, r7, 0x134
/* 80634E68  38 A3 0C 14 */	addi r5, r3, cKF_ba_r_int_nog_tri_clock01@l /* 0x80F70C14@l */
/* 80634E6C  38 E7 01 DA */	addi r7, r7, 0x1da
/* 80634E70  7F E3 FB 78 */	mr r3, r31
/* 80634E74  4B D3 BC 21 */	bl cKF_SkeletonInfo_R_ct
/* 80634E78  3C 80 80 F7 */	lis r4, cKF_ba_r_int_nog_tri_clock01@ha /* 0x80F70C14@ha */
/* 80634E7C  7F E3 FB 78 */	mr r3, r31
/* 80634E80  38 84 0C 14 */	addi r4, r4, cKF_ba_r_int_nog_tri_clock01@l /* 0x80F70C14@l */
/* 80634E84  38 A0 00 00 */	li r5, 0
/* 80634E88  4B D3 BD 5D */	bl cKF_SkeletonInfo_R_init_standard_repeat
/* 80634E8C  7F E3 FB 78 */	mr r3, r31
/* 80634E90  4B D3 C1 85 */	bl cKF_SkeletonInfo_R_play
/* 80634E94  3C 60 80 65 */	lis r3, lit_626@ha /* 0x8064D28C@ha */
/* 80634E98  C0 03 D2 8C */	lfs f0, lit_626@l(r3)  /* 0x8064D28C@l */
/* 80634E9C  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 80634EA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80634EA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80634EA8  7C 08 03 A6 */	mtlr r0
/* 80634EAC  38 21 00 10 */	addi r1, r1, 0x10
/* 80634EB0  4E 80 00 20 */	blr 
