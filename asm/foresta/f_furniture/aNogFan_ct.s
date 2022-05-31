lbl_80632C58:
/* 80632C58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80632C5C  7C 08 02 A6 */	mflr r0
/* 80632C60  3C 80 80 F4 */	lis r4, cKF_bs_r_int_nog_fan@ha /* 0x80F4749C@ha */
/* 80632C64  90 01 00 14 */	stw r0, 0x14(r1)
/* 80632C68  38 84 74 9C */	addi r4, r4, cKF_bs_r_int_nog_fan@l /* 0x80F4749C@l */
/* 80632C6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80632C70  93 C1 00 08 */	stw r30, 8(r1)
/* 80632C74  7C 7E 1B 78 */	mr r30, r3
/* 80632C78  3C 60 80 F4 */	lis r3, cKF_ba_r_int_nog_fan@ha /* 0x80F47464@ha */
/* 80632C7C  3B FE 01 34 */	addi r31, r30, 0x134
/* 80632C80  38 DE 01 A4 */	addi r6, r30, 0x1a4
/* 80632C84  38 A3 74 64 */	addi r5, r3, cKF_ba_r_int_nog_fan@l /* 0x80F47464@l */
/* 80632C88  38 FE 01 DA */	addi r7, r30, 0x1da
/* 80632C8C  7F E3 FB 78 */	mr r3, r31
/* 80632C90  4B D3 DE 05 */	bl cKF_SkeletonInfo_R_ct
/* 80632C94  3C 80 80 F4 */	lis r4, cKF_ba_r_int_nog_fan@ha /* 0x80F47464@ha */
/* 80632C98  7F E3 FB 78 */	mr r3, r31
/* 80632C9C  38 84 74 64 */	addi r4, r4, cKF_ba_r_int_nog_fan@l /* 0x80F47464@l */
/* 80632CA0  38 A0 00 00 */	li r5, 0
/* 80632CA4  4B D3 DF 41 */	bl cKF_SkeletonInfo_R_init_standard_repeat
/* 80632CA8  7F E3 FB 78 */	mr r3, r31
/* 80632CAC  4B D3 E3 69 */	bl cKF_SkeletonInfo_R_play
/* 80632CB0  3C 60 80 65 */	lis r3, lit_626@ha /* 0x8064D28C@ha */
/* 80632CB4  38 00 00 00 */	li r0, 0
/* 80632CB8  C0 03 D2 8C */	lfs f0, lit_626@l(r3)  /* 0x8064D28C@l */
/* 80632CBC  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 80632CC0  B0 1E 08 2A */	sth r0, 0x82a(r30)
/* 80632CC4  88 1E 01 2C */	lbz r0, 0x12c(r30)
/* 80632CC8  28 00 00 00 */	cmplwi r0, 0
/* 80632CCC  41 82 00 0C */	beq lbl_80632CD8
/* 80632CD0  D0 1E 08 34 */	stfs f0, 0x834(r30)
/* 80632CD4  48 00 00 10 */	b lbl_80632CE4
lbl_80632CD8:
/* 80632CD8  3C 60 80 65 */	lis r3, lit_368@ha /* 0x8064D278@ha */
/* 80632CDC  C0 03 D2 78 */	lfs f0, lit_368@l(r3)  /* 0x8064D278@l */
/* 80632CE0  D0 1E 08 34 */	stfs f0, 0x834(r30)
lbl_80632CE4:
/* 80632CE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80632CE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80632CEC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80632CF0  7C 08 03 A6 */	mtlr r0
/* 80632CF4  38 21 00 10 */	addi r1, r1, 0x10
/* 80632CF8  4E 80 00 20 */	blr 
